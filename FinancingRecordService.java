
package com.qdu.service;

import com.qdu.pojo.FinancingRecord;
import java.util.List;

public interface FinancingRecordService {
    void add(FinancingRecord fr);
    List<Object> getListByUid(Integer uid);
    List<FinancingRecord> getListByPid(Integer pid);
    Integer getAllFinancingMoneyByPid(Integer pid);
    Integer getMaxFinancingMoneyCOUNT();
    Integer getCOUNTByPid(Integer pid);
}
