package com.web.core.Service;


import java.util.List;

import com.web.core.Entity.User;

public interface UserService {

	public int addUser(String username,String password,String name,String phone);
	
	public List<User> checkUsername(String username);
	
	public User findUser(String username,String password);
	
}
