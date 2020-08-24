<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	DepositsDao dao = new DepositsDao();
	int i = dao.Update(request.getParameter("depositsId"),request.getParameter("userId"),
			request.getParameter("holderName"),request.getParameter("bankName"),request.getParameter("bankAdd"),
			request.getParameter("nominee"),request.getParameter("amount"),request.getParameter("date"));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('data updated');window.location.href='view-deposits.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-deposits.jsp.jsp';</script>");
	}
%>  
</body>
</html>