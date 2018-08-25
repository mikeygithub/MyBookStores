package com.bookstore.service;

import com.bookstore.domain.Book;

public interface BookService {
	public void deleteBook(Long id);
	public Book findBookById(Long id);
	public void addBook(Book book);

}
