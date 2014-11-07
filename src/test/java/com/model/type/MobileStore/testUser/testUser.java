package com.model.type.MobileStore.testUser;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;







public class testUser {
private static SessionFactory sessionFactory;
	
	/*@BeforeClass
	public static void BeforeClass(){
		sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
	}

	@AfterClass
	public static void AfterClass(){
		
		sessionFactory.close();
	}
	*/
@Test
	public void testSchemaExport(){
		
			new SchemaExport(new AnnotationConfiguration().configure()).create(true,true);
		}
	
	/*@Test
	public void saveUser(){
		Session session = sessionFactory.openSession();
		User user = new User();
		Orders order = new Orders();
		order.setOrder_number("fdefe");
		user.setUsername("小方");
		user.setPassword(MD5.GetMd5("1234"));
		user.setSex("男");
		user.setAge("22");
		user.setAddress("湖南长沙");
		order.setUser(user);
		session.beginTransaction();
		session.save(user);
		session.save(order);
		session.getTransaction().commit();
		session.close();
		
	}*/
}
