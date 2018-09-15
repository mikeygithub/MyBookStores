package com.bookstore.action;

import com.bookstore.domain.Orders;
import com.bookstore.service.OrdersService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrdersAction extends ActionSupport implements ModelDriven<Orders> {

	private OrdersService ordersService;
	
	private String wspa=new String();//测试用于接收选中的商品
	
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

	public String getWspa() {
		return wspa;
	}

	public void setWspa(String wspa) {
		this.wspa = wspa;
	}

	public String getOrderUI(){//加载订单UI page
		System.out.println("order ui page");
		return "getOrderUI";
	}

	public void getOrder(){//获取提交的订单数据
		                                              
		System.out.println("action接收到的提交="+wspa);//将id获取查询出book
		
		
	}
}
