package com.bookstore.action;

import com.bookstore.domain.User;
import com.bookstore.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {

	private User model=new User();
	private UserService userService;
	
	public User getModel() {
		// TODO Auto-generated method stub
		return this.model;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String Register(){//注册
		
		return "Register";
	}
//	public String Exemail(){//邮箱是否已经注册
//		String email=(String)ActionContext.getContext().getSession().get("email");
//		System.err.println("邮箱"+email);
//		
//		return null;
//	}
	public String confirmRegister(){//确认注册
		
		return null;
	}
	public String login(){//登入
		
		return null;
	}

}
