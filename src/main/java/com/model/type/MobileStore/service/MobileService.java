package com.model.type.MobileStore.service;

import com.model.type.MobileStore.model.Mobile;

public interface MobileService {
	public void Save_Mobile(Mobile mobile);
	
	public Mobile find_Mobile_By_Id(int id);
}
