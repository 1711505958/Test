package com.niit.dao.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.niit.dao.IUserJourneyDao;
import com.niit.entity.User;
import com.niit.entity.UserJourney;
import com.niit.entity.UserJourneyId;

@Component
public class UserJourneyDao implements IUserJourneyDao {

	@Autowired
    private HibernateTemplate ht;
	@Override
	public void save(UserJourney userJourney) {
	
     ht.save(userJourney);
	}

	@Override
	public List<UserJourney> findByUname(String uName) {
		UserJourney userJourney ;
		 List<UserJourney> list1= new ArrayList<UserJourney>();
		 List<UserJourney> list =  ht.loadAll(UserJourney.class);
		 Iterator it = list.iterator();
		 while(it.hasNext())
		 {
			 userJourney = (UserJourney) it.next();
			 if(uName.equals(userJourney.getuName()))
				 list1.add(userJourney);
			
		 }
		   return list1;
	}

	@Override
	public void deleteJourneyInfo(int uId, int spId) {
	
       UserJourneyId  uJid =  new UserJourneyId(uId,spId);
       
       ht.delete(ht.get(UserJourney.class, uJid));
	}

	@Override
	public void delete(String spName) {
		UserJourney userJourney ;
		List<UserJourney> list  = ht.loadAll(UserJourney.class);
		
		 Iterator it = list.iterator();
		 while(it.hasNext())
		 {
			 userJourney = (UserJourney) it.next();
			 if(spName.equals(userJourney.getjName()))
			  ht.delete(userJourney);
			
		 }
	
	}

}
