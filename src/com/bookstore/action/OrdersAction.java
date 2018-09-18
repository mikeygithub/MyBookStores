package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.domain.Book;
import com.bookstore.domain.OrderProduct;
import com.bookstore.domain.Orders;
import com.bookstore.service.OrdersService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrdersAction extends ActionSupport implements ModelDriven<Orders> {

	private OrdersService ordersService;
	
	private Long[] wspa;//=new String[100];//测试用于接收选中的商品
	
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

	public Long getWspa() {
		return wspa[100];
	}

	public void setWspa(Long[] wspa) {
		this.wspa = wspa;
	}

	public String getOrderUI(){//加载订单UI page
		System.out.println("order ui page");
		return "getOrderUI";
	}

	public void getOrder(){//获取提交的订单数据
		  
		System.out.println("数组信息="+wspa.length);for(int i=0;i<wspa.length;i++){System.out.println(wspa[i]);}
		
		List<OrderProduct> willbuybook=new ArrayList<OrderProduct>();//用于订单提交页面回显数据
		
		@SuppressWarnings("unchecked")
		List<OrderProduct> buycar=(List<OrderProduct>) ActionContext.getContext().getSession().get("buycar");//从session中获取要购买的商品信息
for(int j=0;j<wspa.length;j++){
	for(int i=0;i<buycar.size();i++){
			if(buycar.get(i).getOpbook().getBid()==wspa[j]){//购物车存在相同商品num++
				
				willbuybook.add(buycar.get(i));//放入将要购买的list中
				
				buycar.remove(i);//将结算好的购物商品从购物车移除
				
			}
		}
}
	//总价格
	long totalmaney=0;
	for(OrderProduct o:willbuybook){
		totalmaney=totalmaney+(long) (o.getOpnum()*o.getOpbook().getBprice());
	}

	ActionContext.getContext().getSession().put("totalmaney",totalmaney);//总价格	
	ActionContext.getContext().getSession().put("buycar",buycar);//更新购物车session
	ActionContext.getContext().getSession().put("willbuybook",willbuybook);//保存将要结算的商品session
	
	}
}
