
package com.qdu.service;

import com.qdu.pojo.Project;
import java.util.List;

public interface ProjectService {
    void addProject(Project newProject);
    void updateProject(Project updatedproject);
    Project getProjectById(Integer pid);
    List<Project> getProjectList();
    void deleteProject(Integer pid);
    Integer  getCount();
    Integer getSuccessCount();
    List<Object[]> getListByUId(Integer Uid) ;
     List<Object[]> getListByType(String type) ;
     List<Object[]> getListByType1(String type,Integer i) ;
}
