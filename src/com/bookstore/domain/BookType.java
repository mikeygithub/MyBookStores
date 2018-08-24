package com.bookstore.domain;

import java.util.Set;

public class BookType {

	private Integer typeId;
	private String typeName;
	private Set<Book> allBook;

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public Set<Book> getAllBook() {
		return allBook;
	}

	public void setAllBook(Set<Book> allBook) {
		this.allBook = allBook;
	}

}
