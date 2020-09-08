package org.app.lib.util;

import java.util.ArrayList;

import org.app.lib.dao.AssociationApp;
import org.app.lib.dto.BookCatagory;
import org.app.lib.dto.Books;

public class AddingDataTest {

	public static void main(String[] args) {
		//add bookcategory & with books into specified Library
		
//		Books books1=new Books();
//		books1.setBookName("Computer Networking");
//		books1.setBookAuthor("Ghileo Kalr");
//		books1.setBookLicenseNo("BSN9820001");
//		books1.setBookPrice(552.21);
//		books1.setBookPublishYear(2018);
//		
//		ArrayList<Books> barr=new ArrayList<Books>();
//		barr.add(books1);
//		
//		BookCatagory bCatagory= new BookCatagory();
//		bCatagory.setCatgoryName("Technology");
//		bCatagory.setDescription("Technology is growing rapidly.");
//		bCatagory.setSinceInvention(1876);
//		bCatagory.setBooksAre(barr);
//		
//		ArrayList<BookCatagory> b2arr= new ArrayList<BookCatagory>();
//		b2arr.add(bCatagory);
		
		AssociationApp app=AssociationApp.getInstance();
//		app.updateBookCatagoryInLibrary("Shree Aurobindo Digital Library", b2arr);
		System.out.println(app.getAdminbyLogin("782R", "DR738PM"));

	}

}
