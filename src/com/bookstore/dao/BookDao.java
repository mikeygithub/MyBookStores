package com.bookstore.dao;

import java.util.Collection;

import com.bookstore.domain.Book;
import com.bookstore.domain.SpecialBook;

public interface BookDao {
	
	public void deleteBook(Long id);//删除图书
	public Book findBookById(Long id);//查找图书
	public void addBook(Book book);//增加图书
	public void addHotBook(HotBook hotBook);//添加热卖图书
	public Collection<HotBook> getAllHotBook();//获取全部热卖图书
	/*
	 * 要进行分页查询
	 */
	
	public void deleteHotBook(Long hotBookId);//删除热卖图书

	public void addSpecialBook(SpecialBook specialBook);//添加特价图书
	public Collection<SpecialBook> getAllSpecialBook();//获取全部特价图书
	public void deleteSpecialBook(Long specialBookId);//删除特价图书
}
