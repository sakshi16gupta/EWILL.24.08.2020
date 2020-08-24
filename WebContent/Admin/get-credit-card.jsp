<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		CreditCardDao dao= new CreditCardDao();
		if(dao.Add(request.getParameter("userId"),request.getParameter("cardNo"),request.getParameter("bankName"),
				request.getParameter("cardName"),request.getParameter("expiryDate"))>0)
		{
			out.println("<script type='text/javascript'>alert('Data Added');window.location.href='view-credit-card.jsp';</script>");	
		
		}
		else
		{
			out.println("<script type='text/javascript'>alert('Data not Added');window.location.href='add-credit-card.jsp';</script>");	
		}
	%>
</body>
</html>