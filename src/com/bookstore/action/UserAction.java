package com.bookstore.action;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.bookstore.domain.User;
import com.bookstore.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport {

	private String email;
	private String username;
	private String password;
	private User user=new User();
	private UserService userService;

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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
		User user=new User();
		user.setuName(username);
		user.setuPw(password);
		user.setuEmail(email);
		this.userService.saveUser(user);
		return null;
	}
	public String loginUI(){//登入界面
		
		return "loginUI";
	}
	public String sureLogin(){//登入
		
		return "loginUI";
	}

}
