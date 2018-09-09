package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.Book;
import com.bookstore.domain.BookType;
import com.bookstore.domain.HotBook;
import com.bookstore.domain.SpecialBook;

public interface BookService {
	public void deleteBook(Long id);
	public Book findBookById(Long id);
	public void addBook(Book book);
	
	public void addSpecialBook(SpecialBook specialBook);//添加特价图书
	public List<SpecialBook> getAllSpecialBook();//获取全部特价图书
	public void deleteSpecialBook(Long specialBookId);//删除特价图书
	
	public void addHotBook(HotBook hotBook);//添加热卖图书
	public List<HotBook> getAllHotBook();//获取全部热卖图书
	public void deleteHotBook(Long hotBookId);//删除热卖图书
	
	public int getTotalRecords(String tablesName);//获取总的记录条数
	public List getPageBook(int start,int end,String tablesName);//获取分页的图书
	public int getTotalRecordsByType(Long typeId);
	public List getPageBookByType(int startIndex, int pageSize, int i);

}
