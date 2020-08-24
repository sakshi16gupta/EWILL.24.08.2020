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
							action="getupdate-advisors.jsp" method="post">


							<%
								int pid = Integer.parseInt(request.getParameter("pid")); 
								AdvisorsDao dao = new AdvisorsDao(); 
								java.util.ArrayList<AdvisorsPojo> data = dao.Edit(pid); 
								for (AdvisorsPojo obj : data) { 
							%>


							<div id="form-wizard-1" class="step">


								<input id="advisorsId" type="hidden" name="advisorsId"
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
									<label class="control-label">Name</label>
									<div class="controls">
										<input id="name" type="text" name="name"
											value="<%= obj.getName()%>" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Address</label>
									<div class="controls">
										<input id="address" type="text" name="address"
											value="<%= obj.getAddress()%>" />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Contact</label>
									<div class="controls">
										<input id="contact" type="text" name="contact"
											value="<%= obj.getContact()%>" />
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">E-Mail</label>
									<div class="controls">
										<input id="email" type="email" name="email"
											value="<%= obj.getEmail() %>" />
									</div>
								</div>
								<%
								AdvisorsTypeDao dao2 = new AdvisorsTypeDao();
								String type = dao2.Type(obj.getAdvisorsType());
								%>
								<div class="control-group">
									<label class="control-label">Advisors Type</label>
									<div class="controls">
										<select id="type" name="type">
											<option><%=type %></option>
											<%
												ArrayList<AdvisorsTypePojo> data2 = dao2.Fetch();
												for (AdvisorsTypePojo obj2 : data2) {
											%>
											<option><%=obj2.getAdvisorType()%></option>
											
											<%
											
												}
											%>
										</select>
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