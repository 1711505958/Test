
package com.qdu.dao;

import java.util.List;


public interface BaseDao<T> {
    void insert(T t);
    void update(T t);
    void delete(Integer id);
    List<T >getList(); 
}
