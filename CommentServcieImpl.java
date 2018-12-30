
package com.qdu.service;

import com.qdu.dao.CommentDao;
import com.qdu.pojo.Comment;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentServcieImpl implements CommentService{

    @Autowired
    CommentDao commentDao;
    
    @Override
    public void add(Comment c) {
        commentDao.insert(c);
    }

    @Override
    public List<Object> getListByPid(Integer pid) {
       return commentDao.getByPid(pid);
    }
    
}
