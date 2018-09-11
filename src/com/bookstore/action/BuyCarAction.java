package com.bookstore.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bookstore.domain.Book;
import com.bookstore.domain.OrderProduct;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BuyCarAction extends ActionSupport implements ModelDriven<Book> {

	Book model=new Book();
	
	public Book getModel() {
		// TODO Auto-generated method stub
		return this.model;
	}
	public String myBuyCarUI(){//购物车UI
		
		return "myBuyCarUI";
	}
	@SuppressWarnings("unchecked")
	public String addBookToBuyCar(){
		/*
		 * 获取当前的要添加到购物车的book
		 */
		Book needputbuycarbook=(Book) ActionContext.getContext().getSession().get("detailsbook");
		/*
		 * 判断购物车是否已经创建
		 */
		List<OrderProduct> buycar;//购物车
		if(ActionContext.getContext().getSession().get("buycar")==null){
			buycar=new ArrayList<OrderProduct>();
		}else{
			buycar= (List<OrderProduct>) ActionContext.getContext().getSession().get("buycar");
		}
		/*
		 * 判断购物车中是否已经存在该商品,如果存在则num++,不存在则添加
		 */
		for(int x=0;x<buycar.size();x++){
			if(buycar.get(x).getOpbook().getBid()==needputbuycarbook.getBid()){//购物车存在相同商品num++
				OrderProduct op=buycar.get(x);
				op.setOpnum(op.getOpnum()+1);//num++
				buycar.set(x,op);
				
				ActionContext.getContext().getSession().put("buycar",buycar);//存放到session
				return SUCCESS;
			}
		}
		OrderProduct opnew=new OrderProduct();
		opnew.setOpbook(needputbuycarbook);
		opnew.setOpnum(1);
		buycar.add(opnew);
		ActionContext.getContext().getSession().put("buycar",buycar);//存放到session
		return SUCCESS;
	}
	/*
	 * 确认购买UI
	 */
	public String sureBuyUI(){
		
		
		return "SUREBUYUI";
	}
	/*
	 * 删除购物车中的某样商品
	 */
	public String reduceBuycarSomeProduct() {
		@SuppressWarnings("unchecked")
		List<OrderProduct> buycar=(List<OrderProduct>) ActionContext.getContext().getSession().get("buycar");//获取购物车
		for(int x=0;x<buycar.size();x++){
			if(buycar.get(x).getOpbook().getBid()==model.getBid()){//购物车存在相同商品num++
				buycar.remove(x);
				ActionContext.getContext().getSession().put("buycar",buycar);//存放到session
				return SUCCESS;
			}
		}
		return SUCCESS;
	}
	
}
