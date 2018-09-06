package com.bookstore.domain;

/*
 * 热卖图书
 */
public class HotBook {
	
	private Long hotBook;//主键
	private Long bid;
	private String bname;
	private float bprice;

	public Long getHotBook() {
		return hotBook;
	}

	public void setHotBook(Long hotBook) {
		this.hotBook = hotBook;
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
}
