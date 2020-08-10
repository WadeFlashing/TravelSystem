package com.web.core.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.Administrator;
import com.web.core.Mapper.AdministratorMapper;
import com.web.core.Service.AdministratorService;

@Service
public class AdministratorServiceImpl implements AdministratorService {

	@Autowired
	private AdministratorMapper administratorMapper;
	
	@Override
	public Administrator findAdmin(String account, String password) {
		// TODO Auto-generated method stub
		return administratorMapper.findAdmin(account, password);
	}

}
