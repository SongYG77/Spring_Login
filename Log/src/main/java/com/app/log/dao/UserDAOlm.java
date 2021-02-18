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

		sql.insert("com.app.log.mapper.Mapper.register", user);

	}



	@Override
	public User Login(User user) {

		return sql.selectOne("com.app.log.mapper.Mapper.login",user);
	}
	
	@Override
	public int CheckOverlap(User user) {

		return sql.selectOne("com.app.log.mapper.Mapper.checkoverlap",user);
		
		
	}



	@Override
	public String Findid(User user) throws Exception {
		
		return sql.selectOne("com.app.log.mapper.Mapper.findid",user);
	}



	@Override
	public int Findpw(User user) throws Exception {
		
		return sql.selectOne("com.app.log.mapper.Mapper.findpw",user);
	}



	@Override
	public void ChangePW(User change_info) {

		sql.update("com.app.log.mapper.Mapper.changepw",change_info);
		
	}

}
