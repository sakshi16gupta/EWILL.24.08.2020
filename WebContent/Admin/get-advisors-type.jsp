<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		AdvisorsTypeDao dao= new AdvisorsTypeDao();
		if(dao.Add(request.getParameter("type"))>0)
		{
			out.println("<script type='text/javascript'>alert('Advisors Type Added');window.location.href='view-advisors-type.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('Advisors Type Added');window.location.href='add-advisors-type.jsp';</script>");	
		}
	%>
</body>
</html>