package com.lk.controller;

import com.lk.domain.User;
import com.lk.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {
    private final IUserService userService;

    public UserController(IUserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value="/findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv = new ModelAndView();
        List<User> userList = userService.findAll();
        mv.addObject("userList", userList);
        mv.setViewName("user-list");

        return mv;
    }

    @RequestMapping(value="/register.do")
    public ModelAndView register(User user) throws Exception{
        ModelAndView mv = new ModelAndView();
        user.setUid(UUID.randomUUID().toString().replace("-",""));
        userService.register(user);
        mv.setViewName("user-login");
        return mv;
    }

    @RequestMapping(value="/findUname.do")
    public String register(String uname) throws Exception{
        List<User> userList = userService.findUname(uname);
        String msg = null;
        if(userList.size() > 1){
            msg = "用户已存在";
        }
        return msg;
    }


}
