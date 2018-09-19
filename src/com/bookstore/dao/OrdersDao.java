package com.bookstore.dao;

import com.bookstore.domain.Orders;

public  interface OrdersDao {
	public void saveOrder(Orders order);//增加订单
	public void upDataOrder(Orders order);//更新订单
	public Orders findOrder(Long orderId);//更新订单
	public void deleteOrder(Long orderId);//更新订单
	
}
