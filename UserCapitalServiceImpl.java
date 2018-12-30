
package com.qdu.service;

import com.qdu.dao.UserCapitalDao;
import com.qdu.pojo.UserCapital;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserCapitalServiceImpl implements UserCapitalService{
    @Autowired
    UserCapitalDao userCapitalDao;
    
    @Override
    public void update(UserCapital userCapital) {
        userCapitalDao.update(userCapital);
    }

    @Override
    public UserCapital getByUId(Integer uid) {
        return userCapitalDao.getByUid(uid);
    }

    @Override
    public void add(UserCapital newUserCapital) {
    }
    
}
