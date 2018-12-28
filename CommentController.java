 
package com.qdu.controller;

import com.qdu.pojo.Comment;
import com.qdu.pojo.Project;
import com.qdu.pojo.Users;
import com.qdu.service.CommentService;
import com.qdu.service.ProjectService;
import com.qdu.service.UsersService;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping("/user")
public class CommentController {
          
    @Autowired
    UsersService usersService;
    @Autowired
    ProjectService proService;
    @Autowired
    CommentService commentService;
    
  
    
    
 @RequestMapping("/comment")
         @ResponseBody
    public List<Object> comment(Integer pid,HttpSession session,Comment c){
        Users user = (Users)session.getAttribute("user");
         Project p = proService.getProjectById(pid);
         c.setProject(p);
         c.setUsers(user);
         c.setUaccount(user.getUaccount());
         c.setCommentTime(new Date());
         commentService.add(c);
         List<Object> list=commentService.getListByPid(pid);
         return list;
    }
    
    @RequestMapping("/list")
    public String getList(Integer pid,Model m){
        List<Object> list = commentService.getListByPid(pid);
        m.addAttribute("commemt", list);
         return "commentList";
    }
    
}
