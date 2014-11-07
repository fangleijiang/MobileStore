package com.model.type.MobileStore.dao;

import com.model.type.MobileStore.model.Orders;

public interface OrderDao {

	public void addOrder(Orders orders);
	
	public Orders update_order_by_id(int id);

}
