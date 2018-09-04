package com.bookstore.action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bookstore.domain.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class JsonAction extends ActionSupport implements ModelDriven<User> {

	private String VALIDATE_FAIL="验证码输入错误";
	private String VALIDATE_SUCC="";
	
	private String varycode;//属性驱动验证码
	private User model;
	private String result;//验证码验证结果
	
	public String getResult() {
		return result;
	}


	public void setResult(String result) {
		this.result = result;
	}


	public User getModel() {
		// TODO Auto-generated method stub
		return this.model;
	}


	public String getVarycode() {
		return varycode;
	}


	public void setVarycode(String varycode) {
		this.varycode = varycode;
	}


	public void setModel(User model) {
		this.model = model;
	}
	
	public String CheckuVaryCode(){//检查验证码
	
		HttpSession session = ServletActionContext.getRequest().getSession(); 
		
//		System.out.println(this.varycode+"//"+session.getAttribute("sRand"));
		if(this.varycode.equals(session.getAttribute("sRand"))){//判断session中的验证码和json传过来的是否一致
			System.out.println("验证码正确");
			this.setResult(VALIDATE_SUCC);
		}else{
			System.out.println("验证码正确");
			this.setResult(VALIDATE_FAIL);
		}
		return SUCCESS;
	}
	

}
