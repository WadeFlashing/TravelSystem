package com.web.core.Service;

import java.util.List;


import com.web.core.Entity.Requirement;

public interface RequirementService {

	public List<Requirement> listRequirement();
	
	public int AddRequirement(int uid,String requireplace,String scenicspot,	String requiredate,String requirements);
	
}
