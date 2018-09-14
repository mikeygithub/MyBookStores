package com.bookstore.action;

import com.bookstore.domain.Orders;
import com.bookstore.service.OrdersService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrdersAction extends ActionSupport implements ModelDriven<Orders> {

	private OrdersService ordersService;
	
	Orders model=new Orders();
	
	public void setOrdersService(OrdersService ordersService) {
		this.ordersService = ordersService;
	}

	public Orders getModel() {
		// TODO Auto-generated method stub
		return this.model;
	}
	
	public void setModel(Orders model) {
		this.model = model;
	}

	public String getOrderUI(){
		System.out.println("order ui page");
		return "getOrderUI";
	}

}
