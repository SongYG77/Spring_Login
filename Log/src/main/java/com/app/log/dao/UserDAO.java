package com.app.log.dao;

import com.app.log.User;

public interface UserDAO {
	
	public void register(User user) throws Exception;

	public User Login(User user);
	
	public int CheckOverlap(User user);
	
}
