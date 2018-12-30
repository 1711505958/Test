
package com.qdu.service;

import com.qdu.pojo.Users;
import java.util.List;


public interface UsersService {
    String login(String UserId,String password);
    String addUser(Users newUser);
    void updateUser(Users updatedUser);
    Users getUser(Integer uid) ;
    Users getUserByUAccount(String UAccount) ;
    List<Users> getUsersList();
    Integer getCount();
}
