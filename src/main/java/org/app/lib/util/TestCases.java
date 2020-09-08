package org.app.lib.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.app.lib.dao.AssociationApp;
import org.app.lib.dto.BookCatagory;
import org.app.lib.dto.Books;
import org.app.lib.dto.Library;
import org.app.lib.dto.LibraryOwner;
import org.app.lib.dto.Staffs;

public class TestCases {

	public static void main(String[] args) {
		
		// Library Details Input
		Library library= new Library();
		library.setLibName("Shree Aurobindo Digital Library");
		library.setEstablishedIn(1996);
		library.setLibAddress("Balasore, Odisha, India");
		
		//Books Details Input
		//1
		Books books =new Books();
		books.setBookName("Power Of GOD");
		books.setBookAuthor("Goutam Sinha");
		books.setBookLicenseNo("SN788881009");
		books.setBookPrice(880.89);
		books.setBookPublishYear(2019);
		//2
		Books books2 =new Books();
		books2.setBookName("Hunuman Chalisa");
		books2.setBookAuthor("TulsiDas");
		books2.setBookLicenseNo("SN0000000");
		books2.setBookPrice(00.0);
		books2.setBookPublishYear(1960);
		
		//forming a list of books
		ArrayList<Books> booklist=new ArrayList<Books>();
		booklist.add(books);
		booklist.add(books2);
		
		//Creating a BookCategory
		BookCatagory bookCat =new BookCatagory();
		bookCat.setCatgoryName("History");
		bookCat.setSinceInvention(1200);
		bookCat.setDescription("History itselfy called as historical things");
		
		//Adding books-list to book-category
		bookCat.setBooksAre(booklist);
		
		//creating an list of book-categories
		ArrayList<BookCatagory> bookcatlist=new ArrayList<BookCatagory>();
		bookcatlist.add(bookCat);
		
		//Creating Staffs of Library
		//1
		Staffs staffs=new Staffs();
		staffs.setName("Anil", "Kumar");
		staffs.setStaffAge(33);
		staffs.setDegisnation("Library Maintainer");
		staffs.setStaffJoinDate("12-09-2011");
		staffs.setStaffSalary(23000.90);
		//2
		Staffs staffs2=new Staffs();
		staffs2.setName("Rajib", "Kunal");
		staffs2.setStaffAge(54);
		staffs2.setDegisnation("Library Accountant");
		staffs2.setStaffJoinDate("12-09-2007");
		staffs2.setStaffSalary(43000.90);
		
		//forming an list of staffs
		ArrayList<Staffs> liststaffs=new ArrayList<Staffs>();
		liststaffs.add(staffs);
		liststaffs.add(staffs2);
		
		//adding book-category list and staff list into library
		library.setBookCatagory(bookcatlist);
		library.setStaffs(liststaffs);
		
		//creating owner of the Library
		LibraryOwner owner= new LibraryOwner();
		owner.setName("Krushna", "Chandra");
		owner.setAge(51);
		owner.setOwnlLibrary(library);
		
		//adding library-owner object into library object
		library.setLibOwnerName(owner);
		
		//Object call of data store class
		AssociationApp app=AssociationApp.getInstance();
		app.saveLibraryDetails(library);
		System.out.println("Stored");
	}

}
