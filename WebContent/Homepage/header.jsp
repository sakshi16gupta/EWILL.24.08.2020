<!doctype html>
<html lang="en">
<head>
<title>E-WILL</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/custom-bs.css">
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="fonts/line-icons/style.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border text-primary" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>


	<div class="site-wrap">

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close mt-3">
					<span class="icon-close2 js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>
		<!-- .site-mobile-menu -->


		<!-- NAVBAR -->
		<header class="site-navbar mt-3" id="top">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="site-logo col-6">
						<a href="index.jsp">E-WILL</a>
					</div>
					<nav class="mx-auto site-navigation">
						<ul class="site-menu js-clone-nav d-none d-lg-block">

							<%if (session.getAttribute("userId") != null){ %>
							<li><a href="..\Homepage\index.jsp" class="nav-link active">Home</a></li>
							<li><a href="..\Homepage\about.jsp">How it Works</a></li>
							<li><a href="..\Homepage\services.jsp">Services</a></li>
							<li><a href="..\Homepage\contact.jsp">Contact</a></li>


							<li class="has-children"><a
								href="..\add\profile.jsp"><%=session.getAttribute("username").toString()%></a>
								<ul class="dropdown">
									<li><a
										href="..\add\profile.jsp">Update
											your Profile</a></li>
									<li><a href="../Homepage/logout.jsp">Logout</a></li>
								</ul></li>
							</ul>
					</nav>
					<div class="col-6 site-burger-menu d-block d-lg-none text-right">
						<a href="#" class="site-menu-toggle js-menu-toggle"><span
							class="icon-menu h3"><%= request.getParameter("username")%></span></a>
					</div>
							<%
                            	} else {
                            %>
							<li><a href="..\Homepage\index.jsp" class="nav-link active">Home</a></li>
							<li><a href="..\Homepage\about.jsp">How it Works</a></li>
							<li><a href="..\Homepage\services.jsp">Services</a></li>
							<li><a href="..\Homepage\contact.jsp">Contact</a></li>
							<li><a href="..\login\index.html">Login</a></li>
							</ul>
					</nav>
							<% } %>

						

					

				</div>
			</div>
		</header>