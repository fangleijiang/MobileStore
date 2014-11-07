package com.model.type.MobileStore.dao.impl;

import org.hibernate.HibernateException;

import org.hibernate.Query;


import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.model.type.MobileStore.dao.MobileDao;
import com.model.type.MobileStore.dao.SuperDAO;
import com.model.type.MobileStore.model.Mobile;


@Repository
public class MobileDaoImpl  extends SuperDAO implements MobileDao {

	@Override
	public void Save_Mobile(Mobile mobile) {

		Session session = null;
		
		try {
			session = super.getSessionFactory().openSession();
			
			session.beginTransaction();
			session.save(mobile);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			session.close();
			
		}

	}

	@Override
	public Mobile findMobileById(int id) {
		Session session = null;
		Mobile mobile = new Mobile();
		try {
			session = super.getSessionFactory().openSession();
			Query q = session.createQuery("from Mobile mobile where mobile.id=?");
			q.setInteger(0, id);
			mobile = (Mobile)q.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
		return mobile;
	}

}
