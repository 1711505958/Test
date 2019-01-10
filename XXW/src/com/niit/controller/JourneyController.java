package com.niit.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.biz.IJourneyBiz;
import com.niit.biz.IUserJourneyBiz;
import com.niit.entity.Journey;
import com.niit.entity.User;
import com.niit.entity.UserJourney;
import com.niit.entity.UserJourneyId;
import com.niit.service.MessageService;

@Controller
public class JourneyController {
    @Autowired
	private IJourneyBiz journeyBiz;
    
    @Autowired
    private IUserJourneyBiz userJourneyBiz;
    @RequestMapping(value="/journeyInfoPublish.mvc",method=RequestMethod.POST)
 public String  journeyInfoPublish(HttpServletRequest request ) throws Exception 
 {      
    	request.setCharacterEncoding("utf-8");
    	String spName = request.getParameter("spName");
    	String spAddress = request.getParameter("spAddress");
    	String spDate = request.getParameter("spDate");
    	String spContent = request.getParameter("spContent");
    	Journey journey = new Journey();
    	journey.setSpAddress(spAddress);
    	journey.setSpContent(spContent);
    	journey.setSpDate(spDate);
    	journey.setSpName(spName);
    	journeyBiz.save(journey);
    	
   return "journeyInfoPublish.jsp";
    
 }
    
    @RequestMapping(value="/journeyList.mvc")
    public String journeyInfoUpdate(HttpSession session)
    {
    	List<Journey> journeyList = journeyBiz.findAll();
    	
    	session.setAttribute("journeyList", journeyList);
    	return "journeyList.jsp";
    }
    
    
    @RequestMapping(value="/journeyInfoUpdate.mvc")
    public String journeyInfoUpdate(HttpServletRequest request) throws UnsupportedEncodingException
    {
    
    	request.setCharacterEncoding("utf-8");
    	String spId = request.getParameter("spId");
    	Journey journey = journeyBiz.findById(Integer.parseInt(spId));
    	request.setAttribute("journey", journey);
         	
    	return "journeyInfoUpdate.jsp";
    }
    
    @RequestMapping(value="/updateJourney.mvc")
    public String updateJourney(HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException
    {
    	request.setCharacterEncoding("utf-8");
    	String spName = request.getParameter("spName");
    	String spAddress = request.getParameter("spAddress");
    	String spDate = request.getParameter("spDate");
    	String spContent = request.getParameter("spContent");
    	String spId = request.getParameter("spId");
    	Journey journey = journeyBiz.findById(Integer.parseInt(spId));
    	journey.setSpAddress(spAddress);
    	journey.setSpContent(spContent);
    	journey.setSpDate(spDate);
         	journey.setSpName(spName);
         	journeyBiz.update(journey);
         	List<Journey> journeyList = journeyBiz.findAll();
        	
        	 session.setAttribute("journeyList", journeyList);
    	  return "journeyList.jsp";
    }
    
   
    
    @RequestMapping(value="/journeyInfoDelete.mvc")
    public String journeyInfoDelete(HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException
    {
    	request.setCharacterEncoding("utf-8");
    	String spId = request.getParameter("spId");
    	Journey journey = journeyBiz.findById(Integer.parseInt(spId));
        journeyBiz.deleteById(Integer.parseInt(spId));
    	List<Journey> journeyList = journeyBiz.findAll();
    	
    	session.setAttribute("journeyList", journeyList);
    	userJourneyBiz.delete(journey.getSpName());
    	return "journeyList.jsp";
    }
    

	@RequestMapping(value="/join.mvc")
	public String  cancel(HttpServletRequest request ,HttpSession session) throws UnsupportedEncodingException
	{
		request.setCharacterEncoding("utf-8");
		String spId = request.getParameter("spId");
		String spName = journeyBiz.findById(Integer.parseInt(spId)).getSpName();
		User user = (User) session.getAttribute("user");
		UserJourneyId userJourneyId = new UserJourneyId();
		 userJourneyId.setJid(Integer.parseInt(spId));
		 userJourneyId.setUid(user.getId());
		 UserJourney userJourney = new UserJourney();
		 userJourney.setId(userJourneyId);
		 userJourney.setuName(user.getName());
		 userJourney.setjName(spName);
//		
		 
		userJourneyBiz.save(userJourney);
		return "index.jsp";
	}
		
		 
	    @RequestMapping(value="/personJourneyInfo.mvc")
	    public String  personJourneyInfo(HttpSession session)
	    {
	    	User user= (User) session.getAttribute("user");
	    	String uName = user.getName();
	    	List<UserJourney> userJourneyList = userJourneyBiz.findByUname(uName);
	    	List<Journey> journeyLists = new ArrayList<Journey>();
	         for(int i = 0; i<userJourneyList.size();i++)
	         {   
	            Journey journey = journeyBiz.findByName(userJourneyList.get(i).getjName());
	        	if(journey != null)
	            journeyLists.add(journey);
	        	
	         }
	         session.setAttribute("journeyLists", journeyLists);
	       return "personJourneyInfo.jsp";
	    }
	    
	    
	    
	    @RequestMapping(value="/deleteJourneyInfo.mvc")
	    public String deleteJourneyInfo(HttpServletRequest request,HttpSession session) throws UnsupportedEncodingException
	    {
	    	request.setCharacterEncoding("utf-8");
	    	User user= (User) session.getAttribute("user");
	    	int uid = user.getId();
	    	String spId = request.getParameter("spId");
	    	userJourneyBiz.deleteJourneyInfo(uid, Integer.parseInt(spId));
	    	personJourneyInfo(session);
	    	return "personJourneyInfo.jsp";
	    }
	    
	  
	 
	   

	}


