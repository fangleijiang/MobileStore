package com.model.type.MobileStore.dao.impl;

import java.util.List;



import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;


import com.model.type.MobileStore.dao.PageDAO;
import com.model.type.MobileStore.dao.SuperDAO;
import com.model.type.MobileStore.model.Mobile;
import com.model.type.MobileStore.model.Orders;
import com.model.type.MobileStore.model.User;

@Repository
public class PageDAOImpl extends SuperDAO implements PageDAO {

	public int getAllRowCount(String hql) {

		Session session = null;
		int size = 0;
		try {
			session = super.getSessionFactory().openSession();
			Query q= session.createQuery("from Mobile");
			size = q.list().size();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			session.close();
			
		}
		return size;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Mobile> queryForPage_Mobile(String hql, int offset, int length) {

		Session session = null;
		List<Mobile> list_mobile = null;
		try {
			session = super.getSessionFactory().openSession();
			Query q = session.createQuery(hql);
			q.setFirstResult(offset);
			q.setMaxResults(length);
			list_mobile = q.list();
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return list_mobile;
	}


	@Override
	public List<Orders> queryForPage_Orders(String hql, int offset, int length) {
		Session session = null;
		List<Orders> list_order = null;
		try {
			session = super.getSessionFactory().openSession();
			Query q = session.createQuery(hql);
			q.setFirstResult(offset);
			q.setMaxResults(length);
			list_order = q.list();
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return list_order;
	}


	@Override
	public List<User> queryForPage_User(String hql, int offset, int length) {
		Session session = null;
		List<User> list_user = null;
		try {
			session = super.getSessionFactory().openSession();
			Query q = session.createQuery(hql);
			q.setFirstResult(offset);
			q.setMaxResults(length);
			list_user = q.list();
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return list_user;
	}

	
}
