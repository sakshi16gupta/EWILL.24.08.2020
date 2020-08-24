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
						<h5>Add User</h5>
					</div>
					<div class="widget-content nopadding">
						<form id="form-wizard" class="form-horizontal"
							action="get-user.jsp" method="post">
							<div id="form-wizard-1" class="step">

								<div class="control-group">
									<label class="control-label">First Name</label>
									<div class="controls">
										<input id="firstName" type="text" name="firstName" required />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Last Name</label>
									<div class="controls">
										<input id="lastName" type="text" name="lastName" required />
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">E-Mail</label>
									<div class="controls">
										<input id="email" type="email" name="email" required />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Password</label>
									<div class="controls">
										<input id="password" type="password" name="password" required />
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