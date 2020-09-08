package org.app.lib.util;

import java.util.Iterator;
import java.util.List;

import org.app.lib.dao.AssociationApp;
import org.app.lib.dto.BookCatagory;
import org.app.lib.dto.Books;
import org.app.lib.dto.Library;

public class FetchDataTest {

	public static void main(String[] args) {
		//fetching all books from a specified bookcategory
		AssociationApp app=AssociationApp.getInstance();
		List<Books> booksByBookCategory = app.getBookslistByBookCategory("History");
		System.out.println(booksByBookCategory);
		
		//fetching all bookscategory by a specified libary name
		List<BookCatagory> bk = app.getBookCategoryListByLibraryName("Shree Aurobindo Digital Library");
		Iterator<BookCatagory> iterator = bk.iterator();
		while(iterator.hasNext()) {
			BookCatagory next = iterator.next();
			List<Books> booksAre = next.getBooksAre();
			System.out.println(booksAre);
		}
		//fetching library data by name
		Library lb = app.getLibraryDetailsByName("Shree Aurobindo Digital Library");
		System.out.println(lb);
	}

}
