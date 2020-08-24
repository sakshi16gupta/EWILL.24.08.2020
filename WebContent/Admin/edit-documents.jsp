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
						<h5>Edit Location of Important Documents and Records</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="getupdate-documents.jsp" method="post">


							<%
								int pid = Integer.parseInt(request.getParameter("pid")); 
								DocumentsDao dao = new DocumentsDao(); 
								java.util.ArrayList<DocumentsPojo> data = dao.Edit(pid); 
								for (DocumentsPojo obj : data) { 
							%>


							<div id="form-wizard-1" class="step">


								<input id="documentsId" type="hidden" name="documentsId"
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
									DocumentsTypeDao dao2 = new DocumentsTypeDao();
									String type = dao2.Type(obj.getDocTypeId());
								%>
								<div class="control-group">
									<label class="control-label">Document Type</label>
									<div class="controls">
										<select name="type" id="type">
											<option><%=type%></option>
											<%
												ArrayList<DocumentsTypePojo> data2 = dao2.Fetch();
												for (DocumentsTypePojo obj2 : data2) {
											%>
											<option><%=obj2.getDocType()%></option>
											<%
												}
											%>
										</select>
									</div>
								</div>
								

								<div class="control-group">
									<label class="control-label">Location</label>
									<div class="controls">
										<input id="location" type="text" name="location" value="<%= obj.getLocation()%>"required />
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