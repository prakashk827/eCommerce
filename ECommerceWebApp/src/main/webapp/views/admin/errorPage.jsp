
<jsp:include page="header.jsp"></jsp:include>
<body class="app sidebar-mini">

	<!-- Navbar-->
	<jsp:include page="navBar.jsp"></jsp:include>
	<!-- Navbar -->
	<!-- Sidebar menu-->
	<jsp:include page="sideBar.jsp"></jsp:include>

	<main class="app-content">
		<div class="page-error tile">
			<h5 style="color:${msg.type}">
				<i class="fa fa-exclamation-circle"></i> ${msg.content}
			</h5>

			<p>
				<a class="btn btn-primary" href="javascript:window.history.back();">Go
					Back</a>
			</p>
		</div>
	</main>


	<jsp:include page="footer.jsp"></jsp:include>