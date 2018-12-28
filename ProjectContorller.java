
package com.qdu.controller;

import com.qdu.pojo.Comment;
import com.qdu.pojo.Project;
import com.qdu.pojo.Users;
import com.qdu.service.CommentService;
import com.qdu.service.FinancingRecordService;
import com.qdu.service.ProjectService;
import com.qdu.service.UsersService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
public class ProjectContorller {
    
    @Autowired
    ProjectService projectServcie;
    @Autowired
   FinancingRecordService frService;
    @Autowired
   CommentService commentService;
    
    @Autowired
    UsersService  usersServcie;
    
  
    @RequestMapping("/project")
    public String project(Project p,String date,HttpSession session){
        SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd"); 
    Date deadline = null; 
    try { 
        deadline = format.parse(date); 
    } catch (ParseException e) { 
    e.printStackTrace(); 
   } 
        System.out.println(deadline);
        Users s = (Users)session.getAttribute("user");
        p.setUsers(s);
        p.setDeadline(deadline);
        projectServcie.addProject(p);
        return "project";
    }
    

    

    

    @RequestMapping(value = "/getprojectlistbyuid")

    public String getProjectByUid(HttpSession session,Model m){
        Users u = (Users)session.getAttribute("user");
        List<Object[]> list = projectServcie.getListByUId(u.getUid());
        m.addAttribute("list", list);
        return "xiangmu_1";
    }
    
    
    
    @RequestMapping(value = "/getprojectbypid",produces = "text/html;charset=utf-8")

    public String getProjectByUid(Integer pid ,HttpSession session,Model m){
        Users u = (Users)session.getAttribute("user");
        Project p = projectServcie.getProjectById(pid);

        Integer i =frService.getAllFinancingMoneyByPid(pid);
        Integer j =frService.getCOUNTByPid(pid);
        if(i==null){
         i=0;
        }
        if(j==null){
         j=0;
        }
        String AllMoney = i.toString();
        String AllUser = j.toString();
        List<Object> list = commentService.getListByPid(pid);
        m.addAttribute("commemt", list);
        m.addAttribute("pid", pid);
        m.addAttribute("project", p);
        m.addAttribute("AllMoney", AllMoney);
        m.addAttribute("AllUser", AllUser);
        return "xiangxixinxi";
    }


    
    @RequestMapping(value = "/getProjectByType")
            @ResponseBody
    public List getProjectByType2(String type){
        List<Object[]> list = projectServcie.getListByType(type);
        return list;
    }
    
        @RequestMapping(value = "/projectPageBack")
    public String ProjectPageBack(String type,Integer mincount,Model m){
        mincount = mincount-2;
        List<Object[]> list = projectServcie.getListByType1(type, mincount);
       m.addAttribute("project",list);
       m.addAttribute("type",type);
       m.addAttribute("mincount",mincount);
       return "project2";
    }
        @RequestMapping(value = "/projectPageNext")
    public String ProjectPageNext(String type,Integer mincount,Model m){

        mincount = mincount+2;
        List<Object[]> list = projectServcie.getListByType1(type, mincount);
            System.out.println(list.size());
       m.addAttribute("project",list);
       m.addAttribute("type",type);
       m.addAttribute("mincount",mincount);
       return "project2";
    }
    
}
