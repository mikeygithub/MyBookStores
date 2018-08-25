package com.bookstore.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.OrderProductDao;
import com.bookstore.domain.OrderProduct;

public class OrderProductDaoImpl extends HibernateDaoSupport implements OrderProductDao {

	public void addBookNumber(OrderProductDao orderProductDao) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(orderProductDao);
	}

	public void deleteBookNumber(OrderProductDao orderProductDao) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(orderProductDao);
	}

	public void reduceBookNumber(OrderProductDao orderProductDao) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(orderProductDao);
	}

	public void findOrderProductByOrderOid(Long id) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().get(OrderProduct.class, id);
	}

	

}
