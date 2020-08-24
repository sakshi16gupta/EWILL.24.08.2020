<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	DocumentsTypeDao dao = new DocumentsTypeDao();
	int i = dao.Update(request.getParameter("typeId"),request.getParameter("type"));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('data updated');window.location.href='view-documents-type.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-documents-type.jsp';</script>");
	}
%>  
</body>
</html>