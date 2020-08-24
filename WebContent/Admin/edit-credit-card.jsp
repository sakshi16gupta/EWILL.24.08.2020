<%@page import="EWILL.*, java.util.*"%>
<jsp:include page="nav.html"></jsp:include>
<div id="content">
	<div class="container-fluid">
		<hr>
		<div class="row-fluid">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title">
						<span class="icon"> <i class="icon-pencil"></i>
						</span>
						<h5>Edit Credit Card Details</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="getupdate-credit-card.jsp" method="post">


							<%
								int pid = Integer.parseInt(request.getParameter("pid")); 
								CreditCardDao dao = new CreditCardDao(); 
								java.util.ArrayList<CreditCardPojo> data = dao.Edit(pid); 
								for (CreditCardPojo obj : data) { 
							%>


							<div id="form-wizard-1" class="step">


								<input id="cardId" type="hidden" name="cardId"
									value="<%= pid %>" />


								<div class="control-group">
									<label class="control-label">User Id</label>
									<div class="controls">
										<select name="userId" id="userId">
											<option><%= obj.getUserId() %></option>
											<%
												UserDao dao1 = new UserDao();
												ArrayList<UserPojo> data1 = dao1.Fetch();
												for (UserPojo user : data1) {
											%>
											<option><%=user.getUserId()%></option>
											<%
												}
											%>
										</select>
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Card Number</label>
									<div class="controls">
										<input id="cardNo" type="text" name="cardNo"
											value="<%= obj.getCardNo()%>" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Name of the Bank</label>
									<div class="controls">
										<input id="bankName" type="text" name="bankName"
											value="<%= obj.getBankName()%>" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Name on the Card</label>
									<div class="controls">
										<input id="cardName" type="text" name="cardName"
											value="<%= obj.getCardName()%>" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Expiry Date</label>
									<div class="controls">
										<input id="expiryDate" type="text" name="expiryDate"
											value="<%=obj.getExpiryDate()%>" />
									</div>
								</div>
								
								<div class="form-actions">
									<input id="submit" class="btn btn-primary" type="submit"
										value="Submit" />
									<div id="status"></div>
								</div>
								<div id="submitted"></div>

								<% } %>

							</div>
						</form>
					</div>
				</div>
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