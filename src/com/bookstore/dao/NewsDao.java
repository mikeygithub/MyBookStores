package com.bookstore.dao;

import com.bookstore.domain.News;

public interface NewsDao {
	public void saveNews(News news);
	public void deleteNews(Long id);
	public void updataNews(News news);
	public News findNewsById(Long id);
}
