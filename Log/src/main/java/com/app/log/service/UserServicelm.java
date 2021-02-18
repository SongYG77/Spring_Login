package com.app.log.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.log.User;
import com.app.log.dao.UserDAO;

@Service
public class UserServicelm implements UserService {

	@Autowired
	private UserDAO dao;
	int overlap;

	@Override
	public int register(User user) throws Exception {

		overlap = dao.CheckOverlap(user);
		
		if (overlap > 0)
			return -1;
		else {
			dao.register(user);
		}
		return 0;
	}

	@Override
	public User Login(User user) throws Exception {
		
		return dao.Login(user);
	}

	@Override
	public String Findid(User user) throws Exception {
		
		return dao.Findid(user);
	}

	@Override
	public int Findpw(User user) throws Exception {

		return dao.Findpw(user);
	}

	@Override
	public void ChangePW(User change_info) {

		dao.ChangePW(change_info);
	}

}
