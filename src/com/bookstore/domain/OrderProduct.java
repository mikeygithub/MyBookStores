package com.bookstore.domain;

import java.io.Serializable;

public class OrderProduct implements Serializable {

	private Long opid;// id
	private int opnum;// 数量
	private Orders oporder;// 订单
	private Book opbook;// 商品
	private Long obid;//商品id
	
	public Long getOpid() {
		return opid;
	}
	public void setOpid(Long opid) {
		this.opid = opid;
	}
	public int getOpnum() {
		return opnum;
	}
	public void setOpnum(int opnum) {
		this.opnum = opnum;
	}
	public Orders getOporder() {
		return oporder;
	}
	public void setOporder(Orders oporder) {
		this.oporder = oporder;
	}
	public Book getOpbook() {
		return opbook;
	}
	public void setOpbook(Book opbook) {
		this.opbook = opbook;
	}
	public Long getObid() {
		return obid;
	}
	public void setObid(Long obid) {
		this.obid = obid;
	}
	public void setObid() {
		this.obid = this.opbook.getBid();
	}

	

}
