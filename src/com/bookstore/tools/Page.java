package com.bookstore.tools;

import java.io.Serializable;
import java.util.List;

public class Page implements Serializable{
	public List records;//存放分页记录DAO层查出来
	public int currentPageNum;//当前页码，页面传过来
	public int totalRecords;//总记录数DAO层查出来
	public int pageSize;//每页显示条数
	public int totalPage;//总页数
	public int startIndex;//每页开始的记录引索
	
	public void setParament(int currentPageNum,int totalRecords,int pageSize){
		this.currentPageNum=currentPageNum;
		System.out.println("--------------------------------");
		this.totalPage=totalRecords;System.out.println("总记录条数："+totalRecords);
		this.pageSize=pageSize;			
		totalPage=totalRecords%pageSize==0?totalRecords/pageSize:(totalRecords/pageSize+1);
		startIndex=(currentPageNum-1)*pageSize;
	}

	public List getRecords() {
		return records;
	}

	public void setRecords(List records) {
		System.out.println("setRecords method");
		this.records = records;
	}

	public int getCurrentPageNum() {
		return currentPageNum;
	}

	public void setCurrentPageNum(int currentPageNum) {
		this.currentPageNum = currentPageNum;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

}