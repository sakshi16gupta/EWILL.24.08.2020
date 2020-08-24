<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		UserDao dao= new UserDao();
		if(dao.Add(request.getParameter("firstName"),request.getParameter("lastName"),
				request.getParameter("email"),request.getParameter("password"))>0)
		{
			out.println("<script type='text/javascript'>alert('User Added');window.location.href='view-user.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('User not Added');window.location.href='add-user.jsp';</script>");	
		}
	%>
</body>
</html>