package com.bookstore.tools;

import java.util.List;

import org.hibernate.ScrollableResults;

import com.bookstore.dao.UserDao;
import com.bookstore.domain.Book;
import com.bookstore.service.BookService;

public class Page {
	private List records;//存放分页记录DAO层查出来
	private int currentPageNum;//当前页码，页面传过来
	private int totalRecords;//总记录数DAO层查出来
	private int pageSize;//每页显示条数
	private int totalPage;//总页数
	private int startIndex;//每页开始的记录引索
	
	public void setParament(String tableName,int currentPageNum,int totalRecords,int pageSize,BookService bookService){
		this.currentPageNum=currentPageNum;
		this.totalPage=totalRecords;
		this.pageSize=pageSize;			
		totalPage=totalRecords%pageSize==0?totalRecords/pageSize:(totalRecords/pageSize+1);
		startIndex=(currentPageNum-1)*pageSize;System.out.println("66666"+startIndex);
		this.records=bookService.getPageBook(startIndex, startIndex+pageSize, tableName);
	}

	public List getRecords() {
		return records;
	}

	public void setRecords(List records) {
		this.records = records;
	}

}