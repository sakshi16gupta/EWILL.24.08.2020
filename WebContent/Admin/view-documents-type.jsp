<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Documents Type</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Documents Type Id</td>
							<td>Documents Type</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						DocumentsTypeDao dao = new DocumentsTypeDao(); //dao object
						ArrayList<DocumentsTypePojo> data = dao.Fetch(); // array list of pojo
						for (DocumentsTypePojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getDocId()%></td>
							<td><%= obj.getDocType()%></td>
							<td><a href="edit-documents-type.jsp?pid=<%= obj.getDocId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-documents-type.jsp?pid=<%= obj.getDocId()%>"><img
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


