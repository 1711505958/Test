
package com.qdu.dao;

import com.qdu.pojo.FinancingRecord;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class FinancingRecordDaoImpl extends BaseDaoImpl<FinancingRecord> implements FinancingRecordDao {

      @Autowired
    private SessionFactory sessionFactory;
    
      
      
    
    @Override
    public List<Object> getListByUid(Integer uid) {
         Session session=sessionFactory.openSession();
        Query query=session.createSQLQuery(" select p.PName ,f.FinancingMoney,f.FinancingTime from FinancingRecord as f , Project as p where f.UID=? and f.PID = p.PID");
        query.setParameter(0, uid);
        List list=query.list();  
        session.close();
        return list;
    }

    @Override
    public List<FinancingRecord> getListByPid(Integer pid) {
         Session session=sessionFactory.openSession();
        Query query=session.createQuery("from FinancingRecord where project.pid=?");
        query.setParameter(0, pid);
        List list=query.list();  
        session.close();
        return list;
    }
    
        @Override
    public  Integer getAllFinancingMoneyByPid(Integer PID) {
        Session session = sessionFactory.openSession();
        Query query = session.createSQLQuery("select SUM(FinancingMoney) from FinancingRecord where pid=?");
        query.setParameter(0, PID);
        Integer i = (Integer)query.uniqueResult();
        session.close();
        return i;
    }
    
        @Override
    public  Integer getCountByPid(Integer PID) {
        Session session = sessionFactory.openSession();
        Query query = session.createSQLQuery("select COUNT(UID) from FinancingRecord where pid=?");
        query.setParameter(0, PID);
        Integer i = (Integer)query.uniqueResult();
        session.close();
        return i;
    }
    
    @Override
    public  Integer getMaxFinancingMoneyCOUNT() {
        Session session = sessionFactory.openSession();
        Query query = session.createSQLQuery("select top 1 PID, COUNT(UID) as C from FinancingRecord group by PID order by C desc ");
        Object[] o = (Object[])query.uniqueResult();
        Integer i = (Integer)o[0];
        session.close();
        return i;
    }
    
}
