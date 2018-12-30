
package com.qdu.service;

import com.qdu.pojo.PersonalInformation;
import java.util.List;


public interface InformationService {
    void addInformation(PersonalInformation newInformation);
    void updateInformation(PersonalInformation updatedInformation);
    List<PersonalInformation> getInformationList();
    PersonalInformation getInformationByUid(Integer uid);
}
