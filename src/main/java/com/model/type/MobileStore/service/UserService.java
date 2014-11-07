package com.model.type.MobileStore.service;

import java.util.List;


import com.model.type.MobileStore.model.User;

public interface UserService {

	public void save(User user);
	
	public void delete(User user);
	
	public User find_User_By_id(int id);
	
	public User find_User_By_username(String username);
	
	public List<User> List_User();
	
	public boolean checkLogin(User user);
	
	public boolean checkRegister(String username);
	
	public void ActivatingRegister(String username);
}
