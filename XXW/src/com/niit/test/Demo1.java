package com.niit.test;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.niit.biz.IJourneyBiz;
import com.niit.biz.IUserBiz;
import com.niit.dao.IJourneyDao;
import com.niit.dao.IUserDao;
import com.niit.entity.Journey;
import com.niit.entity.User;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class Demo1 {

	@Autowired
	private IJourneyDao journeyDao;
	
	@Autowired
     private IJourneyBiz  journeyBiz;

	@Test
	public void test1() {
//		
//		List<Journey> list = journeyDao.findAll();
//		for (Journey journey : list) {
//			System.out.println(journey);
//		}
//		
//		Journey journey = new Journey();
//		journey.setSpAddress("3");
//		journey.setSpName("hebei");
//		journey.setSpContent("content");
//		
//		journey.setSpDate("10.27");
//	
//		journeyBiz.save(journey);
		
	
//	Journey journey =journeyBiz.findById(2);
//		journey.setSpContent("1111");
//		journey.setSpDate("11.20");
//		
//		 journeyBiz.update(journey);
//		journeyBiz.deleteById(2);
	
	}
	
	

	
}