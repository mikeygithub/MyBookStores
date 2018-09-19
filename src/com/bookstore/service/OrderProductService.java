package com.bookstore.service;

import com.bookstore.dao.OrderProductDao;

public interface OrderProductService {
	public void saveBookNumber(OrderProductDao orderProductDao);//增加订单中书本数量
	public void deleteBookNumber(OrderProductDao orderProductDao);//删除订单中书本产品
	public void reduceBookNumber(OrderProductDao orderProductDao);//减少订单中书本数量
	public void findOrderProductByOrderOid(Long id);//通过订单查找到产品

}
