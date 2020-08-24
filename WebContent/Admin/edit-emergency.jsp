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
						<h5>Edit Emergency Contacts</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="getupdate-emergency.jsp" method="post">


							<%
								int pid = Integer.parseInt(request.getParameter("pid")); 
								EmergencyDao dao = new EmergencyDao(); 
								java.util.ArrayList<EmergencyPojo> data = dao.Edit(pid); 
								for (EmergencyPojo obj : data) { 
							%>


							<div id="form-wizard-1" class="step">


								<input id="emergencyId" type="hidden" name="emergencyId"
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
								
								<%
									ContactsDao dao2 = new ContactsDao();
									String contacts = dao2.Contacts(obj.getContactsId());
								%>
								<div class="control-group">
									<label class="control-label">Contacts</label>
									<div class="controls">
										<select name="contacts" id="contacts">
											<option><%=contacts%></option>
											<%
												ArrayList<ContactsPojo> data2 = dao2.Fetch();
												for (ContactsPojo obj2 : data2) {
											%>
											<option><%=obj2.getContacts()%></option>
											<%
												}
											%>
										</select>
									</div>
								</div>
								

								<div class="control-group">
									<label class="control-label">Name</label>
									<div class="controls">
										<input id="name" type="text" name="name" value="<%= obj.getName()%>"required />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Phone</label>
									<div class="controls">
										<input id="phone" type="text" name="phone" value="<%= obj.getPhone()%>"required />
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