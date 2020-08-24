<%@page import="java.util.* , EWILL.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div id="content-header">
		<div class="widget-box">
			<div class="widget-title">
				<span class="icon"> <i class="icon-th"></i>
				</span>
				<h5>Credit Card Details</h5>
			</div>
			<div class="widget-content nopadding">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<td>Card Id</td>
							<td>User Id</td>
							<td>Card Number</td>
							<td>Bank Name</td>
							<td>Name on the Card</td>
							<td>Edit</td>
							<td>Delete</td>
						</tr>
					</thead>
					<%
						CreditCardDao dao = new CreditCardDao(); //dao object
						ArrayList<CreditCardPojo> data = dao.Fetch(); // array list of pojo
						for (CreditCardPojo obj : data) { // pojo object
					%>
					<tbody>
						<tr class="odd gradeX">
							<td><%= obj.getCardId()%></td>
							<td><%= obj.getUserId()%></td>
							<td><%= obj.getCardNo()%></td>
							<td><%= obj.getBankName()%></td>
							<td><%= obj.getCardName()%></td>
							<td><a href="edit-credit-card.jsp?pid=<%= obj.getCardId()%>"><img
									src="images/img2.png"></a></td>
							<td><a
								href="delete-credit-card.jsp?pid=<%= obj.getCardId()%>"><img
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


