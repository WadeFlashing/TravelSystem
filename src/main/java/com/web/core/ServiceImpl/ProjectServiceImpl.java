package com.web.core.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.Project;
import com.web.core.Mapper.ProjectMapper;
import com.web.core.Service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectMapper projectMapper;
	
	@Override
	public Project findProject(String pname) {
		
		return projectMapper.findProject(pname);
				
	}

	@Override
	public List<Project> listProject() {
		
		return projectMapper.listProject();
	}

	@Override
	public List<Project> searchProjectByProvince(String province) {
		// TODO Auto-generated method stub
		return projectMapper.searchProjectByProvince(province);
	}

	@Override
	public List<Project> searchProjectByName(String placename) {
		// TODO Auto-generated method stub
		return projectMapper.searchProjectByName(placename);
	}


}
