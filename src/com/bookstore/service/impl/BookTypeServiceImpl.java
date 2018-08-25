package com.bookstore.service.impl;

import com.bookstore.dao.BookTypeDao;
import com.bookstore.domain.BookType;
import com.bookstore.service.BookTypeService;

public class BookTypeServiceImpl implements BookTypeService {
	
	private BookTypeDao bookTypeDao;
	
	

	public void setBookTypeDao(BookTypeDao bookTypeDao) {
		this.bookTypeDao = bookTypeDao;
	}

	public void addBookType(BookType bookType) {
		// TODO Auto-generated method stub
		this.bookTypeDao.addBookType(bookType);
	}

	public void deleteBookType(Long typeId) {
		// TODO Auto-generated method stub
		this.bookTypeDao.deleteBookType(typeId);
	}

	public BookType findBTById(Long bTId) {
		// TODO Auto-generated method stub
		return this.bookTypeDao.findBTById(bTId);
	}

}
