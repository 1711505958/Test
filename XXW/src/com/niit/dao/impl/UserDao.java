package com.niit.dao.impl;


import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.niit.dao.IUserDao;
import com.niit.entity.User;

/**
 * ³Ö¾Ã²ã
 * @author Andy
 *
 */

@Component
public class UserDao implements IUserDao {
	//×¢ÈëHibernateTemplate
    @Autowired
	private HibernateTemplate ht;

	@Override
	public void save(User u) {
		ht.save(u);
	}

	@Override
	public void update(User u) {
		ht.update(u);
	}

	@Override
	public void deleteById(Integer id) {
		ht.delete(findById(id));
	}

	@Override
	public List<User> findAll() {
		return ht.loadAll(User.class);
	}

	@Override
	public User findById(Integer id) {
		return ht.get(User.class, id);
	}


	@Override
	public User findByName(String name) {
	  User user = null;
	 List list = findAll();
	 Iterator it = list.iterator();
	 while(it.hasNext())
	 {
		 user = (User) it.next();
		 if(name.equals(user.getName()))
			 return user;
		
	 }
	   return null;
	}

}