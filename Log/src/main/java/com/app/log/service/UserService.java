package com.app.log.service;

import com.app.log.User;

public interface UserService {
	public int register(User user) throws Exception;

	public User Login(User user) throws Exception;
	
}
