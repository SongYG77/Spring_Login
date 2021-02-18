package com.app.log.dao;

import com.app.log.User;

public interface UserDAO {
	
	public void register(User user) throws Exception;

	public User Login(User user) throws Exception;
	
	public int CheckOverlap(User user) throws Exception;

	public String Findid(User user) throws Exception;

	public int Findpw(User user) throws Exception;

	public void ChangePW(User change_info);
	
}

