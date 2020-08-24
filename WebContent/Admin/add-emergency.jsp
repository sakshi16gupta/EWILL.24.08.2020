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
						<h5>Add Emergency Contacts</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="get-emergency.jsp" method="post">
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
									<label class="control-label">Contacts</label>
									<div class="controls">
										<select name="contacts" id="contacts">
											<option>Select Contacts</option>
											<%
												ContactsDao dao1 = new ContactsDao();
												ArrayList<ContactsPojo> data1 = dao1.Fetch();
												for (ContactsPojo obj : data1) {
											%>
											<option><%=obj.getContacts()%></option>
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
									<label class="control-label">Phone</label>
									<div class="controls">
										<input id="phone" type="text" name="phone" required />
									</div>
								</div>
										
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