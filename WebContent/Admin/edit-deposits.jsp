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
						<h5>Edit Details of bank deposits</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="getupdate-deposits.jsp" method="post">


							<%
								int pid = Integer.parseInt(request.getParameter("pid")); 
								DepositsDao dao = new DepositsDao(); 
								java.util.ArrayList<DepositsPojo> data = dao.Edit(pid); 
								for (DepositsPojo obj : data) { 
							%>


							<div id="form-wizard-1" class="step">


								<input id="depositsId" type="hidden" name="depositsId"
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
									<label class="control-label">Holder Name</label>
									<div class="controls">
										<input id="holderName" type="text" name="holderName"
											value="<%= obj.getHolderName()%>" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Name of the Bank / Post Office</label>
									<div class="controls">
										<input id="bankName" type="text" name="bankName"
											value="<%= obj.getBankName()%>" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Address of the Bank / Post Office</label>
									<div class="controls">
										<input id="bankAdd" type="text" name="bankAdd"
											value="<%= obj.getBankAddress()%>" />
									</div>
								</div>
									
								<div class="control-group">
									<label class="control-label">Nominee</label>
									<div class="controls">
										<input id="nominee" type="text" name="nominee"
											value="<%= obj.getNominee() %>" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Amount</label>
									<div class="controls">
										<input id="amount" type="text" name="amount"
											value="<%=obj.getAmount()%>" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Date of Maturity </label>
									<div class="controls">
										<input id="date" type="text" name="date"
											value="<%=obj.getDateOfMaturity()%>" />
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