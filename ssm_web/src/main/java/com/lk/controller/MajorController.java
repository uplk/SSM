package com.lk.controller;

import com.alibaba.fastjson.JSON;
import com.lk.domain.Major;
import com.lk.service.IMajorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/major")
public class MajorController {
    private final IMajorService majorService;

    public MajorController(IMajorService majorService) {
        this.majorService = majorService;
    }

    @RequestMapping(value="/add.do",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    public String upload(Major major, HttpServletRequest request) throws Exception {
        Date dd = new Date();
//        SimpleDateFormat sim= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        String time = sim.format(dd);
        request.setCharacterEncoding("utf-8");

        major.setMajor_id(UUID.randomUUID().toString().replace("-",""));
        major.setMajor_sort_id(findSortID(major.getMajor_sort()));
        major.setMajor_time(dd);

        majorService.upload(major);
        return "redirect:findAll.do";
    }

    @RequestMapping("/findSortID.do")
    public String findSortID(String name) throws Exception {
        return majorService.findSortID(name);
    }

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv = new ModelAndView();
        List<Major> majorList = majorService.findAll();

        mv.addObject("majorList", majorList);
        mv.setViewName("pages/major-list");
        return mv;
    }

    @RequestMapping("/findOne.do")
    public ModelAndView findOne(String title) throws Exception{
        ModelAndView mv = new ModelAndView();
        Major findMajor = majorService.findOne(title);
        mv.addObject("findMajor", findMajor);
        mv.setViewName("pages/major-show-detail");
        return mv;
    }

    @RequestMapping(value="/findMajorSort.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String findMajorSort(HttpServletResponse response, HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/text;charset=UTF-8");
        List<Major> majorSortList = majorService.findMajorSort();
        response.setContentType("text/html;charset=UTF-8");
        return JSON.toJSONString(majorSortList);
    }

}
