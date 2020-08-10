package com.web.core.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.core.Entity.User;
import com.web.core.Mapper.UserMapper;
import com.web.core.Service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int addUser(String username,String password,String name,String phone) {
		return userMapper.addUser(username, password, name, phone);
		
	}

	@Override
	public List<User> checkUsername(String username) {
		return  userMapper.checkUsername(username);
		
	}
	
	@Override
	public User findUser(String username, String password) {
		User user = userMapper.findUser(username, password);
		return user;
	}

	
}
