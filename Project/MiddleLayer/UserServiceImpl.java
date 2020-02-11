package com.alpha.householdrental.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.alpha.householdrental.dao.UserRepository;
import com.alpha.householdrental.model.User;
import com.alpha.householdrental.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;

	@Override
	public boolean isUserAuthentic(String userName, String password) {
		if(StringUtils.isEmpty(userName) || StringUtils.isEmpty(password)) {
			return false;
		}
		User user;
		try {
			user = userRepository.findByUserName(userName);
		}
		catch (Exception e) {
			System.out.println("User does not exist");
			return false;
		}
		
		return password.equals(user.getPassword());
	}
}
