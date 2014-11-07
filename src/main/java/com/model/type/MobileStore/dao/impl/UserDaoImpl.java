package com.model.type.MobileStore.dao.impl;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.model.type.MobileStore.dao.SuperDAO;
import com.model.type.MobileStore.dao.UserDao;
import com.model.type.MobileStore.model.User;
import com.model.type.MobileStore.util.MD5;


@Repository
public class UserDaoImpl extends SuperDAO implements UserDao {

	@Override
	public void save(User user) {
		Session session = null;
		try {
	
			session = super.getSessionFactory().openSession();
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
	}
	@Override
	public void delete(User user) {
		Session session = null;
		try {
	
			session = super.getSessionFactory().openSession();
			session.beginTransaction();
			session.delete(user);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
	}
	@Override
	public User find_User_By_id(int id) {
		Session session = null;
		User user = new User();
		try {

			session = super.getSessionFactory().openSession();
			Query q = session.createQuery("from User user where user.id=?");
			q.setInteger(0, id);
			user = (User)q.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
		return user;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> List_User() {
		Session session = null;
		List<User> list_user = null;
		try {
	
			session = super.getSessionFactory().openSession();
			Query q = session.createQuery("from User user order by user.id desc");
			list_user = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
		return list_user;
	}

	@Override
	public User checkLogin(String username, String password,String identitys) {
		Session session = null;
		
		try {
			session = super.getSessionFactory().openSession();
			String md5_password = MD5.GetMd5(password);
			Query q = session.createQuery("from User user where user.username=? and user.password=? and user.identitys=? and user.status=?");
			q.setString(0, username);
			q.setString(1,md5_password);
			q.setString(2,identitys);
			q.setString(3, "未发货");
			List list = q.list();
			if(list.size()>0&&list.size()==1){
				return (User) list.get(0);
			}
			
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return null;
	}
	@Override
	public User checkRegister(String username) {
			Session session = null;
		
		try {
			session = super.getSessionFactory().openSession();
			Query q = session.createQuery("from User user where user.username=? ");
			q.setString(0, username);
			List list = q.list();
			if(list.size()>0&&list.size()==1){
				return (User) list.get(0);
			}
			
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		return null;
	}
	@Override
	public User find_User_By_user(String username) {
		Session session = null;
		User user = new User();
		try {

			session = super.getSessionFactory().openSession();
			Query q = session.createQuery("from User user where user.username=?");
			q.setString(0, username);
			user = (User)q.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
		return user;
	}
	@Override
	public void ActivatingRegister(String username) {
		Session session = null;
		try {
			session = super.getSessionFactory().openSession();
			session.beginTransaction();
			User user =find_User_By_user(username);
			user.setStatus("已验证");
			session.update(user);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			session.close();
		}
	
	}

	
	
}
