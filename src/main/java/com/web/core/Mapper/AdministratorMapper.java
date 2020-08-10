package com.web.core.Mapper;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.Administrator;

public interface AdministratorMapper {

	public Administrator findAdmin(@Param("account")String account,@Param("password")String password);
	
}
