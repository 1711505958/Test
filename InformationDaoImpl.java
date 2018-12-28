/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import com.qdu.pojo.PersonalInformation;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/**
 *
 * @author NIIT
 */
@Repository
public class InformationDaoImpl extends BaseDaoImpl<PersonalInformation> implements InformationDao{

     
      @Autowired
    private SessionFactory sessionFactory;
      
    @Override
    public PersonalInformation getInpormationByUid(Integer uid) {
        Session session = sessionFactory.openSession();
        Query query=session.createQuery("from PersonalInformation where users.uid=?");
        query.setParameter(0, uid);
        PersonalInformation information = (PersonalInformation)query.uniqueResult(); 
        session.close();
        return information;
    }


    
}
