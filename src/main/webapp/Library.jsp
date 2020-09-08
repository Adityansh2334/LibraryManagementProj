<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>Books</title>
</head>
<body>
		<%
			
		%>
    <div class="container">
        <h3 align="center">Books Available In <% String namelib=(String)request.getParameter("sub");
        out.println(namelib); %></h3>
        <form action="LibraryInfoDescribe.jsp" method="Post">
        <input type="hidden" name="sub" value="<%= namelib %>">
        <select class="form-control" name="catagory">
            <option selected>Select One Category..</option>
            <option value="Fantasy">Fantasy</option>
            <option value="Adventure">Adventure</option>
            <option value="Romance">Romance</option>
            <option value="Contemporary">Contemporary</option>
            <option value="Dystopian">Dystopian</option>
            <option value="Mystery">Mystery</option>
            <option value="Horror">Horror</option>
            <option value="Thriller">Thriller</option>
            <option value="Historical fiction">Historical fiction</option>
            <option value="Science Fiction">Science Fiction</option>
            <option value="Art">Art</option>
            <option value="Cooking">Cooking</option>
            <option value="Development">Development</option>
            <option value="History">History</option>
            <option value="Travel">Travel</option>
            <option value="Technology">Technology</option>
            <option value="Space">Space</option>
            <option value="Health">Health</option>
          </select>
          <br>
          <div align="center">
          <button  style="width: 100px;" type="submit" class="btn btn-success">OK</button> &nbsp; <a href="<%= "home.html"%>"><button  style="width: 100px;" type="button" class="btn btn-success">Home</button></a>
          </div>
        </form>
    </div>
</body>
</html>