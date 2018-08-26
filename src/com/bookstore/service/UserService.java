package com.bookstore.service;

import java.io.Serializable;

import com.bookstore.domain.User;

public interface UserService {
	
	public void saveUser(User user);//增加
	public void deleteUser(Serializable id);//删除
	public void updateUser(User user);//修改
	public User login(User user);//登入
	public User findUserById(Serializable id);//查找
	public Boolean findUserByUsm(String usm);//用户名查找，用于异步交互
	public Boolean findUserReeEmail(String email);//检测邮箱是否已经注册

}
