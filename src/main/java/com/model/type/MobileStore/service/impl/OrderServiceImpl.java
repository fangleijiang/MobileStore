package com.model.type.MobileStore.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.model.type.MobileStore.dao.OrderDao;
import com.model.type.MobileStore.model.Orders;
import com.model.type.MobileStore.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	private OrderDao orderDao;
	
	public OrderDao getOrderDao() {
		return orderDao;
	}
	@Resource
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public void addOrder(Orders orders) {
		this.orderDao.addOrder(orders);
	}
	@Override
	public Orders update_order_by_id(int id) {
		
		return this.orderDao.update_order_by_id(id);
	}

}
