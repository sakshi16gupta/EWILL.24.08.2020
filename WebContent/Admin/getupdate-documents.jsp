<%@page import = "EWILL.*" %>
<html>
<body>
<%
	DocumentsTypeDao dao1 = new DocumentsTypeDao();
	int typeId = dao1.Type(request.getParameter("type"));
	DocumentsDao dao = new DocumentsDao();
	int i = dao.Update(request.getParameter("documentsId"),request.getParameter("userId"),Integer.toString(typeId),
			request.getParameter("location"));
	if (i > 0) {
		out.println(
				"<script type='text/javascript'>alert('data updated');window.location.href='view-documents.jsp';</script>");
	} else {
		out.println(
				"<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-documents.jsp';</script>");
	}
%>  
</body>
</html>