package com.bookstore.service;

import com.bookstore.domain.Orders;

public interface OrdersService {
	public void addOrder(Orders order);//增加订单
	public void upDataOrder(Orders order);//更新订单

}
