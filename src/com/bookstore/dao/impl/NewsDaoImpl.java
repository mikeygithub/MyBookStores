package com.bookstore.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.NewsDao;
import com.bookstore.domain.News;

public class NewsDaoImpl extends HibernateDaoSupport implements NewsDao {

	
	
	public void saveNews(News news) {
		// TODO Auto-generated method stub
			this.getHibernateTemplate().save(news);
	}

	public void deleteNews(Long id) {
		// TODO Auto-generated method stub
		News news=this.findNewsById(id);
		this.getHibernateTemplate().delete(news);
	}

	public void updataNews(News news) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(news);
	}

	public News findNewsById(Long id) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(News.class, id);
	}

}
