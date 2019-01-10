package com.niit.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.biz.IUserJourneyBiz;
import com.niit.dao.IUserJourneyDao;
import com.niit.entity.UserJourney;
import com.niit.entity.UserJourneyId;

@Service
public class UserJourneyBiz implements IUserJourneyBiz {
    @Autowired
	private IUserJourneyDao userJourneyDao;
	@Override
	public void save(UserJourney userJourney) {
	
      userJourneyDao.save(userJourney);
	}

	@Override
	public List<UserJourney> findByUname(String uName) {
	
		
		
		return userJourneyDao.findByUname(uName)
				;
	}

	@Override
	public void deleteJourneyInfo(int uId, int spId) {

		userJourneyDao.deleteJourneyInfo(uId, spId);
		
	}

	@Override
	public void delete(String spName) {
	userJourneyDao.delete(spName);
		
	}

}
