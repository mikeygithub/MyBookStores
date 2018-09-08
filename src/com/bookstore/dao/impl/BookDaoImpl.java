package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.BookDao;
import com.bookstore.domain.Book;
import com.bookstore.domain.HotBook;
import com.bookstore.domain.SpecialBook;
import com.bookstore.domain.User;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.ScrollableResults;
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
	
	public int getTotalRecords(String tablesName) {//查询总记录条数
		// TODO Auto-generated method stub
		String hql = "select count(*) from "+tablesName;   
		
		
		return ((Long)getHibernateTemplate().iterate(hql).next()).intValue();
	}

	public List getPageBook(int start, int end,String tablesName) {//获取分页的记录
		// TODO Auto-generated method stub
		System.out.println("Message=开始记录="+start+"//结束记录="+end+"//表名="+tablesName);
		Query query = this.getSession().createQuery("from "+tablesName);
		query.setFirstResult(start);
		query.setMaxResults(end);
		
		return query.list();
	}

	public void addSpecialBook(SpecialBook specialBook) {//添加特价图书
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(specialBook);
	}

	public List<SpecialBook> getAllSpecialBook() {//获取全部特价图书
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from SpecialBook");
	}

	public void deleteSpecialBook(Long specialBookId) {//删除特价图书
		// TODO Auto-generated method stub
		SpecialBook sb=this.getHibernateTemplate().get(SpecialBook.class, specialBookId);
		this.getHibernateTemplate().delete(sb);
	}

	public void addHotBook(HotBook hotBook) {//添加热卖图书
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(hotBook);
	}

	public List<HotBook> getAllHotBook() {//获取全部热卖图书
		// TODO Auto-generated method stub
		return (List)this.getHibernateTemplate().find("from HotBook");
	}

	public void deleteHotBook(Long hotBookId) {//删除热卖图书
		// TODO Auto-generated method stub
		HotBook hb=this.getHibernateTemplate().get(HotBook.class, hotBookId);
		this.getHibernateTemplate().delete(hb);
	}

}
