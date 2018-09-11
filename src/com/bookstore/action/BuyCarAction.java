package com.bookstore.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bookstore.domain.Book;
import com.bookstore.domain.OrderProduct;
import com.bookstore.tools.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BuyCarAction extends ActionSupport implements ModelDriven<Book> {

	Book model=new Book();//模型驱动
	Page nowBuyCarPage=new Page();//购物车当前page
	private int currentPageNumber;//当前页
	
	public Book getModel() {
		// TODO Auto-generated method stub
		return this.model;
	}

	public Page getNowBuyCarPage() {
		return nowBuyCarPage;
	}

	public void setNowBuyCarPage(Page nowBuyCarPage) {
		this.nowBuyCarPage = nowBuyCarPage;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
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
	public String deleteBuycarSomeProduct() {
		@SuppressWarnings("unchecked")
		List<OrderProduct> buycar=(List<OrderProduct>) ActionContext.getContext().getSession().get("buycar");//获取购物车
		for(int x=0;x<buycar.size();x++){
			if(buycar.get(x).getOpbook().getBid()==model.getBid()){//通过判断id
				buycar.remove(x);
				ActionContext.getContext().getSession().put("buycar",buycar);//存放到session
				return SUCCESS;
			}
		}
		return SUCCESS;
	}
	/*
	 * 减少购物车中某样书籍的数量
	 */
	public String reduceBuycarSomeProductNumber(){
		@SuppressWarnings("unchecked")
		List<OrderProduct> buycar=(List<OrderProduct>) ActionContext.getContext().getSession().get("buycar");//获取购物车
		
		for(int x=0;x<buycar.size();x++){
			if(buycar.get(x).getOpbook().getBid()==model.getBid()){//购物车存在相同商品num++
				OrderProduct op=buycar.get(x);
				op.setOpnum(op.getOpnum()-1);//num--
				buycar.set(x,op);
				ActionContext.getContext().getSession().put("buycar",buycar);//存放到session
				return SUCCESS;
			}
		}
		return SUCCESS;
	}
	/*
	 * 增加购物车中某样书籍的数量
	 */
	public String addBuycarSomeProductNumber(){
		@SuppressWarnings("unchecked")
		List<OrderProduct> buycar=(List<OrderProduct>) ActionContext.getContext().getSession().get("buycar");//获取购物车
		for(int x=0;x<buycar.size();x++){
			if(buycar.get(x).getOpbook().getBid()==model.getBid()){//购物车存在相同商品num++
				OrderProduct op=buycar.get(x);
				op.setOpnum(op.getOpnum()+1);//num++
				buycar.set(x,op);
				ActionContext.getContext().getSession().put("buycar",buycar);//存放到session
				return SUCCESS;
			}
		}
		return SUCCESS;
	}
	public void getBuyCarPage(){//分页操作
		if(currentPageNumber==0)currentPageNumber=1;
		
		List<OrderProduct> buycar=(List<OrderProduct>) ActionContext.getContext().getSession().get("buycar");//获取购物车
		
		List<OrderProduct> noworders=new ArrayList<OrderProduct>();//需要在当前页显示的orderlist
		
		nowBuyCarPage.setParament(currentPageNumber,buycar.size(), 6);
		
		for(int i=nowBuyCarPage.startIndex;i<6&&i<buycar.size();i++){
			noworders.add(buycar.get(i));
		}
		
		nowBuyCarPage.setRecords(noworders);
		
		ActionContext.getContext().getSession().put("newBuyCarPage", nowBuyCarPage);
		
	}
	
}
