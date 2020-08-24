<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Contacts</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Contacts Id</td>
							<td>Contacts</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						ContactsDao dao = new ContactsDao(); //dao object
						ArrayList<ContactsPojo> data = dao.Fetch(); // array list of pojo
						for (ContactsPojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getContactsId()%></td>
							<td><%= obj.getContacts()%></td>
							<td><a href="edit-contacts.jsp?pid=<%= obj.getContactsId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-contacts.jsp?pid=<%= obj.getContactsId()%>"><img
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


