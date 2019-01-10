package com.niit.dao;

import java.util.List;

import com.niit.entity.UserJourney;

public interface IUserJourneyDao {

	public void save(UserJourney userJourney);
	public  List<UserJourney> findByUname (String uName);
	public void deleteJourneyInfo(int uid, int spid);
	public void delete(String spName);
}
