<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		DocumentsTypeDao dao= new DocumentsTypeDao();
		if(dao.Add(request.getParameter("type"))>0)
		{
			out.println("<script type='text/javascript'>alert('Advisors Type Added');window.location.href='view-documents-type.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('Advisors Type Added');window.location.href='add-documents-type.jsp';</script>");	
		}
	%>
</body>
</html>