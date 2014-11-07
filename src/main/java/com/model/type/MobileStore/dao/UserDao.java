package com.model.type.MobileStore.dao;

import java.util.List;

import com.model.type.MobileStore.model.User;



public interface UserDao {
	
	public void save(User user);
	
	public void delete(User user);
	
	public User find_User_By_id(int id);
	
	public User find_User_By_user(String username);
	
	public List<User> List_User();

	public User checkLogin(String username,String password,String identitys);
	
	public User checkRegister(String username);
	
	public void ActivatingRegister(String username);
}
