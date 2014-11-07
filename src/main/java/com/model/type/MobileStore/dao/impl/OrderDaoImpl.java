package com.model.type.MobileStore.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.model.type.MobileStore.dao.OrderDao;
import com.model.type.MobileStore.dao.SuperDAO;
import com.model.type.MobileStore.model.Mobile;
import com.model.type.MobileStore.model.Orders;

@Repository
public class OrderDaoImpl extends SuperDAO implements OrderDao {

	@Override
	public void addOrder(Orders orders) {
		Session session = null;	
		try {
			session = super.getSessionFactory().openSession();
			session.clear();
			session.beginTransaction();
			session.save(orders);
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
	public Orders update_order_by_id(int id) {
		Session session = null;
		Orders orders = new Orders();
		try {
			session = super.getSessionFactory().openSession();
			session.beginTransaction();
			Query q = session.createQuery("from Orders orders where orders.id=?");
			q.setInteger(0, id);
			orders = (Orders)q.list().get(0);
			orders.setInvoice_Status(1);
			session.update(orders);
			session.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally{
			session.close();
		}
		
		return orders;
	}

}
