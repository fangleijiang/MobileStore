package com.model.type.MobileStore.dao;



import javax.annotation.Resource;


import org.hibernate.SessionFactory;

import org.springframework.stereotype.Component;

@Component
public class SuperDAO{
	
	private  SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource(name="sessionFactory")
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


}
