
package com.qdu.service;

import com.qdu.dao.FinancingRecordDao;
import com.qdu.pojo.FinancingRecord;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class FinancingRecordServiceImpl implements FinancingRecordService{
    
    @Autowired
    FinancingRecordDao frdao;
    
    @Override
    public void add(FinancingRecord fr) {
        frdao.insert(fr);
    }

    @Override
    public List<Object> getListByUid(Integer uid) {
        return  frdao.getListByUid(uid);
    }
    
    @Override
    public List<FinancingRecord> getListByPid(Integer pid) {
        return  frdao.getListByPid(pid);
    }
    
    @Override
    public Integer getAllFinancingMoneyByPid(Integer pid) {
        return  frdao.getAllFinancingMoneyByPid(pid);
    }
    
    @Override
    public Integer getMaxFinancingMoneyCOUNT() {//投资次数最多的项目
        return  frdao.getMaxFinancingMoneyCOUNT();
    }
    
    @Override
    public Integer getCOUNTByPid(Integer pid) {//投资次数最多的项目
        return  frdao.getCountByPid(pid);
    }
    
}
