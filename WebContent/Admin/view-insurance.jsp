<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Insurance Details</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Insurance Id</td>
							<td>User Id</td>
							<td>Name of the Insured</td>
							<td>Insurance Type</td>
							<td>Insurance Provider</td>
							<td>Policy Number</td>
							<td>Premium Amount</td>
							<td>Due Date</td>
							<td>Sum Assured</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						InsuranceDao dao = new InsuranceDao(); //dao object
						ArrayList<InsurancePojo> data = dao.Fetch(); // array list of pojo
						for (InsurancePojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getInsuranceId()%></td>
							<td><%= obj.getUserId()%></td>
							<td><%= obj.getName()%></td>
							<td><%= obj.getType()%></td>
							<td><%= obj.getProvider()%></td>
							<td><%= obj.getPolicyNo()%></td>
							<td><%= obj.getPremiumAmount()%></td>
							<td><%= obj.getDueDate() %></td>
							<td><%= obj.getSumAssured() %></td>
							
							<td><a href="edit-insurance.jsp?pid=<%= obj.getInsuranceId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-insurance.jsp?pid=<%= obj.getInsuranceId()%>"><img
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


