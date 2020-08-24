<%@ page import = "java.util.* ,EWILL.* " %>
	<% 
		UserDao dao = new UserDao();
		Boolean data = dao.checkUserPojo(request.getParameter("email"));
		if(data == true){
			out.println("1");
		}
		else
		{
			out.println("0");
				
		}
	%>