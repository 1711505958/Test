package com.niit.biz;

import java.util.List;

import com.niit.entity.UserJourney;

public interface IUserJourneyBiz {

	public void save(UserJourney userJourney);
	public  List<UserJourney> findByUname (String uName);
	public void deleteJourneyInfo(int uid, int spId);
	public void delete(String spName);
}
