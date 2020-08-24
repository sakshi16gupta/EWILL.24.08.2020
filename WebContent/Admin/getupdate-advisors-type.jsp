<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	AdvisorsTypeDao dao = new AdvisorsTypeDao();
	int i = dao.Update(request.getParameter("typeId"),request.getParameter("type"));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('data updated');window.location.href='view-advisors-type.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-advisors-type.jsp';</script>");
	}
%>  
</body>
</html>