package com.bookstore.domain;

import java.io.Serializable;

public class OrderProduct implements Serializable {

	private Long opId;// id
	private int opNum;// 数量
	private Orders opOrder;// 订单
	private Book opBook;// 商品
	public Long getOpId() {
		return opId;
	}
	public void setOpId(Long opId) {
		this.opId = opId;
	}
	public int getOpNum() {
		return opNum;
	}
	public void setOpNum(int opNum) {
		this.opNum = opNum;
	}
	public Orders getOpOrder() {
		return opOrder;
	}
	public void setOpOrder(Orders opOrder) {
		this.opOrder = opOrder;
	}
	public Book getOpBook() {
		return opBook;
	}
	public void setOpBook(Book opBook) {
		this.opBook = opBook;
	}

	

}
