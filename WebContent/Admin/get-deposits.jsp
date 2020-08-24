<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		DepositsDao dao= new DepositsDao();
		if(dao.Add(request.getParameter("userId"),request.getParameter("holderName"),request.getParameter("bankName"),
		request.getParameter("bankAdd"),request.getParameter("nominee"),request.getParameter("amount"),request.getParameter("date"))>0)
		{
			out.println("<script type='text/javascript'>alert('Data Added');window.location.href='view-deposits.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('Data not Added');window.location.href='add-deposits.jsp';</script>");	
		}
	%>
</body>
</html>