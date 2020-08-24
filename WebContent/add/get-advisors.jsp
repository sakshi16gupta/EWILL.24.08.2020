<%@page import = "EWILL.*" %>
<html>
<body>
	<%
		AdvisorsDao dao= new AdvisorsDao();
			if(dao.Add(request.getParameter("userId"),request.getParameter("name"),request.getParameter("address"),
		request.getParameter("contact"),request.getParameter("email"),request.getParameter("typeId"))>0)
			{
			out.println(
					"<script type='text/javascript'>alert('User Added');window.location.href='profile.jsp';</script>");

		} else {
			out.println(
					"<script type='text/javascript'>alert('User not Added');window.location.href='add-advisors.jsp';</script>");
		}
	%>
</body>
</html>