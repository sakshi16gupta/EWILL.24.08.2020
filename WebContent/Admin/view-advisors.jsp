<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Advisors</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Advisors Id</td>
							<td>User Id</td>
							<td>Name</td>
							<td>Address</td>
							<td>Contact</td>
							<td>Email</td>
							<td>Advisors Type</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						AdvisorsDao dao = new AdvisorsDao(); //dao object
						ArrayList<AdvisorsPojo> data = dao.Fetch(); // array list of pojo			
						for (AdvisorsPojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getAdvisorsId()%></td>
							<td><%= obj.getUserId()%></td>
							<td><%= obj.getName()%></td>
							<td><%= obj.getAddress()%></td>
							<td><%= obj.getContact()%></td>
							<td><%=obj.getEmail()%></td>
							<%
								AdvisorsTypeDao dao2 = new AdvisorsTypeDao();
							%>
							<td><%= dao2.Type(obj.getAdvisorsType()) %></td>
							<td><a href="edit-advisors.jsp?pid=<%= obj.getAdvisorsId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-advisors.jsp?pid=<%= obj.getAdvisorsId()%>"><img
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


