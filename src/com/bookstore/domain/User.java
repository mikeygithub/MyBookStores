package com.bookstore.domain;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable {
	private static final int USER_NOT_STATE=0;//未激活状态
	private static final int USER_OLEARDY_STATE=1;//已进激活状态
	
	private int state;
	private Long uId;
	private String uName;
	private String uTrueName;
	private String uPw;
	private String uEmail;
	private String uPhone;
	private String uDentityCode;
	private String uAddress;
	private String sex;
	private List<Orders> orders;
	
	
	public List<Orders> getOrders() {
		return orders;
	}
	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Long getuId() {
		return uId;
	}
	public void setuId(Long uId) {
		this.uId = uId;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuTrueName() {
		return uTrueName;
	}
	public void setuTrueName(String uTrueName) {
		this.uTrueName = uTrueName;
	}
	public String getuPw() {
		return uPw;
	}
	public void setuPw(String uPw) {
		this.uPw = uPw;
	}
	public String getuEmail() {
		return uEmail;
	}
	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}
	public String getuPhone() {
		return uPhone;
	}
	public void setuPhone(String uPhone) {
		this.uPhone = uPhone;
	}
	public String getuDentityCode() {
		return uDentityCode;
	}
	public void setuDentityCode(String uDentityCode) {
		this.uDentityCode = uDentityCode;
	}
	public String getuAddress() {
		return uAddress;
	}
	public void setuAddress(String uAddress) {
		this.uAddress = uAddress;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public static int getUserNotState() {
		return USER_NOT_STATE;
	}
	public static int getUserOleardyState() {
		return USER_OLEARDY_STATE;
	}
}
