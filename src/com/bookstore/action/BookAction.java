package com.bookstore.action;

import java.util.List;

import com.bookstore.domain.Book;
import com.bookstore.domain.SpecialBook;
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
	Page hotpage;Page specialpage;
	
	public void setHotpage(Page hotpage) {
		this.hotpage = hotpage;
	}
	public void setSpecialpage(Page specialpage) {
		this.specialpage = specialpage;
	}

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
		hotpage.setParament(hotcrruentPageNum,this.bookService.getTotalRecords("HotBook"),6);
		
		hotpage.setRecords(bookService.getPageBook(hotpage.startIndex,hotpage.pageSize,"HotBook"));

		System.out.println("page message="+hotpage.startIndex+hotpage.pageSize+"HotBook");

		ActionContext.getContext().getSession().put("hotpage",hotpage);//将信息放入session
		
		System.out.println("获取完毕");
		return SUCCESS;
	}
	public String loadSpecialBook(){
		specialpage.setParament(specialcrruentPageNum,this.bookService.getTotalRecords("SpecialBook"),12);
		
		System.out.println("page message="+specialpage.startIndex+specialpage.pageSize+"*总页：*"+specialpage.totalPage+"SpecialBook");
		
		specialpage.setRecords(bookService.getPageBook(specialpage.startIndex,specialpage.pageSize,"SpecialBook"));
		
		ActionContext.getContext().getSession().put("specialpage",specialpage);
		
		return SUCCESS;
	}
	
	public String Lookdebug(){
		return "test";
	}
}
