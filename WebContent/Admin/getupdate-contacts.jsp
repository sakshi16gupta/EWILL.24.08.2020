<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	ContactsDao dao = new ContactsDao();
	int i = dao.Update(request.getParameter("contactsId"),request.getParameter("contacts"));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('contacts updated');window.location.href='view-contacts.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('contacts not updated');window.location.href='getupdate-contacts.jsp';</script>");
	}
%>  
</body>
</html>