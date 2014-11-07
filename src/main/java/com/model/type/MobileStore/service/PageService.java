package com.model.type.MobileStore.service;

import com.model.type.MobileStore.model.PageBean;
import com.model.type.MobileStore.model.sqlModel;



public interface PageService {
	
	public PageBean queryForPage_Mobile(int pageSize, int page);
	public PageBean queryForPage_Orders(int pageSize, int page);
	public PageBean queryForPage_User(int pageSize, int page);
	public PageBean queryForPage_Fuzzysearch(int pageSize, int page,sqlModel sql_model);

}
