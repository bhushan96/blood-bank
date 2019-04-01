package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDAO;
import com.model.UserDetailsEntity;

@Service("userService")
public class UserServiceImpl implements UserService {
	  @Autowired
	  private UserDAO userDAO;
	
	@Override
	 public boolean saveUser(UserDetailsEntity user){
		   return userDAO.registerUser(user);
	 }

}
