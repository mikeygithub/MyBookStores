package com.bookstore.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.bookstore.domain.User;
import com.bookstore.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {

	
	private User model=new User();
	
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getModel() {
		// TODO Auto-generated method stub
		return this.model;
	}
	

	public void setModel(User model) {
		this.model = model;
	}

	public void CheckuEmail() throws IOException {//邮箱是否已经注册
		// TODO Auto-generated method stub
		System.out.println("uEmail===="+model.getUemail());
		
		HttpServletResponse response=ServletActionContext.getResponse();
		response.setCharacterEncoding("UTF-8");
		if(!userService.findUserReeEmail(model.getUemail()))
				response.getWriter().write("false");
			
	}
	public String Register(){//注册
		
		return "Register";
	}
	
	public String confirmRegister(){//确认注册
		
		this.userService.saveUser(model);
		return null;
	}
	public String loginUI(){//登入界面
		
		return "loginUI";
	}
	public String sureLogin(){//登入
		System.out.println("login user message"+model.getUemail());
		return "loginUI";
	}


	

}
