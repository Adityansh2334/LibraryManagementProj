<%@page import="org.app.lib.dao.AssociationApp"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.app.lib.dto.Books"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.app.lib.dto.BookCatagory"%>
<%@page import="org.app.lib.dto.Library"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylsheet" href="css/bootstrap.css">
</head>
<body>
	<%
		String url=(String)request.getAttribute("check");
		if(url!=null){
			if(url.equals("login"))url="SignIn.jsp";
			else url="BookLoaned.jsp";
		}
		String catname=request.getParameter("catagory");
		String libname=request.getParameter("sub");
		AssociationApp app=AssociationApp.getInstance();
		List<Books>listbk= app.getBookslistByBookCategory(catname);
		Iterator<Books> itr=listbk.iterator();
	%>
	<%@ include file="Library.jsp" %>
	<h1 align="center" style="color:cornflowerblue"><%= catname %></h1>
        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Sl No.</th>
                <th scope="col">Book Name</th>
                <th scope="col">Author</th>
                <th scope="col">Handle</th>
              </tr>
            </thead>
            <tbody>
              <% 
              int i=1;
              while(itr.hasNext()){
            	  Books bk=itr.next();
              out.println("<tr>"+
                      "<th scope='row'>"+i+"</th>"+
                      "<td>"+bk.getBookName()+"</td>"+
                      "<td>"+bk.getBookAuthor()+"</td>"+
                      "<td><a href='"+url+"'><button type='button' style='height: 37px; width: 70px;' class='btn btn-primary'>ISSUE</button></a> &nbsp;"+
                      "<a href='BookBuy.jsp'><button type='submit'name='buy' value='"+bk.getId()+"' style='height: 37px; width: 70px;' class='btn btn-primary'>Buy</button></a> &nbsp;"+
                      "<a href='BookDetails.jsp'><button type='submit' name='details'value='"+bk.getId()+"' style='height: 37px; width: 70px;' class='btn btn-primary'>Details</button></a></td>"+
                      "</tr>"); 
              i++;
              }
              %>
            </tbody>
          </table>
</body>
</html>