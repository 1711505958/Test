
package com.qdu.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BaseDaoImpl<T> implements BaseDao<T>{
    
      @Autowired
    private SessionFactory sessionFactory;
    

    @Override
    public void insert(T t) {
         Session session = sessionFactory.openSession();
        session.beginTransaction(); 
        session.save(t);
        session.getTransaction().commit(); 
        session.close();
    }

    @Override
    public void update(T t) {
         Session session = sessionFactory.openSession();
        session.beginTransaction(); 
        session.update(t);
        session.getTransaction().commit();  
        session.close();
    }





 

    @Override
    public void delete(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<T> getList() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
