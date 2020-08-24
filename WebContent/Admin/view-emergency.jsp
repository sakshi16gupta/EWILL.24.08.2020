<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Emergency Contacts</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Emergency Id</td>
							<td>User Id</td>
							<td>Contacts Id</td>
							<td>Name</td>
							<td>Phone</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						EmergencyDao dao = new EmergencyDao(); //dao object
						ArrayList<EmergencyPojo> data = dao.Fetch(); // array list of pojo
						for (EmergencyPojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getEmergencyId()%></td>
							<td><%= obj.getUserId()%></td>
							<%
								ContactsDao dao2 = new ContactsDao();
							%>
							<td><%= dao2.Contacts(obj.getContactsId())%></td>
							<td><%= obj.getName()%></td>
							<td><%= obj.getPhone()%></td>
							
							<td><a href="edit-emergency.jsp?pid=<%= obj.getEmergencyId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-emergency.jsp?pid=<%= obj.getEmergencyId()%>"><img
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


