package com.bookstore.action;

import com.bookstore.domain.Book;
import com.bookstore.service.BookService;
import com.bookstore.tools.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BookAction extends ActionSupport implements ModelDriven<Book> {

	
	private Book model=new Book();
	private int crruentPageNum;//当前的页码
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

	public int getCrruentPageNum() {
		return crruentPageNum;
	}

	public void setCrruentPageNum(int crruentPageNum) {
		this.crruentPageNum = crruentPageNum;
	}

	public String BookDetails(){//将书籍的详细信息通过id查询出来
//		Book book=bookService.findBookById(model.getBid());
//		ActionContext.getContext().getSession().put("detailsbook", book);//将信息放入session
		return SUCCESS;
	}
	public String BookDetailsUI(){
	return "BookDetailsUI";
	}

	public String loadHotBookAndSpecialBook(){//加载特价模块图书和热门图书
		
		Page page1=new Page();Page page2=new Page();int crruentPageNum1=1;
		
		page1.setParament("SpecialBook",crruentPageNum1,this.bookService.getTotalRecords("SpecialBook"),12,this.bookService);
		page2.setParament("HotBook",crruentPageNum,this.bookService.getTotalRecords("HotBook"),6,this.bookService);
		
		ActionContext.getContext().getSession().put("page1",page1);//将信息放入session
		ActionContext.getContext().getSession().put("page2",page2);
		return "test";
	}
}
