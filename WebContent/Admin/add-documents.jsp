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
						<h5>Add Location of Important Documents and Records</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="get-documents.jsp" method="post">
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
									<label class="control-label">Document Type</label>
									<div class="controls">
										<select name="type" id="type">
											<option>Select Document Type</option>
											<%
												DocumentsTypeDao dao1 = new DocumentsTypeDao();
												ArrayList<DocumentsTypePojo> data1 = dao1.Fetch();
												for (DocumentsTypePojo obj : data1) {
											%>
											<option><%=obj.getDocType()%></option>
											<%
												}
											%>
										</select>
									</div>
								</div>
								

								<div class="control-group">
									<label class="control-label">Location</label>
									<div class="controls">
										<input id="location" type="text" name="location" required />
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