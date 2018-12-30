
package com.qdu.service;


import com.qdu.dao.UserDaoImpl;
import com.qdu.pojo.Users;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsersServiceImpl implements UsersService{
    @Autowired
    private UserDaoImpl userDao;
    
    @Override
    public String login(String UAccount, String password) {
        Users u = getUserByUAccount(UAccount);
        if(null!=u&&u.getUpwd().equals(password)){
        return "true";
        }
        else{
        return "fail";
        }
    }
    
    @Override
    public String addUser(Users newUser) {
        
        Users u = userDao.getUserByUAccount(newUser.getUaccount());
        if(null!=u){
            return "fail";
        }else{
        userDao.insert(newUser);
        return "true";
        }
    }
    
        @Override
    public Users getUser(Integer uid) {
        
        return userDao.getById(uid);
        
        }
    

    @Override
    public void updateUser(Users updatedUser) {
        userDao.update(updatedUser);
    }



    @Override
    public List<Users> getUsersList() {
       List<Users> list = userDao.getList();
       return list;
    }

    @Override
    public Users getUserByUAccount(String UAccount) {
        return userDao.getUserByUAccount(UAccount);
    }
    
    
    @Override
    public Integer getCount() {
        return userDao.getCount();
    }
}
