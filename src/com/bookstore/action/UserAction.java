package com.bookstore.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.bookstore.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private String email;
	
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;System.out.println("Action成功接收邮箱信息");
	}

	public void CheckuEmail() throws IOException {//邮箱是否已经注册
		// TODO Auto-generated method stub
		System.out.println("uEmail===="+this.email);
		
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		if(!userService.findUserReeEmail(email))
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
