package com.qdu.controller;

import com.qdu.pojo.Users;
import com.qdu.service.ProjectService;
import com.qdu.service.UsersService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UsersService userService;
    @Autowired
    ProjectService projectServcie;

    @RequestMapping(value = "/login",
            produces = "text/html;charset=utf-8")
    @ResponseBody
    public String login(String uAccount, String upwd, String type, HttpSession session,Model m) {
        if (userService.login(uAccount, upwd).equals("true")) { //判断账号密码是否匹配
            Users u = userService.getUserByUAccount(uAccount);
            if (!(u.getUtype().equals(type))) {                //判断账号类型
                return "账号类型不符";
            }
            session.removeAttribute("user");
            session.setAttribute("user", u);
            
            if(u.getUtype().equals("投资者")){
            String msg = "1";
            return msg;
            }
            else{
            String msg = "2";
            return msg;
            }
        } else {
            String msg = "账号或密码输入错误";

            return msg;
        }
    }


    @RequestMapping(value = "/register",
            method = RequestMethod.POST,
            produces = "text/html;charset=utf-8")
    @ResponseBody
    public String register(Users u, String rpwd) {
        if ((u.getUaccount().length() < 6) || (u.getUaccount().length() > 18)) //判断账号长度
        {
            return "账号长度为6-18位";
        }
        if ((u.getUpwd().length() < 8) || (u.getUpwd().length() > 16)) //判断密码长度
        {
            return "密码长度为8-16位";
        }
        if (!(u.getUpwd().equals(rpwd))) //判断密码长度
        {
            return "两次密码输入不一致";
        }
        if (userService.addUser(u).equals("fail")) {    // true为注册成功 fail为已存在此账号
            return "已存在此账号";
        }
        return "1";//注册成功
    }

    @RequestMapping(value = "/getAllUser")
    @ResponseBody
    public String getAllUser() {
        return userService.getCount().toString();//总投资者

    }

}
