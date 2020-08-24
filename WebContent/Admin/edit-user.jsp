<%@page import="EWILL.*"%>
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
							action="getupdate-user.jsp" method="post">


							<%
								int pid = Integer.parseInt(request.getParameter("pid")); 
								UserDao dao = new UserDao(); 
								java.util.ArrayList<UserPojo> data = dao.Edit(pid); 
								for (UserPojo obj : data) { 
							%>


							<div id="form-wizard-1" class="step">


								<input id="userId" type="hidden" name="userId"
									value="<%= pid %>" />


								<div class="control-group">
									<label class="control-label">First Name</label>
									<div class="controls">
										<input id="firstName" type="text" name="firstName"
											value="<%= obj.getFirstName()%>" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Last Name</label>
									<div class="controls">
										<input id="lastName" type="text" name="lastName"
											value="<%= obj.getLastName()%>" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">E-Mail</label>
									<div class="controls">
										<input id="email" type="email" name="email"
											value="<%= obj.getEmail() %>" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Password</label>
									<div class="controls">
										<input id="password" type="password" name="password"
											value="<%= obj.getPassword()%>" />
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