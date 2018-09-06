package com.bookstore.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bookstore.domain.Book;
import com.bookstore.domain.User;
import com.bookstore.service.BookService;
import com.bookstore.service.UserService;
import com.opensymphony.xwork2.ActionContext;
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

	public UserService getUserService() {
		return userService;
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
	
	public String ConfirmRegister(){//确认注册
		//System.out.println(model.getUemail()+model.getUpw());
		this.userService.saveUser(model);
		
		return "";
	}
	public String loginUI(){//登入界面
		
		return "loginUI";
	}
	public String sureLogin() throws IOException{//登入
		System.out.println("登入的邮箱："+model.getUemail());
		User user=this.userService.login(model);
		if(user==null||!user.getUemail().equals(model.getUemail())||!user.getUpw().equals(model.getUpw())){//判断邮箱和密码是否正确
			System.out.println("登入失败");
			/*
			 * 处理登入密码错误
			 * 
			 * */
			HttpServletResponse response=ServletActionContext.getResponse();
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write("false");
			
			return null;
		}else{
		System.out.println("登入成功");
		//将用户信息放入值栈session域
		ActionContext.getContext().getSession().put("usermessage", user);
		return "loginsuccess";
		
		}
	}
	public String loginout(){//退出登入
		ActionContext.getContext().getSession().remove("usermessage");//将用户信息从session域中移除
		Map<String,String> jme=new HashMap<String,String>();
		jme.put("ms1","注销成功！");
		jme.put("ms2", "正在进入首页...");
		ActionContext.getContext().getValueStack().push(jme);
		
		return "JumpPage";
	}
	
	public String loginsuccesstip(){//登入成功提示
		Map<String,String> jme=new HashMap<String,String>();
		jme.put("ms1","登入成功！");
		jme.put("ms2", "正在进入首页...");
		ActionContext.getContext().getValueStack().push(jme);
		
		return "JumpPage";
	}
	
	public String JumpPage(){
		Map<String,String> jme=new HashMap<String,String>();
		jme.put("ms1","恭喜：注册成功！");
		jme.put("ms2", "正在进入首页...");
		ActionContext.getContext().getValueStack().push(jme);
		
		return "JumpPage";
	}
	public String buyCarNullJumpPage(){
		Map<String,String> jme=new HashMap<String,String>();
		jme.put("ms1","请先登入哦！");
		jme.put("ms2", "你还未登入呢...");
		ActionContext.getContext().getValueStack().push(jme);
		
		return "JumpPage";
	}
	public String buyCar(){
		return "buycar";
	}
	
	public String  mainpage(){
		return "index";
	}
	public String test(){
		return "top";
	}
	public String buycar(){
		return "buycar";
	}


}
