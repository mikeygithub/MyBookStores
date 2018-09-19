package com.bookstore.dao.impl;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.OrdersDao;
import com.bookstore.domain.Orders;

public class OrdersDaoImpl extends HibernateDaoSupport implements OrdersDao {

	public void saveOrder(Orders order) {
		// TODO Auto-generated method stub
			try {
				this.getSession().beginTransaction();
				this.getHibernateTemplate().save(order);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.getSession().getTransaction().commit();
	}
	public void upDataOrder(Orders order) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(order);
	}

	public Orders findOrder(Long orderId) {
		return this.getHibernateTemplate().get(Orders.class,orderId);
	}

	public void deleteOrder(Long orderId) {
		// TODO Auto-generated method stub
		Orders entity=this.findOrder(orderId);
		this.getHibernateTemplate().delete(entity);
	}

}
