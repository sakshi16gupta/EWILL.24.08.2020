<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		InsuranceDao dao= new InsuranceDao();
		if(dao.Add(request.getParameter("userId"),request.getParameter("name"),request.getParameter("type"),
				request.getParameter("provider"),request.getParameter("policyNo"),request.getParameter("amount"),
				request.getParameter("date"),request.getParameter("sum"))>0)
		{
			out.println("<script type='text/javascript'>alert('Data Added');window.location.href='profile.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('Data not Added');window.location.href='add-insurance.jsp';</script>");	
		}
	%>
</body>
</html>