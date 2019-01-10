package com.niit.biz;

import java.util.List;

import com.niit.entity.Journey;

public interface IJourneyBiz {
	public void save(Journey journey);
	public void update(Journey journey);
	public void deleteById(Integer spId);
	public List<Journey> findAll();
	public Journey findById(Integer spId);
	public Journey findByName(String spName);
}
