<%@page import = "EWILL.*" %>
<html>
<body>
<%
	DepositsDao dao= new DepositsDao();
	if(dao.Remove(Integer.parseInt(request.getParameter("pid")))>0){
		out.println("<script type='text/javascript'>alert('Record deleted');window.location.href='profile.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Record not deleted'');window.location.href='view-deposits.jsp.jsp';</script>");
	}
%>  
</body>
</html>