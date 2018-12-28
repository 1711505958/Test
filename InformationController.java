
package com.qdu.controller;

import com.qdu.pojo.PersonalInformation;
import com.qdu.pojo.Users;
import com.qdu.service.InformationService;
import com.qdu.service.UsersService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user")
public class InformationController {
    
        @Autowired
    InformationService informationServcie;
    @Autowired
    UsersService  usersServcie;
    
 
    @RequestMapping(value = "/information",
            produces = "text/html;charset=utf-8")
    public String updateInformation (PersonalInformation p,HttpSession session){
        Users user = (Users)session.getAttribute("user");
        p.setUsers(user);
        p.setUid(user.getUid());
        informationServcie.updateInformation(p);
return "template_3gerenxinxi";
    }
    
    @RequestMapping(value = "/information1",
            produces = "text/html;charset=utf-8")
    public String updateInformation1 (PersonalInformation p,HttpSession session){
        Users user = (Users)session.getAttribute("user");
        p.setUsers(user);
        p.setUid(user.getUid());
        informationServcie.updateInformation(p);
return "template_4gerenxinxi";
    }
    
     @RequestMapping("/gerenxinxi")
    public String toGerenxinxi(HttpSession session,Model m){
       Users u = (Users)session.getAttribute("user");
       String c1="";
       String c2="";
       PersonalInformation i = informationServcie.getInformationByUid(u.getUid());
       m.addAttribute("userInformation", i);
       if((i.getUgender().equals("男"))||(i.getUgender().equals("女"))){
           System.out.println("s");
       if(i.getUgender().equals("男")){
       c1="checked";
       }
       else if(i.getUgender().equals("女")){
       c2="checked";
       }
       }
m.addAttribute("c1", c1);
m.addAttribute("c2", c2);
        return "gerenxinxi";
    }
    
     @RequestMapping("/gerenxinxi1")
    public String toGerenxinxi1(HttpSession session,Model m){
       Users u = (Users)session.getAttribute("user");
       String c1="";
       String c2="";
       PersonalInformation i = informationServcie.getInformationByUid(u.getUid());
       m.addAttribute("userInformation", i);
       if((i.getUgender().equals("男"))||(i.getUgender().equals("女"))){
           System.out.println("s");
       if(i.getUgender().equals("男")){
       c1="checked";
       }
       else if(i.getUgender().equals("女")){
       c2="checked";
       }
       }
m.addAttribute("c1", c1);
m.addAttribute("c2", c2);
        return "gerenxinxi_1";
    }
}
