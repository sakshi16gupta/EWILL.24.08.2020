<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<% 
	session.setAttribute("username",null);
		session.setAttribute("userId",null);
		response.sendRedirect("../Homepage/index.jsp");
%>
</body>
</html>