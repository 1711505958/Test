
package com.qdu.dao;

import com.qdu.pojo.Comment;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class CommentDaoImpl extends BaseDaoImpl<Comment> implements CommentDao{

          @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public List<Object> getByPid(Integer Pid) {
         Session session=sessionFactory.openSession();
        Query query=session.createSQLQuery("select Uaccount,content from Comment where pid = ?");
        query.setParameter(0, Pid);
        List<Object> list=query.list();  
        session.close();
        return list;
    }

    @Override
    public void delete(Integer id) {
        Session session=sessionFactory.openSession();
        session.beginTransaction(); 
        session.delete(getById(id));
        session.getTransaction().commit(); 
        session.close();
        
    }

    
    
    //测试用
    @Override
    public Comment getById(Integer id) {
        Session session = sessionFactory.openSession();
        Comment c = (Comment) session.get(Comment.class , id); 
        session.close();
        return c;
    }
    
    
    
}
