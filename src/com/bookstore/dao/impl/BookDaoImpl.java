package com.bookstore.dao.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bookstore.dao.BookDao;
import com.bookstore.domain.Book;
import com.bookstore.domain.HotBook;
import com.bookstore.domain.SpecialBook;

import org.hibernate.HibernateException;
import org.hibernate.Query;
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

	public int getTotalRecordsByType(Long typeId) {//查找某一类型的所有图书
		// TODO Auto-generated method stub
		String hql = "select count(*) from Book where typeid="+typeId; 

//		Long a=(long) ((Long)getHibernateTemplate().iterate("select count(*) from Book where typeid=1").next()).intValue();System.out.println("该图书总条数："+a);
		
				return ((Long)getHibernateTemplate().iterate(hql).next()).intValue();
			
	}
/*
 * 查询指定类型id的book
 * (non-Javadoc)
 * @see com.bookstore.dao.BookDao#getPageBookByType(int, int, int)
 */
	public List getPageBookByType(int startIndex, int pageSize, int i) {//带条件的分页查询
		// TODO Auto-generated method stub
		Query query=this.getSession().createQuery("from Book where typeid=?");//带查询条件的分页hql语句
        query.setParameter(0,1l);
        query.setFirstResult(startIndex);//从第几条数据开始查询
        query.setMaxResults(pageSize);//每页显示多少条数据
        System.out.println("messsage=开始"+startIndex+"条数="+pageSize+"typeId="+i);
        try {
       	List list=query.list();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
        return query.list();
	}

}
