package com.niit.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.niit.service.MessageService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:applicationContext.xml" })
public class Demo3 {

	@Test
	public void test() {
	
		//MessageService.getRequest2("17860740759", "#code#=1234");
		
		
	}

}
