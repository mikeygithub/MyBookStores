package com.bookstore.service.impl;

import com.bookstore.dao.BookDao;
import com.bookstore.domain.Book;
import com.bookstore.service.BookService;

public class BookServiceImpl implements BookService {

	private BookDao bookDao;
	
	
	
	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	public void deleteBook(Long id) {
		// TODO Auto-generated method stub
		this.bookDao.deleteBook(id);
	}

	public Book findBookById(Long id) {
		// TODO Auto-generated method stub
		return this.bookDao.findBookById(id);
	}

	public void addBook(Book book) {
		// TODO Auto-generated method stub
		this.bookDao.addBook(book);
	}

}
