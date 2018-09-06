package com.bookstore.tools;

import java.util.List;

import com.bookstore.dao.UserDao;
import com.bookstore.domain.Book;

public class Page {
	UserDao userDao;
	private List<Book> records;//存放分页记录DAO层查出来
	private int currentPageNum;//当前页码，页面传过来
	private int totalRecords;//总记录数DAO层查出来
	private int pageSize;//每页显示条数
	private int totalPage;//总页数
	private int startIndex;//每页开始的记录引索
	
	public List<Book> setParament(int currentPageNum,int totalRecords,int pageSize){
		this.currentPageNum=currentPageNum;
		this.totalPage=totalRecords;
		this.pageSize=pageSize;
		totalPage=totalRecords%pageSize==0?totalRecords/pageSize:(totalRecords/pageSize+1);
		startIndex=(currentPageNum-1)*pageSize;
//		records=userDao()
		return this.records;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public List<Book> getRecords() {
		return records;
	}

}
Query query = session.createQuery("from Monkey");

//得到滚动结果集
ScrollableResults scroll = query.scroll();
//滚动到最后一行
scroll.last();
int i = scroll.getRowNumber() + 1;
System.out.println("总计路数：" + i);

//设置分页位置
query.setFirstResult(0);
query.setMaxResults(3);

System.out.println(query.list());