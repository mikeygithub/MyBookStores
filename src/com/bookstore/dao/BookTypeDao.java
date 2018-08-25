package com.bookstore.dao;

import com.bookstore.domain.BookType;

public interface BookTypeDao {
	
	public void addBookType(BookType bookType);//增加分类
	public void deleteBookType(Long typeId);//删除分类
	public BookType findBTById(Long bTId);//查找分类
}
