package com.bookstore.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.OrdersDao;
import com.bookstore.domain.Orders;

public class OrdersDaoImpl extends HibernateDaoSupport implements OrdersDao {

	public void addOrder(Orders order) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(order);
	}

	public void upDataOrder(Orders order) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(order);
	}

}
