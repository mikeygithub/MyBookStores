package com.bookstore.service;

import java.util.List;

import com.bookstore.domain.News;

public interface NewsService {

	public void saveNews(News news);//添加新闻
	public void deleteNews(Long id);//删除新闻
	public void updataNews(News news);//更新新闻
	public News findNewsById(Long id);//查找新闻
	public List<News> getAllNews();//获取所有的新闻
	public List<News> getAllNewAlreadlyD();//获取所有发布的新闻
}
