package com.bookstore.action;

import com.bookstore.domain.Book;
import com.bookstore.service.BookService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BookAction extends ActionSupport implements ModelDriven<Book> {

	
	private Book model=new Book();

	private BookService bookService;

	public void setBookService(BookService bookService) {
		this.bookService = bookService;
	}

	public Book getModel() {
		// TODO Auto-generated method stub
		return this.model;
	}
	

	public void setModel(Book model) {
		this.model = model;
	}

	public String BookDetails(){//将书籍的详细信息通过id查询出来
//		Book book=bookService.findBookById(model.getBid());
//		ActionContext.getContext().getSession().put("detailsbook", book);//将信息放入session
		return SUCCESS;
	}
	public String BookDetailsUI(){
	return "BookDetailsUI";
	}

}
