<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.* , EWILL.* , java.util.*" %>
<!DOCTYPE html>
<html>

<body>
<%	
	UserDao dao = new UserDao();
	String email = request.getParameter("email");
	String pass = request.getParameter("password");
	String name = "";
	int userId = 0;
	
	ArrayList<UserPojo> data = dao.profile(email);
	for (UserPojo obj : data) {
		name = obj.getFirstName() + " " + obj.getLastName();
		userId =obj.getUserId();
	}
	
	if(dao.checkUser(email,pass)>0){
		session.setAttribute("username",name);
		session.setAttribute("userId",userId);
		out.println("<script type='text/javascript'>alert('Welcome Back!! "+name+ "');window.location.href='../Homepage/index.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Invalid Id and Password');window.location.href='login.jsp';</script>");
	}
%>
</body>
</html>