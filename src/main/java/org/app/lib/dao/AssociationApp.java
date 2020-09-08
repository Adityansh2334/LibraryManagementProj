package org.app.lib.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import java.util.List;

import org.app.lib.dto.BookCatagory;
import org.app.lib.dto.Books;
import org.app.lib.dto.Library;
import org.app.lib.dto.LibraryOwner;
import org.app.lib.dto.Staffs;

public class AssociationApp {
			private static AssociationApp app=null;
			private Configuration configuration=null;
			private SessionFactory factory=null;
			private AssociationApp() {
				configuration=new Configuration();
				configuration.configure();
				factory=configuration.buildSessionFactory();				
			}
			public static AssociationApp getInstance() {
				if(app == null) {
					app=new AssociationApp();
					return app;
				}
				return app;
			}
			public void saveLibraryDetails(Library library) {
				Session openSession = factory.openSession();
				Transaction beginTransaction = openSession.beginTransaction();
				openSession.save(library);
				beginTransaction.commit();
			}
			
			@SuppressWarnings("unchecked")
			public List<Books> getBookslistByBookCategory(String bookCategory){
				Session openSession = factory.openSession();
				String hql="from "+BookCatagory.class.getName()+" where catagory_name=:ct";
				Query<BookCatagory> createQuery = openSession.createQuery(hql);
				createQuery.setParameter("ct",bookCategory);
				BookCatagory uniqueResult = createQuery.uniqueResult();
				return uniqueResult.getBooksAre();
			}
			@SuppressWarnings("unchecked")
			public List<BookCatagory> getBookCategoryListByLibraryName(String library){
				Session openSession = factory.openSession();
				String hql="from "+Library.class.getName()+" where libName=:linm";
				Query<Library> createQuery = openSession.createQuery(hql);
				createQuery.setParameter("linm", library);
				Library uniqueResult = createQuery.uniqueResult();
				return uniqueResult.getBookCatagory();
			}
			@SuppressWarnings("unchecked")
			public Library getLibraryDetailsByName(String library) {
				Session openSession = factory.openSession();
				String hql="from "+Library.class.getName()+" where libName=:linm";
				Query<Library> createQuery = openSession.createQuery(hql);
				createQuery.setParameter("linm", library);
				return createQuery.uniqueResult();
			}
//			public void updateBookCatagoryInLibrary(String library,List<BookCatagory> bCatagories) {
//				Library lib = getLibraryDetailsByName(library);
//				if(lib!=null) {
//					Session openSession = factory.openSession();
//					Transaction beginTransaction = openSession.beginTransaction();
//					lib.setBookCatagory(bCatagories);
//					openSession.
//					beginTransaction.commit();
//				}
//			}
			public LibraryOwner getAdminbyLogin(String username, String password) {
				Session openSession = factory.openSession();
				String hql="from "+LibraryOwner.class.getName()+" where uname=:unm and password=:ps";
				Query<LibraryOwner> createQuery = openSession.createQuery(hql);
				createQuery.setParameter("unm", username);
				createQuery.setParameter("ps", password);
				return createQuery.uniqueResult();
			}
}
