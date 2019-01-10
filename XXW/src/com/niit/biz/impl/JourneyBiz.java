package com.niit.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.biz.IJourneyBiz;
import com.niit.dao.IJourneyDao;
import com.niit.entity.Journey;
@Service
public class JourneyBiz implements IJourneyBiz{

	@Autowired
	private IJourneyDao journeyDao;

	@Override
	public void save(Journey journey) {
	
		 journeyDao.save(journey);
	}

	@Override
	public void update(Journey journey) {
	
		journeyDao.update(journey);
	}

	@Override
	public void deleteById(Integer spId) {
	 journeyDao.deleteById(spId);
		
	}

	@Override
	public List<Journey> findAll() {
	
		return journeyDao.findAll();
	}

	@Override
	public Journey findById(Integer spId) {
	
		return journeyDao.findById(spId);
	}

	@Override
	public Journey findByName(String spName) {
	
		return journeyDao.findByName(spName);
	}

}
