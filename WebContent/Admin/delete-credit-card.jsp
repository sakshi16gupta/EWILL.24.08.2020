<%@page import = "EWILL.*" %>
<html>
<body>
<%
	CreditCardDao dao= new CreditCardDao();
	if(dao.Remove(Integer.parseInt(request.getParameter("pid")))>0){
		out.println("<script type='text/javascript'>alert('Record deleted');window.location.href='view-credit-card.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Record not deleted'');window.location.href='view-credit-card.jsp';</script>");
	}
%>  
</body>
</html>