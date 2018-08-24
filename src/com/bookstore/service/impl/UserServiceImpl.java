package com.bookstore.service.impl;

import java.io.Serializable;

import com.bookstore.dao.UserDao;
import com.bookstore.domain.User;
import com.bookstore.service.UserService;

public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void saveUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.saveUser(user);
	}

	public void deleteUser(Serializable id) {
		// TODO Auto-generated method stub
		this.userDao.deleteUser(id);
	}

	public void updateUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.updataUser(user);
	}

	public User login(User user) {
		// TODO Auto-generated method stub
		return this.userDao.login(user);
	}

	public User findUserById(Serializable id) {
		// TODO Auto-generated method stub
		return this.userDao.findUserById(id);
	}

	public Boolean findUserByUsm(String usm) {
		// TODO Auto-generated method stub
		return this.userDao.findUserByUsm(usm);
	}

}
