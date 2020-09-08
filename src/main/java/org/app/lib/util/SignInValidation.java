package org.app.lib.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.app.lib.dao.AssociationApp;
import org.app.lib.dao.StudentsDao;
import org.app.lib.dto.LibraryOwner;
import org.app.lib.dto.Students;

public class SignInValidation extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String prefer=req.getParameter("prefer");
		String unm=req.getParameter("uname");
		String pass=req.getParameter("pass");
		System.out.println(prefer);
		System.out.println(unm);
		System.out.println(pass);
		switch(prefer) {
		case "Student":
			StudentsDao dao=StudentsDao.getInstance();
			Students studentDataByLogin = dao.getStudentDataByLogin(unm, pass);
			if(studentDataByLogin!=null) {
				String phoneOrEmail = studentDataByLogin.getPhoneOrEmail();
				String password = studentDataByLogin.getPassword();
				System.out.println(phoneOrEmail);
				System.out.println(password);
				if(phoneOrEmail.equals(unm) && password.equals(pass)) {
					req.setAttribute("Name", studentDataByLogin.getFirstName());
					RequestDispatcher rd= req.getRequestDispatcher("Main.jsp");
					rd.forward(req, resp);
				}
			}
			break;
		case "Administrator":
			AssociationApp app=AssociationApp.getInstance();
			
			LibraryOwner adminbyLogin = app.getAdminbyLogin(unm, pass);
			if(adminbyLogin!=null) {
				String uname = adminbyLogin.getUname();
				String password = adminbyLogin.getPassword();
				if(uname.equals(unm) && password.equals(pass)) {
					req.setAttribute("Name", adminbyLogin.getName());
					RequestDispatcher rd= req.getRequestDispatcher("ownerpage.html");
					rd.forward(req, resp);
				}
			}
			break;
		case "Staff":
		}
	}
}
