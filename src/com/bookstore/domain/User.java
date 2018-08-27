package com.bookstore.domain;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable {
	private static final int USER_NOT_STATE=0;//未激活状态
	private static final int USER_OLEARDY_STATE=1;//已进激活状态
	
	private int state;
	private Long uid;
	private String uname;
	private String utruename;
	private String upw;
	private String uemail;
	private String uphone;
	private String udentitycode;
	private String uaddress;
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
	
	public Long getUid() {
		return uid;
	}
	public void setUid(Long uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUtruename() {
		return utruename;
	}
	public void setUtruename(String utruename) {
		this.utruename = utruename;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	
	public String getUdentitycode() {
		return udentitycode;
	}
	public void setUdentitycode(String udentitycode) {
		this.udentitycode = udentitycode;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
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
