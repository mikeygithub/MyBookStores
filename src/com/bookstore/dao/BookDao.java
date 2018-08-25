package com.bookstore.dao;

import com.bookstore.domain.Book;

public interface BookDao {
	
	public void deleteBook(Long id);
	public Book findBookById(Long id);
	public void addBook(Book book);

}
