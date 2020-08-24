<%@page import = "EWILL.*" %>
<html>
<body>
<%
	AdvisorsDao dao= new AdvisorsDao();
	if(dao.Remove(Integer.parseInt(request.getParameter("pid")))>0){
		out.println("<script type='text/javascript'>alert('Record deleted');window.location.href='profile.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Record not deleted'');window.location.href='view-advisors.jsp.jsp';</script>");
	}
%>  
</body>
</html>