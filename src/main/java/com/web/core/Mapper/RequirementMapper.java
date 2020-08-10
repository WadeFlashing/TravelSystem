package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Requirement;

public interface RequirementMapper {

	public List<Requirement> listRequirement();
	
	public int AddRequirement(@Param("uid")int uid,@Param("requireplace")String requireplace,@Param("scenicspot")String scenicspot,
			@Param("requiredate")String requiredate,@Param("requirements")String requirements);
	
}
