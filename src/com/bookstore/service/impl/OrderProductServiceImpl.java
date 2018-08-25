package com.bookstore.service.impl;

import com.bookstore.dao.OrderProductDao;
import com.bookstore.service.OrderProductService;

public class OrderProductServiceImpl implements OrderProductService {
	
	private OrderProductDao orderProductDao;
	
	

	public void setOrderProductDao(OrderProductDao orderProductDao) {
		this.orderProductDao = orderProductDao;
	}

	public void addBookNumber(OrderProductDao orderProductDao) {
		// TODO Auto-generated method stub
		this.orderProductDao.addBookNumber(orderProductDao);
	}

	public void deleteBookNumber(OrderProductDao orderProductDao) {
		// TODO Auto-generated method stub
		this.orderProductDao.deleteBookNumber(orderProductDao);
	}

	public void reduceBookNumber(OrderProductDao orderProductDao) {
		// TODO Auto-generated method stub
		this.orderProductDao.reduceBookNumber(orderProductDao);
	}

	public void findOrderProductByOrderOid(Long id) {
		// TODO Auto-generated method stub
		this.orderProductDao.findOrderProductByOrderOid(id);
	}

}
