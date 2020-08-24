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
						<h5>Edit Contacts</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="getupdate-contacts.jsp" method="post">


							<%
								int pid = Integer.parseInt(request.getParameter("pid")); 
								ContactsDao dao = new ContactsDao(); 
								java.util.ArrayList<ContactsPojo> data = dao.Edit(pid); 
								for (ContactsPojo obj : data) { 
							%>


							<div id="form-wizard-1" class="step">


								<input id="contactsId" type="hidden" name="contactsId"
									value="<%= pid %>" />

								<div class="control-group">
									<label class="control-label">Contacts</label>
									<div class="controls">
										<input id="contacts" type="text" name="contacts"
											value="<%= obj.getContacts()%>" />
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