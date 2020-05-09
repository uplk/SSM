package com.lk.controller;

import com.alibaba.fastjson.JSON;
import com.lk.domain.Major;
import com.lk.service.IMajorService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.UUID;


@Controller
@RequestMapping("/major")
public class MajorController {
    private final IMajorService majorService;

    public MajorController(IMajorService majorService) {
        this.majorService = majorService;
    }

    @RequestMapping("/add.do")
    public String upload(Major major) throws Exception {
        major.setMajor_id(UUID.randomUUID().toString().replace("-",""));
        major.setMajor_sort_id("1");
        majorService.upload(major);
        return "redirect:findAll.do";
    }
    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv = new ModelAndView();
        List<Major> majorList = majorService.findAll();
        mv.addObject("majorList", majorList);
        mv.setViewName("major-list");
        return mv;
    }

    @RequestMapping("/findOne.do")
    public ModelAndView findOne(String title) throws Exception{
        ModelAndView mv = new ModelAndView();
        Major findMajor = majorService.findOne(title);
        mv.addObject("findMajor", findMajor);
        mv.setViewName("major-show-detail");
        return mv;
    }

    @RequestMapping(value="/findMajorSort.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String findMajorSort(HttpServletResponse response) throws Exception{
        response.setContentType("text/text;charset=UTF-8");
//        ModelAndView modelAndView = new ModelAndView();
        List<Major> majorSortList = majorService.findMajorSort();
//        JSONArray jsonArray = JSONArray.fromObject(majorSortList);
//        modelAndView.addObject("majorSortList", jsonArray.toString());
        for(Major major : majorSortList){
            System.out.println(major);
        }
//        return majorSortList;
        response.setContentType("text/html;charset=UTF-8");
        return JSON.toJSONString(majorSortList);
//        return jsonArray.toString();
    }

}
