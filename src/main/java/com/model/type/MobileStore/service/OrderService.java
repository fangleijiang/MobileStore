package com.model.type.MobileStore.service;

import com.model.type.MobileStore.model.Orders;

public interface OrderService {
	public void addOrder(Orders orders);
	public Orders update_order_by_id(int id);
}
