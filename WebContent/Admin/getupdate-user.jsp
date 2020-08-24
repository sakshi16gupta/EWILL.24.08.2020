<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	UserDao dao = new UserDao();
	int i = dao.Update(request.getParameter("userId"),request.getParameter("firstName"),request.getParameter("lastName"),
			request.getParameter("email"),request.getParameter("password"));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('data updated');window.location.href='view-user.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-user.jsp';</script>");
	}
%>  
</body>
</html>