package com.app.log.service;

import com.app.log.User;

public interface UserService {
	public int register(User user) throws Exception;

	public User Login(User user) throws Exception;
	public String Findid(User user) throws Exception;

	public int Findpw(User user) throws Exception;

	public void ChangePW(User change_info);
	
}
