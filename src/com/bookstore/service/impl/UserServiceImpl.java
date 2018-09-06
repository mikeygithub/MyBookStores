package com.bookstore.service.impl;

import java.io.Serializable;
import java.util.List;

import com.bookstore.dao.UserDao;
import com.bookstore.domain.HotBook;
import com.bookstore.domain.SpecialBook;
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

	public Boolean findUserReeEmail(String email) {
		// TODO Auto-generated method stub
		return this.userDao.findUserReeEmail(email);
	}

	public void addSpecialBook(SpecialBook specialBook) {
		// TODO Auto-generated method stub
//		this.userDao.add
	}

	public List<SpecialBook> getAllSpecialBook() {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteSpecialBook(Long specialBookId) {
		// TODO Auto-generated method stub
		
	}

	public void addHotBook(HotBook hotBook) {
		// TODO Auto-generated method stub
		
	}

	public List<HotBook> getAllHotBook() {
		// TODO Auto-generated method stub
		return null;
	}

	public void deleteHotBook(Long hotBookId) {
		// TODO Auto-generated method stub
		
	}

}
