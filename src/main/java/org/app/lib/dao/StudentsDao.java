package org.app.lib.dao;

import org.app.lib.dto.Students;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class StudentsDao {
	private static StudentsDao dao=null;
	private Configuration configuration=null;
	private SessionFactory factory=null;
	
	private StudentsDao() {
		configuration=new Configuration();
		configuration.configure();
		configuration.addAnnotatedClass(Students.class);
		factory=configuration.buildSessionFactory();
	}
	public static StudentsDao getInstance() {
		if(dao == null) {
			dao=new StudentsDao();
			return dao;
		}
		return dao;
	}
	public void saveStudentsData(Students students) {
		Session openSession = factory.openSession();
		Transaction beginTransaction = openSession.beginTransaction();
		openSession.save(students);
		beginTransaction.commit();
	}
	@SuppressWarnings("unchecked")
	public Students getStudentDataByCode(String code) {
		Session openSession = factory.openSession();
		String hql="from "+Students.class.getName()+" where generatedcode=:code";
		Query<Students> createQuery = openSession.createQuery(hql);
		createQuery.setParameter("code", code);
		return createQuery.uniqueResult();
	}
	@SuppressWarnings("unchecked")
	public Students getStudentDataByName(String firstname, String lastname) {
		Session openSession = factory.openSession();
		String hql="from "+Students.class.getName()+" where firstName=:fnm and lastName=:lnm";
		Query<Students> createQuery = openSession.createQuery(hql);
		createQuery.setParameter("fnm", firstname);
		createQuery.setParameter("lnm", lastname);
		return createQuery.uniqueResult();
	}
	@SuppressWarnings("unchecked")
	public Students getStudentDataByLogin(String username, String password) {
		Session openSession = factory.openSession();
		String hql="from "+Students.class.getName()+" where phoneOrEmail=:unm and password=:pss";
		Query<Students> createQuery = openSession.createQuery(hql);
		createQuery.setParameter("unm", username);
		createQuery.setParameter("pss", password);
		return createQuery.uniqueResult();
	}
	
}
