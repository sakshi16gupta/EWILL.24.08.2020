<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Bank</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Advisors Id</td>
							<td>User Id</td>
							<td>First Holder Name</td>
							<td>Bank Name</td>
							<td>Bank Address</td>
							<td>Account Number</td>
							<td>Nominee</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						BankDao dao = new BankDao(); //dao object
						ArrayList<BankPojo> data = dao.Fetch(); // array list of pojo
						for (BankPojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getBankId()%></td>
							<td><%= obj.getUserId()%></td>
							<td><%= obj.getFirstHolder()%></td>
							<td><%= obj.getBankName()%></td>
							<td><%= obj.getBankAdd()%></td>
							<td><%= obj.getAccntNo()%></td>
							<td><%= obj.getNominee()%></td>
							<td><a href="edit-bank.jsp?pid=<%= obj.getBankId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-bank.jsp?pid=<%= obj.getBankId()%>"><img
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


