<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		BankDao dao= new BankDao();
		if(dao.Add(request.getParameter("userId"),request.getParameter("firstHolder"),request.getParameter("bankName"),
				request.getParameter("bankAdd"),request.getParameter("accntNo"),request.getParameter("nominee"))>0)
		{
			out.println("<script type='text/javascript'>alert('User Added');window.location.href='profile.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('User not Added');window.location.href='add-bank.jsp';</script>");	
		}
	%>
</body>
</html>