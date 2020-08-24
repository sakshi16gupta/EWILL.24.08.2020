<%@page import = "EWILL.*" %>
<html>
<body>
<%
	UserDao dao= new UserDao();
	if(dao.Remove(Integer.parseInt(request.getParameter("pid")))>0){
		out.println("<script type='text/javascript'>alert('Record deleted');window.location.href='view-user.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Record not deleted'');window.location.href='view-user.jsp.jsp';</script>");
	}
%>  
</body>
</html>