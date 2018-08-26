package com.bookstore.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.bookstore.domain.User;
import com.bookstore.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport{

	private User model=new User();
	private String uEmail;//邮箱
	private UserService userService;
	
//	public User getModel() {
//		// TODO Auto-generated method stub
//		return this.model;
//	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public String getuEmail() {
		return uEmail;
	}

	
	public void CheckuEmail() throws IOException {//邮箱是否已经注册
		// TODO Auto-generated method stub
		System.out.println("uEmail===="+this.uEmail);
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		if(userService.findUserReeEmail(uEmail))
				response.getWriter().write("false");
		
	}
	public String Register(){//注册
		
		return "Register";
	}
	
	public String confirmRegister(){//确认注册
		
		return null;
	}
	public String login(){//登入
		
		return null;
	}

}
