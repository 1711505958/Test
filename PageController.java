/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.controller;

import com.qdu.service.ProjectService;
import com.qdu.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author liuxixin
 */
@Controller
@RequestMapping("/user")
public class PageController {
    
        @Autowired
    UsersService userService;
    @Autowired
    ProjectService projectServcie;
    
       @RequestMapping("/tocomment")
    public String toComment(){
        return "comment";
    }
    
       @RequestMapping("/tofinancing")
    public String toFinancing(){
        return "financing";
    }
    

    
       @RequestMapping("/toproject")
    public String toproject(){
        return "project";
    }
       @RequestMapping("/toproject2")
    public String toproject2(){
        return "project2";
    }
    
       @RequestMapping("/tousercapital")
    public String toUsercapital() {
        return "usercapital";

    }
    
    @RequestMapping({"/welcome","/towelcome"})
    public String toWelcome() {
        return "welcome";

    }
    
       @RequestMapping("/register ")
    public String toRegister() {
        return "register";
    }
    
       @RequestMapping("/tocommentList ")
    public String toCommentList() {
        return "commentList";
    }
       @RequestMapping("/template_1shouye ")
    public String toTemplate_1shouye(Model m) {
            String  ProjectCount = projectServcie.getCount().toString();
            String  SuccessCount = projectServcie.getSuccessCount().toString();
            String  AllUser = userService.getCount().toString();
            m.addAttribute("ProjectCount",ProjectCount);
            m.addAttribute("SuccessCount",SuccessCount);
            m.addAttribute("AllUser",AllUser);
        return "template_1shouye";
    }
       @RequestMapping("/template_3gerenxinxi ")
    public String toTemplate_3gerenxinxi() {
        return "template_3gerenxinxi";
    }
       @RequestMapping("/template_4gerenxinxi ")
    public String toTemplate_4gerenxinxi() {
        return "template_4gerenxinxi";
    }
       @RequestMapping("/template_xiangmu ")
    public String toTemplate_xiangmu() {
        return "template_xiangmu";
    }
       @RequestMapping("/totouzi ")
    public String totouzi(Integer pid,Model m) {
        m.addAttribute("pid",pid);
        return "touzi";
    }

    

}
