package com.bookstore.service.impl;

import java.util.List;

import com.bookstore.dao.BookDao;
import com.bookstore.domain.Book;
import com.bookstore.domain.HotBook;
import com.bookstore.domain.SpecialBook;
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

	public void addSpecialBook(SpecialBook specialBook) {
		// TODO Auto-generated method stub
		this.bookDao.addSpecialBook(specialBook);
	}

	public List<SpecialBook> getAllSpecialBook() {
		// TODO Auto-generated method stub
		return this.bookDao.getAllSpecialBook();
	}

	public void deleteSpecialBook(Long specialBookId) {
		// TODO Auto-generated method stub
		this.bookDao.deleteSpecialBook(specialBookId);
	}

	public void addHotBook(HotBook hotBook) {
		// TODO Auto-generated method stub
		this.bookDao.addHotBook(hotBook);
	}

	public List<HotBook> getAllHotBook() {
		// TODO Auto-generated method stub
		return this.bookDao.getAllHotBook();
	}

	public void deleteHotBook(Long hotBookId) {
		// TODO Auto-generated method stub
		this.bookDao.deleteBook(hotBookId);
	}

	public int getTotalRecords(String tablesName) {
		// TODO Auto-generated method stub
		return this.bookDao.getTotalRecords(tablesName);
	}

	public List getPageBook(int start, int end, String tablesName) {
		// TODO Auto-generated method stub
		return this.bookDao.getPageBook(start, end,tablesName);
	}

}
