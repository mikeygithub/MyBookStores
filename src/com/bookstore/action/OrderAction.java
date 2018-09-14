package com.bookstore.action;

import com.bookstore.domain.Orders;
import com.bookstore.service.OrdersService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrderAction extends ActionSupport implements ModelDriven<Orders> {

	private OrdersService ordersService;
	
	Orders orders=new Orders();
	
	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public Orders getModel() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String getOrderUI(){
		return "getOrderUI";
	}

}
