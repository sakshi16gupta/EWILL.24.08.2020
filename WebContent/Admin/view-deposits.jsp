<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Deposits with Banks / Post Offices</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Deposits Id</td>
							<td>User Id</td>
							<td>Holder Name</td>
							<td>Bank Name</td>
							<td>Bank Address</td>
							<td>Nominee</td>
							<td>Amount</td>
							<td>Date of Maturity</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
					    DepositsDao dao = new DepositsDao(); //dao object
						ArrayList<DepositsPojo> data = dao.Fetch(); // array list of pojo
						for (DepositsPojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getDepositsId()%></td>
							<td><%= obj.getUserId()%></td>
							<td><%= obj.getHolderName()%></td>
							<td><%= obj.getBankName()%></td>
							<td><%= obj.getBankAddress()%></td>
							<td><%= obj.getNominee()%></td>
							<td><%= obj.getAmount()%></td>
							<td><%= obj.getDateOfMaturity()%></td>
							
							<td><a href="edit-deposits.jsp?pid=<%= obj.getDepositsId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-deposits.jsp?pid=<%= obj.getDepositsId()%>"><img
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


