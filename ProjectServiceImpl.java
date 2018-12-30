
package com.qdu.service;

import com.qdu.dao.ProjectDao;
import com.qdu.pojo.Project;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    ProjectDao projectDao;

    @Override
    public void addProject(Project newProject) {

        projectDao.insert(newProject);

    }

    @Override
    public void updateProject(Project updatedProject) {
        projectDao.update(updatedProject);
    }

    @Override
    public List<Project> getProjectList() {
        return projectDao.getList();
    }

    @Override
    public Project getProjectById(Integer pid) {
        return projectDao.getById(pid);
    }

    @Override
    public void deleteProject(Integer pid) {
        projectDao.delete(pid);
    }
    
    @Override
    public Integer getCount() {
        return projectDao.getCount();
    }
    
    @Override
    public Integer getSuccessCount() {
        return projectDao.getSuccessCount();
    }

    @Override
    public List<Object[]> getListByUId(Integer Uid) {
        return projectDao.getListByUId(Uid);
    }

    @Override
    public  List<Object[]> getListByType(String type) {
        return projectDao.getListByType(type);
    }
    
    @Override
    public  List<Object[]> getListByType1(String type,Integer i) {
        return projectDao.getListByType1(type,i);
    }

}
