package com.bookstore.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.BookDao;
import com.bookstore.domain.Book;

public class BookDaoImpl extends HibernateDaoSupport implements BookDao {

	public void deleteBook(Long id) {
		// TODO Auto-generated method stub
		Book book=this.findBookById(id);
		this.getHibernateTemplate().delete(book);
	}

	public Book findBookById(Long id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Book.class, id);
	}

	public void addBook(Book book) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(book);
	}

}
