package com.lk.controller;

import com.alibaba.fastjson.JSON;
import com.lk.domain.Major;
import com.lk.service.IMajorService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping(value="/add.do",method = RequestMethod.POST,produces = "text/plain;charset=UTF-8")
    public String upload(Major major, HttpServletRequest request) throws Exception {
        request.setCharacterEncoding("utf-8");
        major.setMajor_id(UUID.randomUUID().toString().replace("-",""));
        major.setMajor_sort_id(findSortID(major.getMajor_sort()));

        String title = "";
        int flag=0;
        String my_content = major.getMajor_content();
        for(int i=0; i<my_content.length(); i++){
            if(my_content.charAt(i) == '#'){
                flag++;
            }
            if(flag>1)
                break;
            if(flag>0 && my_content.charAt(i)!= '#'){
                title += my_content.charAt(i);
            }




        }
        major.setMajor_title(title);
        major.setMajor_title("1");
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
        for(Major major : majorList){
            System.out.println(major);
        }
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
    public String findMajorSort(HttpServletResponse response, HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/text;charset=UTF-8");
//        ModelAndView modelAndView = new ModelAndView();
        List<Major> majorSortList = majorService.findMajorSort();
//        JSONArray jsonArray = JSONArray.fromObject(majorSortList);
//        modelAndView.addObject("majorSortList", jsonArray.toString());
//        return majorSortList;
        response.setContentType("text/html;charset=UTF-8");
        return JSON.toJSONString(majorSortList);
//        return jsonArray.toString();
    }

}
