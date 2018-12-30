
package com.qdu.service;

import com.qdu.dao.InformationDao;
import com.qdu.pojo.PersonalInformation;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
        
public class InformationServcieImpl implements InformationService{
    
    @Autowired
    InformationDao informationDao;
    
    @Override
    public void addInformation(PersonalInformation newInformation) {
        informationDao.insert(newInformation);
    }

    @Override
    public void updateInformation(PersonalInformation updatedInformation) {
        informationDao.update(updatedInformation);
    }


    @Override
    public List<PersonalInformation> getInformationList() {
        return informationDao.getList();
    }

    @Override
    public PersonalInformation getInformationByUid(Integer uid) {
        return informationDao.getInpormationByUid(uid);
    }
    
}
