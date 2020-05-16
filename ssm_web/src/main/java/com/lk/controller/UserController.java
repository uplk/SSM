package com.lk.controller;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.exceptions.ClientException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lk.domain.Major;
import com.lk.domain.User;
import com.lk.service.IUserService;
import com.lk.utils.AliSmsBuilder;
import com.lk.utils.AliSmsCodeEnum;
import com.lk.utils.CodeRandom;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/user")
public class UserController {
    private final IUserService userService;
    private String code;

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

    @RequestMapping(value="/findMajorList.do", produces="application/json; charset=utf-8")
    @ResponseBody
    public String findMajorList(HttpServletResponse response) throws Exception{
        response.setContentType("text/text;charset=UTF-8");
        List<Major> majorList = userService.findMajorList();
//        for(Major major : majorList){
//            String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(major.getMajor_time());
//            DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//            Date dateTime = fmt.parse(time);
//            major.setMajor_time(dateTime);
//            System.out.println(dateTime);
//        }
        response.setContentType("text/text;charset=UTF-8");
        return JSON.toJSONString(majorList);
    }

    @RequestMapping(value="/getCode.do")
    @ResponseBody
    public String getCode(@RequestParam("utl") String utl) throws Exception{

        AliSmsBuilder aliSmsBuilder = new AliSmsBuilder();
        String code = CodeRandom.randomCode();
        setCode(code);
        try {
            code = aliSmsBuilder.setPhoneNum(utl)    // 替换成自己的手机号
                    .setSignName("IndoorsyCode")  // 替换成自己的阿里云短信服务签名
                    .setTemplateCode("SMS_190215566") // 替换成自己的阿里云短信模板编号
                    .setVerifyCode(code) // 替换成自己随机生成的验证码
                    .send();
        } catch (ClientException e) {
            e.printStackTrace();
            // 短信发送异常提示

        }

        // 短信异常码处理
        if (code == null || !"OK".equals(code)) {
            String errorMsg = AliSmsCodeEnum.getMsgByCode(code);
            if (!StringUtils.isEmpty(errorMsg)) {
                // 对应短信异常错误提示
            }
            // 短信发送异常提示
        }

        return "OK";

    }

    @RequestMapping(value="/phoneSign.do")
    @ResponseBody
    public String phoneSign(HttpServletRequest request, @RequestParam("utl") String utl, @RequestParam("code") String verifyCode) throws Exception{
        HttpSession session = request.getSession(true);
        session.setAttribute("uname", utl);

        String trueCode = getCode();
        String json = "";
        Map<String, String> map = new HashMap<String, String>();
        if(trueCode.equals(verifyCode)){
            map.put("utl", utl);
            User user = new User();
            user.setUid(UUID.randomUUID().toString().replace("-",""));
            user.setUname(utl);
            user.setUtl(utl);
            userService.phoneSign(user);
        }else{
            map.put("error", "error");
        }

        ObjectMapper objectMapper = new ObjectMapper();
        try{
            json = objectMapper.writeValueAsString(map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return json;
    }

    @RequestMapping(value="/pwdLogin.do")
    @ResponseBody
    public void pwdLogin(HttpServletRequest request, @RequestParam("uname") String uname, @RequestParam("upassword") String upassword) throws Exception{
//        var uanme =$("#uanme").val();
//        var upassword =$("#upassword").val();
//        $.ajax({
//                type:"post",
//                url:"${pageContext.request.contextPath}/user/pwdLogin.do",
//                data:{uanme :uanme, upassword: upassword},
        HttpSession session = request.getSession(true);
        String json = "";
        User user = new User();
        user.setUname(uname);
        user.setUpassword(upassword);
        int row  =userService.pwdLogin(user);
        if(row == 1)
            session.setAttribute("uname", uname);
    }

    @RequestMapping(value="/checkUname.do")
    @ResponseBody
    public String  checkUname(@RequestParam("uname") String uname) throws Exception{
        boolean flag = false;
        String json = null;
        int cnt = userService.checkUname(uname);
        if(cnt == 0){
            flag = true;
        }
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("vaild", flag);
        ObjectMapper objectMapper = new ObjectMapper();
        try{
             json = objectMapper.writeValueAsString(map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return json;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
