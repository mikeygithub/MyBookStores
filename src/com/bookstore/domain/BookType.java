package com.bookstore.domain;

import java.util.Set;

public class BookType {

	private Integer typeid;
	private String typename;
	private Set<Book> allbook;
	public Integer getTypeid() {
		return typeid;
	}
	public void setTypeid(Integer typeid) {
		this.typeid = typeid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public Set<Book> getAllbook() {
		return allbook;
	}
	public void setAllbook(Set<Book> allbook) {
		this.allbook = allbook;
	}

	

}
