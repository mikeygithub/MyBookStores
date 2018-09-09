package com.bookstore.domain;

import java.util.Set;

public class BookType {

	private Long typeid;
	private String typename;
//	private Set<Book> allbook;
	
	public String getTypename() {
		return typename;
	}
	public Long getTypeid() {
		return typeid;
	}
	public void setTypeid(Long typeid) {
		this.typeid = typeid;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
//	public Set<Book> getAllbook() {
//		return allbook;
//	}
//	public void setAllbook(Set<Book> allbook) {
//		this.allbook = allbook;
//	}

	

}
