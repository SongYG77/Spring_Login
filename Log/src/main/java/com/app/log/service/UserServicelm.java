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
			System.out.println("service");
		}
		return 0;
	}

	@Override
	public User Login(User user) throws Exception {
		System.out.println("service");
		return dao.Login(user);

	}

}
