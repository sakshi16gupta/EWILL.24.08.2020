<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		ContactsDao dao1 = new ContactsDao();
		int contactsId = dao1.Contacts(request.getParameter("contacts"));
		EmergencyDao dao= new EmergencyDao();
		if(dao.Add(request.getParameter("userId"),Integer.toString(contactsId),request.getParameter("name"),
				request.getParameter("phone"))>0)
		{
			out.println("<script type='text/javascript'>alert('Data Added');window.location.href='view-emergency.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('Data not Added');window.location.href='add-emergency.jsp';</script>");	
		}
	%>
</body>
</html>