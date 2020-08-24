<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	InsuranceDao dao= new InsuranceDao();
	int i = dao.Update(request.getParameter("insuranceId"),request.getParameter("userId"),request.getParameter("name"),
			request.getParameter("type"),request.getParameter("provider"),request.getParameter("policyNo"),
			request.getParameter("amount"),request.getParameter("date"),request.getParameter("sum"));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('data updated');window.location.href='view-insurance.jsp';</script>");
	}
	else{
	out.println("<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-insurance.jsp.jsp';</script>");
	}
%>  
</body>
</html>