package com.niit.controller;


import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.biz.IJourneyBiz;
import com.niit.biz.IUserBiz;
import com.niit.biz.impl.UserBiz;
import com.niit.entity.Journey;
import com.niit.entity.User;
import com.niit.service.MessageService;



@Controller
public class HelloController {
	@Resource
   private IUserBiz userBiz;
 @Autowired
  private IJourneyBiz journeyBiz;	
	 
	@RequestMapping(value="/register.mvc",method=RequestMethod.POST)
	public String resiter(HttpServletRequest request,HttpSession session) throws Exception
	{
	 request.setCharacterEncoding("utf-8");
	 String name = request.getParameter("name");
	 String password = request.getParameter("password");
	 String age = request.getParameter("age");
	 String gender = request.getParameter("gender");
	 String grade = request.getParameter("grade");
	 String phoneNumber = request.getParameter("phoneNumber");
	 
	 Boolean bool = (Boolean) session.getAttribute("booleanCheck");
	 User u = userBiz.findByName(name);
	 if(u !=null)
	 {
		request.setAttribute("message", "该名字已经注册！");
		return "register.jsp";
	 }
	 else if(bool == false)
	 {
		request.setAttribute("check", "验证码不正确"); 
		return "register.jsp";
	 }
	 else
	 {
	 User user = new User();
	 user.setAge(Integer.parseInt(age));
	 user.setGender(gender);
	 user.setGrade(Integer.parseInt(grade));
	 user.setName(name);
	 user.setPassword(password);
	 user.setPhoneNumber(phoneNumber);
	 userBiz.save(user);
	 request.setAttribute("message", null);
	 return "login.jsp";
	 }
	}
	
	
	
	
	@RequestMapping(value="/login.mvc",method=RequestMethod.POST)
	public String login(HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException  {
	
		
		
	 request.setCharacterEncoding("utf-8");
	 String name = request.getParameter("name");
	 String password = request.getParameter("password");
	 
	 List<Journey> listJourney = journeyBiz.findAll();
     User user = userBiz.findByName(name);

     if(user != null && user.getPassword().equals(password))
     {
    	 request.setAttribute("msg", null);
    	 session.setAttribute("user", user);
    	 session.setAttribute("listJourney", listJourney);
    	 return "index.jsp";
     }
       else
       {
    	 request.setAttribute("msg", "未注册或账号、密码错误！");
	    return "login.jsp";
       }
	}

	@RequestMapping(value="/findAllUser.mvc")
	public  String findAllUser(HttpSession session)
	{
		List<User> userList = userBiz.findAll();
		session.setAttribute("userList", userList);
		return "userInfoManager.jsp";
	}
	
	@RequestMapping(value="/deleteUser.mvc")
	public  String  deleteUser(HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException
	{
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		userBiz.deleteById(Integer.parseInt(id));
		List<User> userList = userBiz.findAll();
		session.setAttribute("userList", userList);
		return "userInfoManager.jsp";
	}
	
	
	@RequestMapping(value="/userInfo.mvc")
	public  String  deleteUser(HttpServletRequest request) throws UnsupportedEncodingException
	{
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		User user  = userBiz.findById(Integer.parseInt(id));
	   request.setAttribute("user", user);
		return "userInfo.jsp";
	}
	
	
	@RequestMapping(value="/cancel.mvc")
	public  String  cancel(HttpSession session)
	{
		session.invalidate();
		return "login.jsp";
	}

	@RequestMapping(value="/userUpdate.mvc")
	public  String  userUpdate(HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException
	{
		request.setCharacterEncoding("utf-8");
		 String name = request.getParameter("name");
		 String password = request.getParameter("password");
		 String age = request.getParameter("age");
		 String gender = request.getParameter("gender");
		 String grade = request.getParameter("grade");
		 String phoneNumber = request.getParameter("phoneNumber");
		  String id = request.getParameter("id");
		  User user = userBiz.findById(Integer.parseInt(id));
		 user.setAge(Integer.parseInt(age));
		 user.setGender(gender);
		 user.setGrade(Integer.parseInt(grade));
		 user.setName(name);
		 user.setPassword(password);
		 user.setPhoneNumber(phoneNumber);
		 
		 userBiz.update(user);
		 session.setAttribute("user", user);
		return "index.jsp";
	}
	  public String createVerifyNumber(){
			String result=new String();
			for(int i=1;i<=4;i++){
				result=result+(int)(Math.random()*10);
			}	
			return result;
			
		}
	 @RequestMapping(value="/send_verify_number.mvc")
		public void sendVerifyNumber(String number,HttpSession session)  {
			String verifyNumber=createVerifyNumber();
			String verifyNumber1="#code#="+verifyNumber;
			MessageService.getRequest2(number,verifyNumber1);
			session.setAttribute(number, verifyNumber);

	
	    	
		}	
		
	    public boolean checkVerifyNumbers(String  verifyNumber,String number,HttpSession session){
			
			String rVerifyNumber= (String) session.getAttribute(number);
			if(rVerifyNumber!=null&&rVerifyNumber.equals(verifyNumber)){
				return true;
			}else{
				return false;
			}
		}
	 
		@RequestMapping(value="/check_verify_number.mvc")
		public void checkVerifyNumber(String verifyNumber,String number,HttpSession session)  {	
			
			boolean  booleanCheck = checkVerifyNumbers(verifyNumber,number,session);
			session.setAttribute("booleanCheck", booleanCheck);
		}	
		
}