package com.web.core.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.Requirement;
import com.web.core.Mapper.RequirementMapper;
import com.web.core.Service.RequirementService;

@Service
public class RequirementServiceImpl implements RequirementService {

	@Autowired
	private RequirementMapper requirementMapper;
	
	@Override
	public List<Requirement> listRequirement() {
		// TODO Auto-generated method stub
		return requirementMapper.listRequirement();
	}

	@Override
	public int AddRequirement(int uid,String requireplace, String scenicspot, String requiredate, String requirements) {
		// TODO Auto-generated method stub
		return requirementMapper.AddRequirement(uid,requireplace, scenicspot, requiredate, requirements);
	}

}
