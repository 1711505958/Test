
package com.qdu.dao;

import com.qdu.pojo.Comment;
import com.qdu.pojo.Users;
import java.util.List;

public interface CommentDao extends BaseDao<Comment>{
    
    List<Object> getByPid(Integer Pid);
    //测试用
    Comment getById(Integer id);
    
}
