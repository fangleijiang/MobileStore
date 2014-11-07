package com.model.type.MobileStore.dao;

import com.model.type.MobileStore.model.Mobile;

public interface MobileDao {

	public void Save_Mobile(Mobile mobile);
	
	public Mobile findMobileById(int id);
}
