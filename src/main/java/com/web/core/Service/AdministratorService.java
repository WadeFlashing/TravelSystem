package com.web.core.Service;

import com.web.core.Entity.Administrator;

public interface AdministratorService {

	public Administrator findAdmin(String account,String password);
	
}
