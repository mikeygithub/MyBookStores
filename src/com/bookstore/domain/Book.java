package com.bookstore.domain;

import java.io.Serializable;

public class Book  implements Serializable {
	private Long bId;//编号
	private String bName;//书名
	private String bAuthor;//作者
	private double bPrice;//原价
	private double bPress;//折扣
	private Integer bNumber;//存货
	private String bDescription;//简介
	private String bImage;//封面
	private BookType bookType;//类型
	public BookType getBookType() {
		return bookType;
	}
	public void setBookType(BookType bookType) {
		this.bookType = bookType;
	}
	public Long getbId() {
		return bId;
	}
	public void setbId(Long bId) {
		this.bId = bId;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public String getbAuthor() {
		return bAuthor;
	}
	public void setbAuthor(String bAuthor) {
		this.bAuthor = bAuthor;
	}
	public double getbPrice() {
		return bPrice;
	}
	public void setbPrice(double bPrice) {
		this.bPrice = bPrice;
	}
	public double getbPress() {
		return bPress;
	}
	public void setbPress(double bPress) {
		this.bPress = bPress;
	}
	public String getbDescription() {
		return bDescription;
	}
	public void setbDescription(String bDescription) {
		this.bDescription = bDescription;
	}
	public String getbImage() {
		return bImage;
	}
	public void setbImage(String bImage) {
		this.bImage = bImage;
	}
	public Integer getbNumber() {
		return bNumber;
	}
	public void setbNumber(Integer bNumber) {
		this.bNumber = bNumber;
	}
	
}
