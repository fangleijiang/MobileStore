package com.model.type.MobileStore.service.impl;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.model.type.MobileStore.dao.MobileDao;
import com.model.type.MobileStore.model.Mobile;
import com.model.type.MobileStore.service.MobileService;

@Service
public class MobileServiceImpl implements MobileService {

	private MobileDao mobileDao;
	
	
	public MobileDao getMobileDao() {
		return mobileDao;
	}

	@Resource
	public void setMobileDao(MobileDao mobileDao) {
		this.mobileDao = mobileDao;
	}


	@Override
	public void Save_Mobile(Mobile mobile) {
		this.mobileDao.Save_Mobile(mobile);
	}

	@Override
	public Mobile find_Mobile_By_Id(int id) {
		
		return this.mobileDao.findMobileById(id);
	}

}
