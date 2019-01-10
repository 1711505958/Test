package com.niit.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.biz.IUserBiz;
import com.niit.dao.IUserDao;
import com.niit.entity.User;

@Service
public class UserBiz implements IUserBiz {
		//×¢Èëdao¶ÔÏó
		@Autowired
		private IUserDao userDao;


		@Override
		public void save(User u) {
			userDao.save(u);
		}

		@Override
		public void update(User u) {
			userDao.update(u);
		}

		@Override
		public void deleteById(Integer id) {
			userDao.deleteById(id);
		}

		@Override
		public List<User> findAll() {
			return userDao.findAll();
		}

		@Override
		public User findById(Integer id) {
			return userDao.findById(id);
		}

		@Override
		public User findByName(String name) {
		
			return userDao.findByName(name);
		}

	
}
