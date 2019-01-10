package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.niit.biz.IUserJourneyBiz;
import com.niit.dao.IJourneyDao;
import com.niit.dao.IUserJourneyDao;
import com.niit.entity.UserJourney;
import com.niit.entity.UserJourneyId;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class Demo2 {

	@Autowired
	private IUserJourneyDao userJourneyDao;
	
	@Autowired
	private IUserJourneyBiz userJourneyBiz;
	@Test
	public void test() {
	
//	 List<UserJourney> list =	userJourneyDao.findByUname("lin");
//	 System.out.println(list.get(0));
	 UserJourneyId userJourneyId = new UserJourneyId();
	 userJourneyId.setJid(3);
	 userJourneyId.setUid(1);
	 UserJourney userJourney = new UserJourney();
	 userJourney.setId(userJourneyId);
	 userJourney.setuName("lin");
	 userJourney.setjName("2");
	 userJourneyBiz.save(userJourney);
	}

}
