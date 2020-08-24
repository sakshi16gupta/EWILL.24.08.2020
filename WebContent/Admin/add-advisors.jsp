<%@page import = "EWILL.* , java.util.*" %>
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
						<h5>Add Advisors</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="get-advisors.jsp" method="post">
							<div id="form-wizard-1" class="step">

								<div class="control-group">
									<label class="control-label">User Id</label>
									<div class="controls">
										<select name="userId" id="userId">
											<option>Select User Id</option>
											<%
												UserDao dao = new UserDao();
												ArrayList<UserPojo> data = dao.Fetch();
												for (UserPojo user : data) {
											%>
											<option><%=user.getUserId()%></option>
											<%
												}
											%>
										</select>
									</div>
								</div>


								<div class="control-group">
									<label class="control-label">Name</label>
									<div class="controls">
										<input id="name" type="text" name="name" required />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Address</label>
									<div class="controls">
										<input id="address" type="text" name="address" required />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Contact</label>
									<div class="controls">
										<input id="contact" type="text" name="contact" required />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">E-Mail</label>
									<div class="controls">
										<input id="email" type="email" name="email" required />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Advisors Type</label>
									<div class="controls">
										<select>
											<option>Select Advisors Type</option>
											<%
												int typeId = 0;
												AdvisorsTypeDao dao1 = new AdvisorsTypeDao();
												ArrayList<AdvisorsTypePojo> data1 = dao1.Fetch();
												for (AdvisorsTypePojo obj : data1) {
													typeId = obj.getAdvisorTypeId();
											%>
											<option><%=obj.getAdvisorType()%></option>
											
											<%
												}
											%>
										</select>
									</div>
								</div>
								<input id="typeId" type="hidden" name="typeId" value=<%= typeId %> />
							</div>
							<div class="form-actions">
								<input id="submit" class="btn btn-primary" type="submit"
									value="Submit" />
								<div id="status"></div>
							</div>
							<div id="submitted"></div>
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