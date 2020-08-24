<%@page import="EWILL.*"%>
<html>
<body>
	<%
		if (request.getParameter("password") != request.getParameter("password2")) {
			out.println(
					"<script type='text/javascript'>alert('Passwords do not match !! Try again.');window.location.href='index.html';</script>");
		} else {
			UserDao dao = new UserDao();
			if (dao.Add(request.getParameter("firstName"), request.getParameter("lastName"),
					request.getParameter("email1"), request.getParameter("password")) > 0) {
				String name = request.getParameter("firstName") + " " + request.getParameter("lastName");
				out.println(
						"<script type='text/javascript'>alert('Now you can login!');window.location.href='index.html';</script>");

			} else {
				out.println(
						"<script type='text/javascript'>alert('User not Added');window.location.href='index.html';</script>");
			}
		}
	%>
</body>
</html>