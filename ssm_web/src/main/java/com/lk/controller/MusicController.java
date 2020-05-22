package com.lk.controller;


import com.alibaba.fastjson.JSON;
import com.lk.domain.Music;
import com.lk.domain.Video;
import com.lk.service.IMusicService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/music")
public class MusicController {

    private final IMusicService musicService;

    public MusicController(IMusicService musicService) {
        this.musicService = musicService;
    }
    @RequestMapping("/addSort.do")
    public ModelAndView addSort(@RequestParam("music_sort") String music_sort) throws Exception{
        Music music = new Music();
        music.setMusic_sort_id(UUID.randomUUID().toString().replace("-",""));
        music.setMusic_sort(music_sort);

        musicService.addSort(music);
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pages/index");
        return mv;
    }

    @RequestMapping(value="/add.do")
    public String add(HttpServletRequest request, Music music, MultipartFile musicFile) throws Exception{

        String musicExt =  FilenameUtils.getExtension(musicFile.getOriginalFilename());
        String music_id = UUID.randomUUID().toString().replace("-","");
        String url = request.getSession().getServletContext().getRealPath("/upload/music");
        String musicPthName = url + "/" + music_id + "." + musicExt;
        musicFile.transferTo(new File(musicPthName));


        music.setMusic_path("upload/music/" + music_id + "." + musicExt);
        music.setMusic_id(music_id);
        music.setMusic_time(new Date());
        music.setMusic_sort_id(findSortID(music.getMusic_sort()));
        musicService.add(music);
        return "redirect:findAll.do";
    }

    private String findSortID(String music_sort) {
        return musicService.findSortID(music_sort);
    }

    @RequestMapping(value="/findAllSort.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String findAllSort(HttpServletResponse response, HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("utf-8");
        List<Music> musicSortList = musicService.findAllSort();
        response.setContentType("text/html;charset=UTF-8");
        return JSON.toJSONString(musicSortList);
    }

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv = new ModelAndView();
        List<Music> musicList = musicService.findAll();

        mv.addObject("musicList", musicList);
        mv.setViewName("pages/music-list");
        return mv;
    }

    @RequestMapping("/findOne.do")
    public ModelAndView findOne(String music_label) throws Exception{
        ModelAndView mv = new ModelAndView();
        Music findMusic = musicService.findOne(music_label);
        mv.addObject("findMusic", findMusic);
        mv.setViewName("pages/music-show-detail");
        return mv;
    }
}
