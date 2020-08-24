<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	BankDao dao = new BankDao();
	int i = dao.Update(request.getParameter("bankId"),request.getParameter("userId"),
			request.getParameter("firstHolder"),request.getParameter("bankName"),
			request.getParameter("bankAdd"),request.getParameter("accntNo"),request.getParameter("nominee"));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('data updated');window.location.href='view-bank.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-bank.jsp.jsp';</script>");
	}
%>  
</body>
</html>