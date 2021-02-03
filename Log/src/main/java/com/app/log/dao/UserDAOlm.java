package com.app.log.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import com.app.log.User;

@Component
public class UserDAOlm implements UserDAO {
	
	@Inject SqlSession sql;
	
	
	
	@Override
	public void register(User user) throws Exception {
		System.out.println("dao");
		sql.insert("com.app.log.mapper.Mapper.register", user);
		System.out.println("daoend");
	}



	@Override
	public User Login(User user) {
		System.out.println("dao");
		return sql.selectOne("com.app.log.mapper.Mapper.login",user);
	}
	
	@Override
	public int CheckOverlap(User user) {
		System.out.println("check overlap");
		return sql.selectOne("com.app.log.mapper.Mapper.checkoverlap",user);
		
		
	}

}
