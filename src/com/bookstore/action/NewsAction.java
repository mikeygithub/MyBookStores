package com.bookstore.action;

import java.util.ArrayList;
import java.util.List;

import com.bookstore.domain.Book;
import com.bookstore.domain.News;
import com.bookstore.domain.OrderProduct;
import com.bookstore.service.BookService;
import com.bookstore.service.NewsService;
import com.bookstore.tools.Page;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class NewsAction extends ActionSupport implements ModelDriven<News> {

	News model=new News();
	private NewsService newsService;
	
	
	public News getModel() {
		// TODO Auto-generated method stub
		return this.model;
	}


	public void setNewsService(NewsService newsService) {
		this.newsService = newsService;
	}


	public String getNwesMessages(){//获取已经发布了的news
		
			List<News> news=this.newsService.getAllNewAlreadlyD();
		
			ActionContext.getContext().getSession().put("newsmessage", news);//放入session
			System.out.println("news大小="+news.size());
		return "getNwesMessages";
	}
	
	public void getSomeOneNews(){
		System.out.println("要显示的newsid="+model.getNid());
		News news=this.newsService.findNewsById(model.getNid());
		ActionContext.getContext().getSession().put("someonenews", news);//放入session
		System.out.println("活动id="+news.getNid());
	}
	
	public String getNewsUI(){
		return "NEWSUI";
	}
	
}
