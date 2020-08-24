<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		DocumentsTypeDao dao1 = new DocumentsTypeDao();
		int typeId = dao1.Type(request.getParameter("type"));
		DocumentsDao dao= new DocumentsDao();
		if(dao.Add(request.getParameter("userId"),Integer.toString(typeId),request.getParameter("location"))>0)
		{
			out.println("<script type='text/javascript'>alert('Data Added');window.location.href='profile.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('Data not Added');window.location.href='add-documents.jsp';</script>");	
		}
	%>
</body>
</html>