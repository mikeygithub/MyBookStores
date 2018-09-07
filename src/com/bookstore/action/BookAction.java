package com.bookstore.action;

import com.bookstore.domain.Book;
import com.bookstore.service.BookService;
import com.bookstore.tools.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BookAction extends ActionSupport implements ModelDriven<Book> {

	
	private Book model=new Book();
	private int hotcrruentPageNum;//当前的页码
	private int specialcrruentPageNum;
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

	public int getHotcrruentPageNum() {
		return hotcrruentPageNum;
	}

	public void setHotcrruentPageNum(int hotcrruentPageNum) {
		this.hotcrruentPageNum = hotcrruentPageNum;
	}

	public int getSpecialcrruentPageNum() {
		return specialcrruentPageNum;
	}

	public void setSpecialcrruentPageNum(int specialcrruentPageNum) {
		this.specialcrruentPageNum = specialcrruentPageNum;
	}

	public String BookDetails(){//将书籍的详细信息通过id查询出来
		Book book=bookService.findBookById(model.getBid());
		ActionContext.getContext().getSession().put("detailsbook", book);//将信息放入session
		return SUCCESS;
	}
	public String BookDetailsUI(){
		return "BookDetailsUI";
	}

	public String loadHotBook(){//加载特价模块图书和热门图书
		Page hotpage=new Page();
		hotpage.setParament(hotcrruentPageNum,this.bookService.getTotalRecords("HotBook"),6);
//		System.out.println("page message="+hotpage.startIndex+hotpage.pageSize+"SpecialBook");
		hotpage.setRecords(bookService.getPageBook(hotpage.startIndex,hotpage.pageSize,"HotBook"));
		ActionContext.getContext().getSession().put("hotpage",hotpage);//将信息放入session
		
		return null;
	}
	public String loadSpecialBook(){
		Page specialpage=new Page();
		specialpage.setParament(specialcrruentPageNum,this.bookService.getTotalRecords("SpecialBook"),12);
		specialpage.setRecords(bookService.getPageBook(specialpage.startIndex,specialpage.pageSize,"SpecialBook"));
		ActionContext.getContext().getSession().put("specialpage",specialpage);
		return null;
	}
	
	public String Lookdebug(){
		return "test";
	}
}
