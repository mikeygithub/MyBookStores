package com.bookstore.service;

import com.bookstore.domain.Orders;

public interface OrdersService {
	public void saveOrder(Orders order);//增加订单
	public void upDataOrder(Orders order);//更新订单
	public Orders findOrder(Long orderId);//查找订单
	public void deleteOrder(Long orderId);//删除订单
}
