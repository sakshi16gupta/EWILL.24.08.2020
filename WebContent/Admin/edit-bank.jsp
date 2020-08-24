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
						<h5>Edit User Details</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="getupdate-bank.jsp" method="post">


							<%
								int pid = Integer.parseInt(request.getParameter("pid")); 
								BankDao dao = new BankDao(); 
								java.util.ArrayList<BankPojo> data = dao.Edit(pid); 
								for (BankPojo obj : data) { 
							%>


							<div id="form-wizard-1" class="step">


								<input id="bankId" type="hidden" name="bankId"
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
									<label class="control-label">Name of First holder</label>
									<div class="controls">
										<input id="firstHolder" type="text" name="firstHolder"
											value="<%= obj.getFirstHolder()%>" />
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
									<label class="control-label">Address of the Bank</label>
									<div class="controls">
										<input id="bankAdd" type="text" name="bankAdd"
											value="<%= obj.getBankAdd()%>" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Bank Account Number </label>
									<div class="controls">
										<input id="accntNo" type="text" name="accntNo"
											value="<%=obj.getAccntNo()%>" />
									</div>
								</div>
								
									
								<div class="control-group">
									<label class="control-label">Joint Holder or Nominee</label>
									<div class="controls">
										<input id="nominee" type="text" name="nominee"
											value="<%= obj.getNominee() %>" />
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