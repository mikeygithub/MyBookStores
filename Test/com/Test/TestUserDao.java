package com.Test;

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
		b.setbName("absdfsdfl");
		BookType bt=new BookType();
		bt.setTypeName("阿姆斯特朗炮");
		b.setBookType(bt);
		session.save(b);
		transaction.commit();
		
	}
	
	@Test
	public void testAddUser(){//add
		
		
		User user=new User();
		user.setuName("麦奇");

		
		User user1=new User();
		user1.setuName("里奥");
		userService.saveUser(user);
		userService.saveUser(user1);
		
	}
	@Test
	public void testchangeUser(){//add
		
		User user=userService.findUserById(1l);
		user.setState(1);
		user.setuEmail("16204551@qq.com");
		user.setuPw("123456uPw");
		userService.updateUser(user);
		
	}
	@Test
	public void testOrder(){
		
	}
	
	@Test
	public void testDeleteUser(){
		
		userService.deleteUser(1l);
		
	}
}
