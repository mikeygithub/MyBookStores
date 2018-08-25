package com.bookstore.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.BookTypeDao;

import com.bookstore.domain.BookType;

public class BookTypeDaoImpl extends HibernateDaoSupport implements BookTypeDao {

	public void addBookType(BookType bookType) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(bookType);

	}

	public void deleteBookType(Long typeId) {
		// TODO Auto-generated method stub
		BookType bookType=this.findBTById(typeId);
		this.getHibernateTemplate().delete(bookType);

	}

	public BookType findBTById(Long bTId) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(BookType.class, bTId);
	}

}
