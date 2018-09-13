package com.bookstore.dao;

import java.util.List;

import com.bookstore.domain.News;

public interface NewsDao {
	public void saveNews(News news);
	public void deleteNews(Long id);
	public void updataNews(News news);
	public News findNewsById(Long id);
	public List<News> getAllNews();//获取所有的新闻
	public List<News> getAllNewAlreadlyD();//获取所有发布的新闻
}
