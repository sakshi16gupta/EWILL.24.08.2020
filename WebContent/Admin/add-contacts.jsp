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
						<h5>Add Contacts </h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="get-contacts.jsp" method="post">
							<div id="form-wizard-1" class="step">

								<div class="control-group">
									<label class="control-label">Contacts </label>
									<div class="controls">
										<input id="contacts" type="text" name="contacts" required />
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