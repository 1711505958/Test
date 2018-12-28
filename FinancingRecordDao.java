
package com.qdu.dao;

import com.qdu.pojo.FinancingRecord;
import java.util.List;

public interface FinancingRecordDao extends BaseDao<FinancingRecord>{
    List<Object> getListByUid (Integer uid);
    List<FinancingRecord> getListByPid (Integer pid);
    Integer getAllFinancingMoneyByPid(Integer PID) ;
    Integer getMaxFinancingMoneyCOUNT();
    Integer getCountByPid(Integer PID);
}
