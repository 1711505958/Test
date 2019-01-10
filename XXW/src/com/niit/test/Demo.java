package com.niit.test;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.niit.biz.IUserBiz;
import com.niit.dao.IUserDao;
import com.niit.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class Demo {

	@Autowired
	private IUserDao userDao;
	
    @Autowired
	private IUserBiz userBiz;
	// ��ѯ
	@Test
	public void test1() {
		
		
		System.out.println(userDao.toString());
		
	}
	
	
	// ���(�������󣬲��ܲ���dao����Ϊdaoû����������)
//	@Test
//	public void test2() {
//		User u  = userBiz.findById(1);
//		u.setName("jack");
//		u.setGender("��");
//		userBiz.update(u);
//		System.out.println(u);
//	}

}