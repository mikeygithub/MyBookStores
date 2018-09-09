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

	
	private Book model=new Book();//模型驱动
	private int hotcrruentPageNum;//当前的页码由前端传来
	private int specialcrruentPageNum;
	private int sometypecrruentPageNum;
	private BookService bookService;//接口编程
	Page hotpage;//热门图书分页
	Page specialpage;//特价图书分页
	Page sometypepage;//某一类型图书分页
	
	public void setHotpage(Page hotpage) {
		this.hotpage = hotpage;
	}
	public void setSpecialpage(Page specialpage) {
		this.specialpage = specialpage;
	}

	
	public void setSometypepage(Page sometypepage) {
		this.sometypepage = sometypepage;
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

	public int getSometypecrruentPageNum() {
		return sometypecrruentPageNum;
	}
	public void setSometypecrruentPageNum(int sometypecrruentPageNum) {
		this.sometypecrruentPageNum = sometypecrruentPageNum;
	}
	public String BookDetails(){//将书籍的详细信息通过id查询出来
		Book book=bookService.findBookById(model.getBid());
		ActionContext.getContext().getSession().put("detailsbook", book);//将信息放入session
		return SUCCESS;
	}
	public String BookDetailsUI(){
		
		return "BookDetailsUI";
	}

	public String index(){//第一次加载页面的时候将两个模块的信息放入session
		
		loadHotBook();
		loadSpecialBook();
		
		return "index";
	}
	
	public String loadHotBook(){//加载特价模块图书和热门图书
		
		if(hotcrruentPageNum==0)hotcrruentPageNum=1;
		
		hotpage.setParament(hotcrruentPageNum,this.bookService.getTotalRecords("HotBook"),6);
		
		hotpage.setRecords(bookService.getPageBook(hotpage.startIndex,hotpage.pageSize,"HotBook"));

		System.out.println("page message="+hotpage.startIndex+hotpage.pageSize+"HotBook");

		ActionContext.getContext().getSession().put("hotpage",hotpage);//将信息放入session
		
		return SUCCESS;
	}
	public String loadSpecialBook(){
		
		if(specialcrruentPageNum==0)specialcrruentPageNum=1;
		
		specialpage.setParament(specialcrruentPageNum,this.bookService.getTotalRecords("SpecialBook"),12);
		
//		System.out.println("page message="+specialpage.startIndex+specialpage.pageSize+"*总页：*"+specialpage.totalPage+"SpecialBook");
		
		specialpage.setRecords(bookService.getPageBook(specialpage.startIndex,specialpage.pageSize,"SpecialBook"));
		
		ActionContext.getContext().getSession().put("specialpage",specialpage);
		
		return SUCCESS;
	}
	/*
	 * 获取某一个类型的图书
	 */
	public String getSomeTypeBook(){
		if(sometypecrruentPageNum==0)sometypecrruentPageNum=1;
		sometypepage.setParament(sometypecrruentPageNum, this.bookService.getTotalRecordsByType(1l),12);//获取该类 图书的总条数
		sometypepage.setRecords(this.bookService.getPageBookByType(sometypepage.startIndex, sometypepage.pageSize, 1));
		ActionContext.getContext().getSession().put("sometypepage",sometypepage);//将查询出来的某类图书放入session
		return SUCCESS;
	}
	/*
	 * 返回获取某个分类图书的界面
	 */
	public String getSomeTypeBookUI(){
		return "TypeBookUI";
	}
	
	public String Lookdebug(){
		return "test";
	}
}
