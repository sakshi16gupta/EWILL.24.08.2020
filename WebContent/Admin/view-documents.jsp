<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Location of Important Documents and Records</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Documents Id</td>
							<td>User Id</td>
							<td>Document Type</td>
							<td>Location</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						DocumentsDao dao = new DocumentsDao(); //dao object
						ArrayList<DocumentsPojo> data = dao.Fetch(); // array list of pojo
						for (DocumentsPojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getDocumentsId()%></td>
							<td><%= obj.getUserId()%></td>
							<%
								DocumentsTypeDao dao2 = new DocumentsTypeDao();
							%>
							<td><%= dao2.Type(obj.getDocTypeId())%></td>
							<td><%= obj.getLocation()%></td>
							
							<td><a href="edit-documents.jsp?pid=<%= obj.getDocumentsId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-documents.jsp?pid=<%= obj.getDocumentsId()%>"><img
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


