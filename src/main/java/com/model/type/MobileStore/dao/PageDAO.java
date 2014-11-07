package com.model.type.MobileStore.dao;
import java.util.List;

import com.model.type.MobileStore.model.Mobile;
import com.model.type.MobileStore.model.Orders;
import com.model.type.MobileStore.model.User;


public interface PageDAO {
	

	public List<Mobile> queryForPage_Mobile(final String hql,final int offset,final int length);

	public List<Orders> queryForPage_Orders(final String hql,final int offset,final int length);
	
	public List<User> queryForPage_User(final String hql,final int offset,final int length);
	
	public int getAllRowCount(String hql);
}
