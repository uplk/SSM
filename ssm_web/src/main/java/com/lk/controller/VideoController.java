package com.lk.controller;

import com.alibaba.fastjson.JSON;
import com.aliyun.oss.OSSClient;
import com.aliyun.oss.OSSException;
import com.aliyuncs.exceptions.ClientException;
import com.lk.domain.*;
import com.lk.service.IUserService;
import com.lk.service.IVideoService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/video")
public class VideoController {
    private final IVideoService videoService;
    private final IUserService userService;

    public VideoController(IVideoService videoService, IUserService userService) {
        this.videoService = videoService;
        this.userService = userService;
    }

    @RequestMapping("/addSort.do")
    public ModelAndView addSort(@RequestParam("video_sort") String video_sort) throws Exception{
        Video video = new Video();
        video.setVideo_sort_id(UUID.randomUUID().toString().replace("-",""));
        video.setVideo_sort(video_sort);

        videoService.addSort(video);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pages/index");
        return mv;
    }

    @RequestMapping(value="/add.do")
    public String add(HttpServletRequest request, Video video, MultipartFile videoFile, MultipartFile videoFace) throws Exception{
        // 视频处理，名字：UUID.mp4
        String videoExt =  FilenameUtils.getExtension(videoFile.getOriginalFilename());
        String video_id = UUID.randomUUID().toString().replace("-","");
        String url = request.getSession().getServletContext().getRealPath("/upload/video");
        String videoPthName = url + "/" + video_id + "." + videoExt;
        videoFile.transferTo(new File(videoPthName));
        // 封面处理，名字：UUID.jpg
        String faceExt =  FilenameUtils.getExtension(videoFace.getOriginalFilename());
        String facePathName = url + "/" + video_id + "." + faceExt;
        videoFace.transferTo(new File(facePathName));

        video.setVideo_path("upload/video/" + video_id + "." + videoExt);
        video.setVideo_face_path("upload/video/" + video_id + "." + faceExt);
        video.setVideo_id(video_id);
        video.setVideo_time(new Date());
        video.setVideo_sort_id(findSortID(video.getVideo_sort()));
        videoService.add(video);
        return "redirect:findAll.do";
    }

    private String findSortID(String video_sort) {
        return videoService.findSortID(video_sort);
    }

    @RequestMapping(value="/findAllSort.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String findAllSort(HttpServletResponse response, HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("utf-8");
        List<Video> videoSortList = videoService.findAllSort();
        response.setContentType("text/html;charset=UTF-8");
        return JSON.toJSONString(videoSortList);
    }

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv = new ModelAndView();
        List<Video> videoList = videoService.findAll();

        mv.addObject("videoList", videoList);
        mv.setViewName("pages/video-list");
        return mv;
    }

    @RequestMapping("/findOne.do")
    public ModelAndView findOne(String facePath) throws Exception{
        ModelAndView mv = new ModelAndView();
        String videoPath = facePath.split("\\.")[0] + ".mp4";
        Video findVideo = videoService.findOne(videoPath);
        mv.addObject("findVideo", findVideo);
        mv.setViewName("pages/video-show-detail");
        return mv;
    }

    @RequestMapping(value = "/findAllJson.do",  produces="application/json; charset=utf-8")
    @ResponseBody
    public String findAllJson(HttpServletResponse response, HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("utf-8");
        List<Video> videoList = videoService.findAll();
        response.setContentType("text/text;charset=UTF-8");
        return JSON.toJSONString(videoList);
    }

    @RequestMapping(value="/addContent.do", produces="application/json; charset=utf-8")
    public String addContent(HttpServletResponse response, HttpServletRequest request, String video_id, String video_content) throws Exception{
        String uname = (String) request.getSession().getAttribute("uname");
        String uid = userService.findID(uname);
        VideoContent videoContent = new VideoContent();

        videoContent.setVideo_id(video_id);
        videoContent.setVideo_content(video_content);
        videoContent.setVideo_content_time(new Date());
        videoContent.setUid(uid);

        videoService.addComment(videoContent);
        return "video.jsp";
//        return "redirect:picture-single_sidebar.jsp?picture_path="+picture_path + "&picture_content="+picture_content+"&picture_path="+picture_path;
    }

    @RequestMapping(value="/addLove.do", produces="application/json; charset=utf-8")
    public String addLove(HttpServletResponse response, HttpServletRequest request, String video_id) throws Exception{
        String uname = (String) request.getSession().getAttribute("uname");
        String uid = userService.findID(uname);
        ULove ulove = new ULove();
        ulove.setUid(uid);
        ulove.setVideo_id(video_id);
        videoService.addLove(ulove);
        String msg = "success";
        return JSON.toJSONString(msg);
//        return "redirect:picture-single_sidebar.jsp?picture_path="+picture_path + "&picture_content="+picture_content+"&picture_path="+picture_path;
    }

    @RequestMapping(value="/findUserLove.do", produces="application/json; charset=utf-8")
    public ModelAndView ModelAndView(String uname) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<VideoLove> videoLoveList = videoService.findUserLove(uname);
        mv.addObject("videoLoveList", videoLoveList);
        mv.setViewName("user-show-love-video");
        return mv;
    }

    /**
     * 把文件保存到阿里云OSS，返回路径保存到数据库
     *
     */
    public String getUrl(MultipartFile fileupload) throws OSSException, ClientException, IOException {
        //填写自己的帐号信息
        String endpoint = "xxxx";
        String accessKeyId = "xxxxxx";
        String accessKeySecret = "xxxxxx";

        // 创建OSSClient实例
        OSSClient ossClient = new OSSClient(endpoint, accessKeyId, accessKeySecret);

        // 文件桶
        String bucketName = "itaem";
        // 文件名格式
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
        // 该桶中的文件key
        String dateString = sdf.format(new Date()) + ".jpg";// 20180322010634.jpg
        // 上传文件
        ossClient.putObject("itaem", dateString, new ByteArrayInputStream(fileupload.getBytes()));

        // 设置URL过期时间为100年，默认这里是int型，转换为long型即可
        Date expiration = new Date(new Date().getTime() + 3600l * 1000 * 24 * 365 * 100);
        // 生成URL
        URL url = ossClient.generatePresignedUrl(bucketName, dateString, expiration);
        return url.toString();
    }



}
