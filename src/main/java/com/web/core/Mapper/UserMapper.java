package com.web.core.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.web.core.Entity.User;

public interface UserMapper {

	public int addUser(@Param("username")String username,@Param("password")String password
			,@Param("name")String name,@Param("phone")String phone);
	
	public List<User> checkUsername(String username); 
	
	public User findUser(@Param("username")String username,@Param("password")String password); 
	
}
