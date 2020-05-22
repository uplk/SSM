package com.lk.controller;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lk.domain.*;
import com.lk.service.IPictureService;
import com.lk.service.IUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.*;

@Controller
@RequestMapping("/picture")
public class PictureController {
    private final IPictureService pictureService;
    private final IUserService userService;
    public PictureController(IPictureService pictureService, IUserService userService) {
        this.pictureService = pictureService;
        this.userService = userService;
    }


    @RequestMapping(value="/add.do")
    public String add(HttpServletRequest request, Picture picture, MultipartFile pictureFile) throws Exception{
        String fileName = pictureFile.getOriginalFilename();
        String picture_id = UUID.randomUUID().toString().replace("-","");
//        Map<String, String> map = new HashMap<String, String>();
//        if(pictureFile.isEmpty() || picture.getPicture_label().isEmpty()
//        || picture.getPicture_title().isEmpty() || picture.getPicture_sort().isEmpty()){
//            map.put("error", "信息为空，请检查");
//            ObjectMapper objectMapper = new ObjectMapper();
//            return objectMapper.writeValueAsString(map);      
//        }
        String newFilename =  picture_id + "_" + fileName;
        String url = request.getSession().getServletContext().getRealPath("/upload/img");
        pictureFile.transferTo(new File(url + "/" + newFilename));
        picture.setPicture_path("upload/img/" + newFilename);
        picture.setPicture_id(picture_id);
        picture.setPicture_time(new Date());
        picture.setPicture_sort_id(findSortID(picture.getPicture_sort()));
        pictureService.add(picture);
        return "redirect:findAll.do";
    }

    @RequestMapping("/findOne.do")
    public ModelAndView findOne(String label) throws Exception{
        ModelAndView mv = new ModelAndView();
        Picture findPicture = pictureService.findOne(label);
        mv.addObject("findPicture", findPicture);
        mv.setViewName("pages/picture-show-detail");
        return mv;
    }

    private String findSortID(String picture_sort) {
        return pictureService.findSortID(picture_sort);
    }

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv = new ModelAndView();
        List<Picture> pictureList = pictureService.findAll();
        mv.addObject("pictureList", pictureList);
        mv.setViewName("pages/picture-list");
        return mv;
    }

    @RequestMapping(value = "/findAllJson.do",  produces="application/json; charset=utf-8")
    @ResponseBody
    public String findAllJson(HttpServletResponse response, HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("utf-8");
        List<Picture> pictureList = pictureService.findAll();
        response.setContentType("text/text;charset=UTF-8");
        return JSON.toJSONString(pictureList);
    }

    @RequestMapping("/addSort.do")
    public ModelAndView addSort( @RequestParam("picture_sort") String picture_sort) throws Exception{
        PictureSort pictureSort = new PictureSort();
        pictureSort.setPicture_sort_id(UUID.randomUUID().toString().replace("-",""));
        pictureSort.setPicture_sort(picture_sort);

        pictureService.addSort(pictureSort);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pages/index");
        return mv;
    }

    @RequestMapping(value="/findAllSort.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String findAllSort(HttpServletResponse response, HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/text;charset=UTF-8");
        List<PictureSort> pictureSortList = pictureService.findAllSort();
        response.setContentType("text/html;charset=UTF-8");
        return JSON.toJSONString(pictureSortList);
    }

    @RequestMapping(value="/addContent.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String addContent(HttpServletResponse response, HttpServletRequest request,String picture_label, String picture_title, String picture_path, String picture_id, String picture_content) throws Exception{
        String uname = (String) request.getSession().getAttribute("uname");

        if(uname == null){
            return "error";
        }
        String uid = userService.findID(uname);
        PictureContent pictureContent = new PictureContent();

        pictureContent.setPicture_id(picture_id);
        pictureContent.setPicture_content(picture_content);
        pictureContent.setPicture_content_time(new Date());
        pictureContent.setUid(uid);

        pictureService.addComment(pictureContent);
        return "success";
//        return JSON.toJSONString("picture.jsp");
//        return "redirect:picture-single_sidebar.jsp?picture_path="+picture_path + "&picture_id="+picture_id+"&picture_label="+picture_label+"&picture_title="+picture_title;
    }
    @RequestMapping(value="/addLove.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String addLove(HttpServletResponse response, HttpServletRequest request, String picture_id) throws Exception{
        String uname = (String) request.getSession().getAttribute("uname");
//        ModelAndView mv = new ModelAndView();
        if(uname == null){
//            mv.setViewName("user-login.jsp");
//            return "redirect:picture.jsp";
            return "error";
        }
        String uid = userService.findID(uname);
        ULove ulove = new ULove();
        ulove.setUid(uid);
        ulove.setPicture_id(picture_id);
        pictureService.addLove(ulove);
        return "success";

//        return JSON.toJSONString(msg);

//        return JSON.toJSONString("picture.jsp");
//        return "redirect:picture-single_sidebar.jsp?picture_path="+picture_path + "&picture_id="+picture_id+"&picture_label="+picture_label+"&picture_title="+picture_title;
//        return "redirect:picture-single_sidebar.jsp?picture_path="+picture_path + "&picture_content="+picture_content+"&picture_path="+picture_path;
    }


    @RequestMapping(value="/findContent.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String findContent(HttpServletResponse response, HttpServletRequest request, String pictureID) throws Exception{
        request.setCharacterEncoding("utf-8");
        List<PictureContent> pictureContentList = pictureService.findContent(pictureID);
        response.setContentType("text/html;charset=UTF-8");
        return JSON.toJSONString(pictureContentList);
    }

    @RequestMapping(value="/findUserLove.do", produces="application/json; charset=utf-8")
    public ModelAndView ModelAndView(String uname) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<PictureLove> pictureLoveList = pictureService.findUserLove(uname);
        mv.addObject("pictureLoveList", pictureLoveList);
        mv.setViewName("user-show-love-picture");
        for(PictureLove pictureLove : pictureLoveList){
            System.out.println("\n\n\n"+pictureLove);
        }
        return mv;
    }


}
