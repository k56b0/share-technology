package com.aerial.toys.controller;


import com.aerial.toys.pojo.user;
import com.aerial.toys.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class userController {

    @Autowired
    //写接口
    private UserService userService;

    @RequestMapping(value = "/check",method = RequestMethod.GET)
    public String checkUser(HttpSession session, HttpServletRequest request){
        //获得用户名和密码
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        user user = userService.checkUser(uname, pwd);
        if (user==null){
            return "redirect:/";
        }
        session.setAttribute("uuser",user);
        return "index";
    }
    @RequestMapping(value = "/goods/user")
    public String showUser(){
        return "showUser";
    }
    @RequestMapping(value = "/goods/user/updata")
    public String toUpdateUser(){
        return "updataUser";
    }

    @RequestMapping(value = "/goods/user",method = RequestMethod.PUT)
    public String updateUser(HttpSession session,user u){
        userService.updateUser(u);
        System.out.println(u);
        user user = userService.GetUserById(u.getUserId());
        System.out.println(user);
        session.setAttribute("uuser",user);
        return "index";
    }
}
