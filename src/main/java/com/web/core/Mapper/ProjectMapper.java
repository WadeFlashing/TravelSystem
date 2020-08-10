package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Project;

public interface ProjectMapper {

	public Project findProject(@Param("projectname")String pname);
	
	public List<Project> listProject();
		
	public List<Project> searchProjectByProvince(@Param("province")String province);
	
	public List<Project> searchProjectByName(@Param("placename")String placename);
	
}
