package com.bookstore.domain;

import java.io.Serializable;

public class Book  implements Serializable {
	private Long bid;//编号
	private String bname;//书名
	private String bauthor;//作者
	private double bprice;//原价
	private double bpress;//折扣
	private Integer bnumber;//存货
	private String bdescription;//简介
	private String bimage;//封面
	private BookType booktype;//类型
	private Integer specialoffer;//是否是特价商品
	private Integer hotbook;//是否为热销售价
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
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public double getBprice() {
		return bprice;
	}
	public void setBprice(double bprice) {
		this.bprice = bprice;
	}
	public double getBpress() {
		return bpress;
	}
	public void setBpress(double bpress) {
		this.bpress = bpress;
	}
	public Integer getBnumber() {
		return bnumber;
	}
	public void setBnumber(Integer bnumber) {
		this.bnumber = bnumber;
	}
	public String getBdescription() {
		return bdescription;
	}
	public void setBdescription(String bdescription) {
		this.bdescription = bdescription;
	}
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public BookType getBooktype() {
		return booktype;
	}
	public void setBooktype(BookType booktype) {
		this.booktype = booktype;
	}
	public Integer getSpecialoffer() {
		return specialoffer;
	}
	public void setSpecialoffer(Integer specialoffer) {
		this.specialoffer = specialoffer;
	}
	public Integer getHotbook() {
		return hotbook;
	}
	public void setHotbook(Integer hotbook) {
		this.hotbook = hotbook;
	}
	
	
}
