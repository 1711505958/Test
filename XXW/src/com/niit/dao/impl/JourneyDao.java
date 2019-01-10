package com.niit.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.niit.dao.IJourneyDao;
import com.niit.entity.Journey;
import com.niit.entity.User;
@Component
public class JourneyDao implements IJourneyDao {

	@Autowired
    private HibernateTemplate ht;
	@Override
	public void save(Journey journey) {
	
      ht.save(journey);
	}

	@Override
	public void update(Journey journey) {
	
      ht.update(journey);
	}

	@Override
	public void deleteById(Integer spId) {
	
      ht.delete(findById(spId));
	}

	@Override
	public List<Journey> findAll() {

		 List<Journey> list = ht.loadAll(Journey.class);
		return list;
	}

	@Override
	public Journey findById(Integer spId) {
	
	
		 return  ht.get(Journey.class, spId);
	}

	@Override
	public Journey findByName(String spName) {
		 Journey journey = null;
			 List list = findAll();
			 Iterator it = list.iterator();
			 while(it.hasNext())
			 {
				 journey = (Journey) it.next();
				 if(spName.equals(journey.getSpName()))
					 return journey;
				
			 }
			   return null;
		
	}

}
