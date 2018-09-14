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

	public Orders findOrder(Long orderId) {
		// TODO Auto-generated method stub
		return this.ordersDao.findOrder(orderId);
	}

	public void deleteOrder(Long orderId) {
		// TODO Auto-generated method stub
		this.ordersDao.deleteOrder(orderId);
	}

}
