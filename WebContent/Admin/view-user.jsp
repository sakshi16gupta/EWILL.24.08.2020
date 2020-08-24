<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>User</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>User Id</td>
							<td>First Name</td>
							<td>Last Name</td>
							<td>Email</td>
							<td>Password</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						UserDao dao = new UserDao(); //dao object
						ArrayList<UserPojo> data = dao.Fetch(); // array list of pojo
						for (UserPojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getUserId()%></td>
							<td><%= obj.getFirstName()%></td>
							<td><%= obj.getLastName()%></td>
							<td><%= obj.getEmail()%></td>
							<td><%= obj.getPassword()%></td>
							<td><a href="edit-user.jsp?pid=<%= obj.getUserId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-user.jsp?pid=<%= obj.getUserId()%>"><img
									src="images/img3.png"></a></td>
						</tr>
						<% } %>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.ui.custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validate.js"></script>
<script src="js/jquery.wizard.js"></script>
<script src="js/matrix.js"></script>
<script src="js/matrix.wizard.js"></script>

</body>
</html>


