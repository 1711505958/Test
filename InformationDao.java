
package com.qdu.dao;

import com.qdu.pojo.PersonalInformation;


public interface InformationDao extends BaseDao<PersonalInformation>{ 
    PersonalInformation getInpormationByUid(Integer uid);
}
