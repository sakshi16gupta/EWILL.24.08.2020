<%@page import = "EWILL.*" %>
<html>
<body>
<%
	ContactsDao dao1 = new ContactsDao();
	int contacts = dao1.Contacts(request.getParameter("contacts"));
	EmergencyDao dao = new EmergencyDao();
	int i = dao.Update(request.getParameter("emergencyId"),request.getParameter("userId"),Integer.toString(contacts),
			request.getParameter("name"),request.getParameter("phone"));
	if (i > 0) {
		out.println("<script type='text/javascript'>alert('data updated');window.location.href='view-emergency.jsp';</script>");
	} else {
		out.println(
				"<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-emergency.jsp';</script>");
	}
%>  
</body>
</html>