
package com.qdu.service;

import com.qdu.pojo.Comment;
import java.util.List;


public interface CommentService {
    void add(Comment c);
    List<Object> getListByPid(Integer pid);
    
}
