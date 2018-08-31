package com.bookstore.action;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private String uEmail;

	
	
	public String getuEmail() {
		return uEmail;
	}



	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}



	public void CheckuEmail() {
		// TODO Auto-generated method stub
			System.out.println("email===="+this.uEmail);
		
		
	}
	
	
	
}
