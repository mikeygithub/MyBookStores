package com.bookstore.tools;

import java.util.List;

import org.hibernate.ScrollableResults;

import com.bookstore.dao.UserDao;
import com.bookstore.domain.Book;
import com.bookstore.service.BookService;

public class Page {
	public List records;//存放分页记录DAO层查出来
	public int currentPageNum;//当前页码，页面传过来
	public int totalRecords;//总记录数DAO层查出来
	public int pageSize;//每页显示条数
	public int totalPage;//总页数
	public int startIndex;//每页开始的记录引索
	
	public void setParament(int currentPageNum,int totalRecords,int pageSize){
		this.currentPageNum=currentPageNum;
		this.totalPage=totalRecords;
		this.pageSize=pageSize;			
		totalPage=totalRecords%pageSize==0?totalRecords/pageSize:(totalRecords/pageSize+1);
		startIndex=(currentPageNum-1)*pageSize;System.out.println("66666"+startIndex);
	}

	public List getRecords() {
		return records;
	}

	public void setRecords(List records) {System.out.println("setRecords method");
		this.records = records;
	}

}