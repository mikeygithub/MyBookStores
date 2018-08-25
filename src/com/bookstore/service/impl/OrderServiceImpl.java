package com.bookstore.service.impl;

import com.bookstore.dao.OrdersDao;
import com.bookstore.domain.Orders;
import com.bookstore.service.OrdersService;

public class OrderServiceImpl implements OrdersService {

	private OrdersDao ordersDao;
	
	
	
	public void setOrdersDao(OrdersDao ordersDao) {
		this.ordersDao = ordersDao;
	}

	public void addOrder(Orders order) {
		// TODO Auto-generated method stub
		this.ordersDao.addOrder(order);
	}

	public void upDataOrder(Orders order) {
		// TODO Auto-generated method stub
		this.ordersDao.upDataOrder(order);
	}

}
