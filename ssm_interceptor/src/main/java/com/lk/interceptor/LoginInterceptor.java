package com.lk.interceptor;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

public class LoginInterceptor implements HandlerInterceptor{
    private List<String> excludeSuffix;
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        HttpSession session = request.getSession();
//        boolean flag = true;
//        String requestURI = request.getRequestURI();
//        if(!( requestURI.contains("addContent") ||
//                requestURI.contains("addLove") ||
//                requestURI.contains("addContent"))){
//            flag = false;
//        }
//        if(request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")){
//            System.out.println("\n\n\najax 调用");
//            return flag;
//        }else{
//            if(session.getAttribute("uname")==null){
//                flag = false;
//            }
//            if(!flag){
//                response.sendRedirect(request.getContextPath()+"/user-login.jsp");
//            }
//            return flag;
//        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
    public List<String> getExcludeSuffix() {

        return excludeSuffix;
    }

    public void setExcludeSuffix(List<String> excludeSuffix) {
        this.excludeSuffix = excludeSuffix;
    }
}
