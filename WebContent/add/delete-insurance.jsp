<%@page import = "EWILL.*" %>
<html>
<body>
<%
	InsuranceDao dao= new InsuranceDao();
	if(dao.Remove(Integer.parseInt(request.getParameter("pid")))>0){
		out.println("<script type='text/javascript'>alert('Record deleted');window.location.href='profile.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Record not deleted'');window.location.href='view-insurance.jsp.jsp';</script>");
	}
%>  
</body>
</html>