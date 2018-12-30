
package com.qdu.service;

import com.qdu.pojo.UserCapital;

public interface UserCapitalService {
    void update(UserCapital userCapital);
    UserCapital getByUId(Integer uid);
    void add(UserCapital newUserCapital);
}
