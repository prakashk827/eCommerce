
<jsp:include page="header.jsp"></jsp:include>
<body class="app sidebar-mini">

	<!-- Navbar-->
	<jsp:include page="navBar.jsp"></jsp:include>
	<!-- Navbar -->
	<!-- Sidebar menu-->
	<jsp:include page="sideBar.jsp"></jsp:include>
	<main class="app-content">
		<jsp:include page="pageTitle.jsp"></jsp:include>

		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="row">
						<div class="clearix"></div>
						<div class="col-md-12">
							<h3 class="tile-title">Subscribe</h3>
							<div class="tile-body">
								<form class="row">
									<div class="form-group col-md-3">
										<label class="control-label">Name</label> <input
											class="form-control" type="text"
											placeholder="Enter your name">
									</div>
									<div class="form-group col-md-3">
										<label class="control-label">Email</label> <input
											class="form-control" type="text"
											placeholder="Enter your email">
									</div>
									<div class="form-group col-md-4 align-self-end">
										<button class="btn btn-primary" type="button">
											<i class="fa fa-fw fa-lg fa-check-circle"></i>Subscribe
										</button>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>


	</main>

	<jsp:include page="footer.jsp"></jsp:include>