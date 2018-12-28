
package com.qdu.controller;

import com.qdu.pojo.FinancingRecord;
import com.qdu.pojo.Project;
import com.qdu.pojo.UserCapital;
import com.qdu.pojo.Users;
import com.qdu.service.FinancingRecordService;
import com.qdu.service.ProjectService;
import com.qdu.service.UserCapitalService;
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
public class FinancingRecordController {
       
    @Autowired
    UsersService usersService;
    @Autowired
    UserCapitalService usercapService;
    @Autowired
    ProjectService proService;
    @Autowired
    FinancingRecordService frService;
    
  
    
    
    
     @RequestMapping(value="/financing",produces = "text/html;charset=utf-8")
     @ResponseBody
    public String financing( HttpSession session,Integer pid, FinancingRecord fr){
        Users user = (Users)session.getAttribute("user");
         Project p = proService.getProjectById(pid);
         fr.setProject(p);
         fr.setUsers(user);
         fr.setFinancingTime(new Date());
        UserCapital uc = usercapService.getByUId(user.getUid());
        if(uc.getCash()>fr.getFinancingMoney()){
        uc.setCash(uc.getCash()-fr.getFinancingMoney());
        frService.add(fr);
        usercapService.update(uc);
        if(p.getTargetAmount()<frService.getAllFinancingMoneyByPid(pid)){
            p.setExplain("达成");
            proService.updateProject(p);
        }
         return "投资成功";
        }
        
        else{
        return "余额不足";
        }
    }
    
    

    
         @RequestMapping("/xiangmu")
    public String getAllFinancingMoneyByUid(HttpSession session,Model m){
        Users u= (Users)session.getAttribute("user");
        List list = frService.getListByUid(u.getUid());
        m.addAttribute("list", list);
        return "xiangmu";
        
    }
    
    @RequestMapping("/getMaxFinancingMoneyCOUNT")
        @ResponseBody
    public String getMaxFinancingMoneyCOUNT(){
       return proService.getProjectById(frService.getMaxFinancingMoneyCOUNT()).getPname();
 
    }
}
