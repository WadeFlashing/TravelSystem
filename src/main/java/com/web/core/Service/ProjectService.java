package com.web.core.Service;

import java.util.List;

import com.web.core.Entity.Project;

public interface ProjectService {

	public Project findProject(String pname);
	
	public List<Project> listProject();
	
	public List<Project> searchProjectByProvince(String province);
	
	public List<Project> searchProjectByName(String placename);
	
}
