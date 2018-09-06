package com.bookstore.domain;

/*
 * 特价商品
 */
public class SpecialBook {

	private Long specialBook;// 主键
	private Long bid;// 书籍id
	private String bname;// 书籍名称
	private float bprice;// 书籍原价
	private float bspecialprice;// 特价

	public Long getSpecialBook() {
		return specialBook;
	}

	public void setSpecialBook(Long specialBook) {
		this.specialBook = specialBook;
	}

	public Long getBid() {
		return bid;
	}

	public void setBid(Long bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public float getBprice() {
		return bprice;
	}

	public void setBprice(float bprice) {
		this.bprice = bprice;
	}

	public float getBspecialprice() {
		return bspecialprice;
	}

	public void setBspecialprice(float bspecialprice) {
		this.bspecialprice = bspecialprice;
	}

}
