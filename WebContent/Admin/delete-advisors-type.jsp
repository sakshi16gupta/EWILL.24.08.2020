<%@page import = "EWILL.*" %>
<html>
<body>
<%
	AdvisorsTypeDao dao= new AdvisorsTypeDao();
	if(dao.Remove(Integer.parseInt(request.getParameter("pid")))>0){
		out.println("<script type='text/javascript'>alert('Record deleted');window.location.href='view-advisors-type.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Record not deleted'');window.location.href='view-advisors-type.jsp.jsp';</script>");
	}
%>  
</body>
</html>