package org.app.lib.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexServlet extends HttpServlet {
		
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String optionRedirect=req.getParameter("hiddendata");
		String data=req.getParameter("sub");
		System.out.println(data);
		if(optionRedirect.equals("login")) {
			req.setAttribute("libname", data);
			req.setAttribute("check", "login");
			RequestDispatcher rd= req.getRequestDispatcher("Library.jsp");
			rd.forward(req, resp);
		}
		else {
			req.setAttribute("libname", data);
			req.setAttribute("check", "main");
			RequestDispatcher rd= req.getRequestDispatcher("MainLibrary.jsp");
			rd.forward(req, resp);
		}
	}
}
