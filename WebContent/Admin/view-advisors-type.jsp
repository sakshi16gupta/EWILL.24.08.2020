<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Advisors Type</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Advisors Type Id</td>
							<td>Advisors Type</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						AdvisorsTypeDao dao = new AdvisorsTypeDao(); //dao object
						ArrayList<AdvisorsTypePojo> data = dao.Fetch(); // array list of pojo
						for (AdvisorsTypePojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getAdvisorTypeId()%></td>
							<td><%= obj.getAdvisorType()%></td>
							<td><a href="edit-advisors-type.jsp?pid=<%= obj.getAdvisorTypeId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-advisors-type.jsp?pid=<%= obj.getAdvisorTypeId()%>"><img
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


