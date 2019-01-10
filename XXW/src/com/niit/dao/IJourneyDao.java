package com.niit.dao;

import java.util.List;

import com.niit.entity.Journey;
import com.niit.entity.User;



public interface IJourneyDao {
	public void save(Journey journey);
	public void update(Journey journey);
	public void deleteById(Integer spId);
	public List<Journey> findAll();
	public Journey findById(Integer spId);
	public Journey findByName(String spName);
}