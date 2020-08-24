<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		ContactsDao dao= new ContactsDao();
		if(dao.Add(request.getParameter("contacts"))>0)
		{
			out.println("<script type='text/javascript'>alert('Contacts Added');window.location.href='view-contacts.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('Contacts Added');window.location.href='add-contacts.jsp';</script>");	
		}
	%>
</body>
</html>