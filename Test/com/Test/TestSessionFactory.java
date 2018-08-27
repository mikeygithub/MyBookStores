package com.Test;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.junit.Test;

import com.Utils.SpringUtils;
import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;

public class TestSessionFactory  extends SpringUtils{
	
	@Test
	public void testSessionFactory(){
		SessionFactory sessionFactory=(SessionFactory) context.getBean("sessionFactory");
		System.out.println(sessionFactory);
		Session session= sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		Book b=new Book();
		b.setBname("absdfsdfl");
		BookType bt=new BookType();
		bt.setTypename("阿姆斯特朗炮");
		b.setBooktype(bt);
		session.save(b);
		transaction.commit();
		
	}

	@Test
	public void testOrder(){
		SessionFactory sessionFactory=(SessionFactory) context.getBean("sessionFactory");
		System.out.println(sessionFactory);
		Session session= sessionFactory.openSession();
		
		
		
	}
}
