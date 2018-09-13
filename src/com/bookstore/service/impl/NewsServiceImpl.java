package com.bookstore.service.impl;

import java.util.List;

import com.bookstore.dao.NewsDao;
import com.bookstore.domain.News;
import com.bookstore.service.NewsService;

public class NewsServiceImpl implements NewsService {

	private NewsDao newsDao;
	
	//接口编程
	
	public void setNewsDao(NewsDao newsDao) {
		this.newsDao = newsDao;
	}

	public void saveNews(News news) {
		// TODO Auto-generated method stub
		this.newsDao.saveNews(news);
	}

	public void deleteNews(Long id) {
		// TODO Auto-generated method stub
		this.newsDao.deleteNews(id);
	}

	public void updataNews(News news) {
		// TODO Auto-generated method stub
		this.newsDao.updataNews(news);
	}

	public News findNewsById(Long id) {
		// TODO Auto-generated method stub
		return this.newsDao.findNewsById(id);
	}

	public List<News> getAllNews() {
		// TODO Auto-generated method stub
		return this.newsDao.getAllNews();
	}

	public List<News> getAllNewAlreadlyD() {
		// TODO Auto-generated method stub
		return this.newsDao.getAllNewAlreadlyD();
	}

}
