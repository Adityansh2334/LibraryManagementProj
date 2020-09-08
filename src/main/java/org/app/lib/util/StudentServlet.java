package org.app.lib.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.app.lib.dao.StudentsDao;
import org.app.lib.dto.Students;

public class StudentServlet extends HttpServlet {
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String firstnm=req.getParameter("first_name");
			String lastnm=req.getParameter("last_name");
			String email=req.getParameter("email");
			String bdy=req.getParameter("birthday");
			String password=req.getParameter("password");
			String gender=req.getParameter("gender");
			String library=req.getParameter("library");
			
			Students students=new Students();
			students.setFirstName(firstnm);
			students.setLastName(lastnm);
			students.setPhoneOrEmail(email);
			students.setGender(gender);
			students.setLibraryName(library);
			students.setBirthday(bdy);
			students.setPassword(password);
			
			StudentsDao dao=StudentsDao.getInstance();
			dao.saveStudentsData(students);
			
			RequestDispatcher rd=req.getRequestDispatcher("SignUpConfirmation.jsp");
			rd.forward(req, resp);

		}
}
