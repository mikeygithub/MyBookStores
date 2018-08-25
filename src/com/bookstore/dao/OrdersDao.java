package com.bookstore.dao;

import com.bookstore.domain.Orders;

public  interface OrdersDao {
	public void addOrder(Orders order);//增加订单
	public void upDataOrder(Orders order);//更新订单
}
