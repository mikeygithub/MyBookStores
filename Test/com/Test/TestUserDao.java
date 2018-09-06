package com.Test;

import org.hibernate.Query;
import org.hibernate.ScrollableResults;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.junit.Test;

import com.Utils.SpringUtils;
import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;
import com.bookstore.domain.User;
import com.bookstore.service.UserService;

public class TestUserDao extends SpringUtils{

	public static UserService userService=(UserService) context.getBean("userService");
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
	public void testAddUser(){//add
		
		
		User user=new User();
		user.setUname("麦奇");

		
		User user1=new User();
		user1.setUname("里奥");
		userService.saveUser(user);
		userService.saveUser(user1);
		
	}
	@Test
	public void testchangeUser(){//add
		
		User user=userService.findUserById(1l);
		user.setState(1);
		user.setUemail("16204551@qq.com");
		user.setUpw("123456uPw");
		userService.updateUser(user);
		
	}
	@Test
	public void testOrder(){
		
	}
	
	@Test
	public void testDeleteUser(){
		
		userService.deleteUser(1l);
		
	}
	@Test
	public int getTotalRecords(String tablesName) {//查询总记录条数
		// TODO Auto-generated method stub
		SessionFactory sessionFactory=(SessionFactory) context.getBean("sessionFactory");
		Session s=sessionFactory.openSession();
		Query query = s.createQuery("from "+tablesName);
		//得到滚动结果集
		ScrollableResults scroll = query.scroll();
		//滚动到最后一行
		scroll.last();
		System.out.println("总计路数：" + scroll.getRowNumber() + 1);
		return scroll.getRowNumber()+1;
	}
}
