<%@page import="EWILL.* , java.util.*"%>
<jsp:include page="..\Homepage\header.jsp"></jsp:include>
<!-- HOME -->
<section class="home-section section-hero overlay slanted"
	id="home-section">

	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-md-8 text-center">
				<h1>Bank Details</h1>

			</div>
		</div>
	</div>

	<!-- VIDEO -->
	<div class="video-container">
		<video autoplay loop="true">
			<source type="video/mp4" src="videos/video.mp4">
		</video>
	</div>

	<a href="#next-section" class="smoothscroll scroll-button"> <span
		class=" icon-keyboard_arrow_down"></span>
	</a>

</section>

<section class="site-section block__18514" id="next-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 mr-auto">
				<div class="border p-4">
					<ul class="list-unstyled block__47528 mb-0">
						<li><a
							href="profile.jsp">Your
								Profile</a></li>
						<li><a
							href="add-emergency.jsp">Emergency
								Contact Details </a></li>
						<li><a
							href="add-insurance.jsp">Insurance
								Details</a></li>
						<li><span class="active">Bank Details</span></li>
						<li><a
							href="add-deposits.jsp">Deposits
								with banks / post offices</a></li>
						<li><a
							href="add-documents.jsp">Location
								of important Documents and records</a></li>
						<li><a
							href="add-advisors.jsp">Contract
								Details of Advisors</a></li>
						<li><a
							href="add-credit-card.jsp">Credit
								Card Details</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-8">
				<form action="get-bank.jsp" class="">

					<input type="hidden" name="userId" id="userId"
						value="<%=session.getAttribute("userId")%>">

					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="fname">Name of the first
								holder</label> <input id="firstHolder" type="text" name="firstHolder"
								class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="lname">Name of the Bank</label> <input
								id="bankName" type="text" name="bankName" class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="fname">Address of the Bank</label>
							<input id="bankAdd" type="text" name="bankAdd"
								class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="lname">Bank Account Number
							</label> <input id="accntNo" type="text" name="accntNo"
								class="form-control">
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-12">
							<label class="text-black" for="lname">Joint Holder or
								Nominee </label> <input id="nominee" type="text" name="nominee"
								class="form-control">
						</div>
					</div>


					<div class="row form-group">
						<div class="col-md-12">
							<input type="submit" value="Submit"
								class="btn btn-primary btn-md text-white">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<jsp:include page="..\Homepage\footer.html"></jsp:include>