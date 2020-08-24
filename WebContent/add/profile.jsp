<jsp:include page="..\Homepage\header.jsp"></jsp:include>
<%@page import="java.util.* , EWILL.*"%>
<!-- HOME -->
<section class="home-section section-hero overlay slanted"
	id="home-section">

	<div class="container">
		<div class="row align-items-center justify-content-center">
			<div class="col-md-8 text-center">
				<h1>Your Profile</h1>

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
						<li><span class="active">Your Profile</span></li>
						<li><a
							href="add-emergency.jsp">Emergency
								Contact Details </a></li>
						<li><a
							href="add-insurance.jsp">Insurance
								Details</a></li>
						<li><a
							href="add-bank.jsp">Bank
								Details</a></li>
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
				<div class="p-4 mb-3 bg-white">
					<h2 class="section-title mb-3">Emergency Contacts</h2>
					<%
					session.setAttribute("username",session.getAttribute("username").toString());
					session.setAttribute("userId",session.getAttribute("userId").toString());
						EmergencyDao dao1 = new EmergencyDao(); //dao object
						ArrayList<EmergencyPojo> data1 = dao1.FetchByUser(Integer.parseInt(session.getAttribute("userId").toString())); // array list of pojo
						for (EmergencyPojo obj : data1) { // pojo object
							ContactsDao dao2 = new ContactsDao();
					%>
					<p class="mb-0 font-weight-bold">
						Contacts :
						<%=dao2.Contacts(obj.getContactsId())%>
					</p>

					<p class="mb-0 font-weight-bold">
						Name :
						<%=obj.getName()%></p>

					<p class="mb-0 font-weight-bold">
						Phone :
						<%=obj.getPhone()%>
 <a
							href="delete-emergency.jsp?pid=<%=obj.getEmergencyId()%>"><img
							src="images/img3.png"></a>
					</p>
					<hr>
					<%
						}
					%>
				</div>

				<div class="p-4 mb-3 bg-white">
					<h2 class="section-title mb-3">Insurance Details</h2>
					<%
						InsuranceDao dao2 = new InsuranceDao();
						ArrayList<InsurancePojo> data2 = dao2.FetchByUser(Integer.parseInt(session.getAttribute("userId").toString()));
						for (InsurancePojo obj : data2) {
					%>
					<p class="mb-0 font-weight-bold">
						Name :
						<%=obj.getName()%>
					</p>

					<p class="mb-0 font-weight-bold">
						Type :
						<%=obj.getType()%></p>

					<p class="mb-0 font-weight-bold">
						Provider :
						<%=obj.getProvider()%></p>

					<p class="mb-0 font-weight-bold">
						Policy Number :
						<%=obj.getPolicyNo()%></p>

					<p class="mb-0 font-weight-bold">
						Premium Amount :
						<%=obj.getPremiumAmount()%></p>

					<p class="mb-0 font-weight-bold">
						Due Date :
						<%=obj.getDueDate()%></p>

					<p class="mb-0 font-weight-bold">
						Sum Assured :
						<%=obj.getSumAssured()%>


					<a
							href="delete-insurance.jsp?pid=<%=obj.getInsuranceId()%>"><img
							src="images/img3.png"></a>
					</p>
					<hr>
					<%
						}
					%>
				</div>

				<div class="p-4 mb-3 bg-white">
					<h2 class="section-title mb-3">Bank Details</h2>
					<%
						BankDao dao3 = new BankDao();
						ArrayList<BankPojo> data3 = dao3.FetchByUser(Integer.parseInt(session.getAttribute("userId").toString()));
						for (BankPojo obj : data3) {
					%>
					<p class="mb-0 font-weight-bold">
						First Holder :
						<%=obj.getFirstHolder()%>
					</p>

					<p class="mb-0 font-weight-bold">
						Bank Name :
						<%=obj.getBankName()%></p>

					<p class="mb-0 font-weight-bold">
						Bank Address :
						<%=obj.getBankAdd()%></p>

					<p class="mb-0 font-weight-bold">
						Account Number :
						<%=obj.getAccntNo()%></p>

					<p class="mb-0 font-weight-bold">
						Nominee :
						<%=obj.getNominee()%>
						 <a
							href="delete-bank.jsp?pid=<%=obj.getBankId()%>"><img
							src="images/img3.png"></a>
					</p>
					<hr>
					<%
						}
					%>
				</div>

				<div class="p-4 mb-3 bg-white">
					<h2 class="section-title mb-3">Deposits with banks / post
						offices</h2>
					<%
						DepositsDao dao4 = new DepositsDao();
						ArrayList<DepositsPojo> data4 = dao4.FetchByUser(Integer.parseInt(session.getAttribute("userId").toString()));
						for (DepositsPojo obj : data4) {
					%>
					<p class="mb-0 font-weight-bold">
						Holder Name :
						<%=obj.getHolderName()%>
					</p>

					<p class="mb-0 font-weight-bold">
						Bank Name :
						<%=obj.getBankName()%></p>

					<p class="mb-0 font-weight-bold">
						Bank Address :
						<%=obj.getBankAddress()%></p>

					<p class="mb-0 font-weight-bold">
						Nominee :
						<%=obj.getNominee()%></p>

					<p class="mb-0 font-weight-bold">
						Amount :
						<%=obj.getAmount()%></p>
						
					<p class="mb-0 font-weight-bold">
						Date Of Maturity :
						<%=obj.getDateOfMaturity()%>
						 <a
							href="delete-deposits.jsp?pid=<%=obj.getDepositsId()%>"><img
							src="images/img3.png"></a>
					</p>
					<hr>
					<%
						}
					%>
				</div>
				
				<div class="p-4 mb-3 bg-white">
					<h2 class="section-title mb-3">Location of important documents & Records</h2>
					<%
						DocumentsDao dao5 = new DocumentsDao();
						ArrayList<DocumentsPojo> data5 = dao5.FetchByUser(Integer.parseInt(session.getAttribute("userId").toString()));
						for (DocumentsPojo obj : data5) {
							DocumentsTypeDao dao6 = new DocumentsTypeDao();
					%>
					<p class="mb-0 font-weight-bold">
						Documents Type :
						<%=dao6.Type(obj.getDocTypeId())%>
					</p>
					
					<p class="mb-0 font-weight-bold">
						Location :
						<%=obj.getLocation()%>
						 <a
							href="delete-documents.jsp?pid=<%=obj.getDocumentsId()%>"><img
							src="images/img3.png"></a>
					</p>
					<hr>
					<%
						}
					%>
				</div>
					
			<div class="p-4 mb-3 bg-white">
					<h2 class="section-title mb-3">Contact Details of Advisors</h2>
					<%
						AdvisorsDao dao6 = new AdvisorsDao();
						ArrayList<AdvisorsPojo> data6 = dao6.FetchByUser(Integer.parseInt(session.getAttribute("userId").toString()));
						for (AdvisorsPojo obj : data6) {
					%>
					<p class="mb-0 font-weight-bold">
						Name :
						<%=obj.getName()%>
					</p>
					
					<p class="mb-0 font-weight-bold">
						Address:
						<%=obj.getAddress()%>
					</p>
					<p class="mb-0 font-weight-bold">
						Contact :
						<%=obj.getContact()%>
					</p>
					<p class="mb-0 font-weight-bold">
						EMail :
						<%=obj.getEmail()%>
					</p>
					<p class="mb-0 font-weight-bold">
					<%
								AdvisorsTypeDao dao7 = new AdvisorsTypeDao();
							%>
						Advisor Type :
						<%=obj.getAdvisorsType()%>
						<a
							href="delete-advisors.jsp?pid=<%=obj.getAdvisorsId()%>"><img
							src="images/img3.png"></a>
					</p>
					<hr>
					<%
						}
					%>
				</div>
			</div>
		</div>
</section>
<jsp:include page="..\Homepage\footer.html"></jsp:include>