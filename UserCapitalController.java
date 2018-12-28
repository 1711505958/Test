
package com.qdu.controller;

import com.qdu.pojo.UserCapital;
import com.qdu.pojo.Users;
import com.qdu.service.ProjectService;
import com.qdu.service.UserCapitalService;
import com.qdu.service.UsersService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/user")
public class UserCapitalController {

    @Autowired
    UserCapitalService userCapitalService;
    @Autowired
    ProjectService proService;
    @Autowired
    UsersService usersServcie;

 

    @RequestMapping("/updateCapital")
    public String updateCapital(UserCapital uc,HttpSession session) {
        Users user = (Users)session.getAttribute("user");
        uc.setUsers(user);
        uc.setUid(user.getUid());
        userCapitalService.update(uc);
        return "usercapital";

    }
    
           @RequestMapping("/zijin ")
    public String toZijin(HttpSession session,Model m) {
        Users u = (Users)session.getAttribute("user");
       UserCapital uc = userCapitalService.getByUId(u.getUid());
       m.addAttribute("userCapital", uc);
        return "zijin";
    }
}
