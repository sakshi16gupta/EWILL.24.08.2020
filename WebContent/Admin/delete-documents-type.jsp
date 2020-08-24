<%@page import = "EWILL.*" %>
<html>
<body>
<%
	DocumentsTypeDao dao= new DocumentsTypeDao();
	if(dao.Remove(Integer.parseInt(request.getParameter("pid")))>0){
		out.println("<script type='text/javascript'>alert('Record deleted');window.location.href='view-documents-type.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Record not deleted'');window.location.href='view-documents-type.jsp.jsp';</script>");
	}
%>  
</body>
</html>