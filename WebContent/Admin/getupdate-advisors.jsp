<%@page import = "EWILL.*" %>
<html>
<body>
<%	
	AdvisorsTypeDao dao1 = new AdvisorsTypeDao();
	int typeId = dao1.Type(request.getParameter("type"));

	AdvisorsDao dao = new AdvisorsDao();
	int i = dao.Update(request.getParameter("advisorsId"),request.getParameter("userId"),request.getParameter("name"),
			request.getParameter("address"),request.getParameter("contact"),request.getParameter("email"),Integer.toString(typeId));
	if(i > 0){
		out.println("<script type='text/javascript'>alert('data updated "+typeId+"' );window.location.href='view-advisors.jsp';</script>");
	}
	else{
		out.println("<script type='text/javascript'>alert('Data not updated');window.location.href='getupdate-advisors.jsp';</script>");
	}
%>  
</body>
</html>