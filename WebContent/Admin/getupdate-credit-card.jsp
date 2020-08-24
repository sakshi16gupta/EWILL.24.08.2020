<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	CreditCardDao dao = new CreditCardDao();
	int i = dao.Update(request.getParameter("cardId"),request.getParameter("userId"),
			request.getParameter("cardNo"),request.getParameter("bankName"),
			request.getParameter("cardName"),request.getParameter("expiryDate"));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('data updated');window.location.href='view-credit-card.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-credit-card.jsp';</script>");
	}
%>  
</body>
</html>