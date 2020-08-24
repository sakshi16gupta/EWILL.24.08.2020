<%@page import = "EWILL.*" %>
<html>
<body>
<%
	ContactsDao dao= new ContactsDao();
	if(dao.Remove(Integer.parseInt(request.getParameter("pid")))>0){
		out.println("<script type='text/javascript'>alert('Record deleted');window.location.href='view-contacts.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Record not deleted'');window.location.href='view-contacts.jsp.jsp';</script>");
	}
%>  
</body>
</html>