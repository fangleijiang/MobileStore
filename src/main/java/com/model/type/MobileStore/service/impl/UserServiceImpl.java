package com.model.type.MobileStore.service.impl;

import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.model.type.MobileStore.dao.UserDao;
import com.model.type.MobileStore.model.User;
import com.model.type.MobileStore.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	
	

	public UserDao getUserDao() {
		return userDao;
	}

	@Resource
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void save(User user) {
		this.userDao.save(user);
		
	}
	@Override
	public void delete(User user) {
		this.userDao.delete(user);
		
	}
	@Override
	public User find_User_By_id(int id) {

		return this.userDao.find_User_By_id(id);
	}
	@Override
	public List<User> List_User() {
		
		return this.userDao.List_User();
	}

	@Override
	public boolean checkLogin(User user) {
		User haveUser = new User();
		haveUser = this.userDao.checkLogin(user.getUsername(), user.getPassword(),user.getIdentitys());
		if(haveUser == null){
			return false;
		}
		return true;
	}

	@Override
	public boolean checkRegister(String username) {
		User haveUser = new User();
		haveUser = this.userDao.checkRegister(username);
		if(haveUser == null){
			return false;
		}
		return true;
	}

	@Override
	public User find_User_By_username(String username) {
		// TODO Auto-generated method stub
		return this.userDao.find_User_By_user(username);
	}

	@Override
	public void ActivatingRegister(String username) {
		this.userDao.ActivatingRegister(username);
	}

}
