
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
								<form class="row" method="POST" action="/admin/subscribe/update"  >
								<input type="hidden" name="id" value="${subscribe.id}">
									<div class="form-group col-md-6">
										<label class="control-label">First Title </label> <input
											class="form-control" type="text"
											name="firstTitle" value="${subscribe.firstTitle}">
									</div>
									<div class="form-group col-md-6">
										<label class="control-label">Seond Title</label> <input
											class="form-control" type="text"
											name ="secondTitle" value="${subscribe.secondTitle}">
									</div>
									
									<div class="form-group col-md-6">
										<label class="control-label">Button Title</label> <input
											class="form-control" type="text"
											name="buttonTitle" value="${subscribe.buttonTitle}">
									</div>
									
									<div class="form-group col-md-4 align-self-end">
										<button class="btn btn-primary" type="submit">
											<i class="fa fa-fw fa-lg fa-refresh"></i>Update
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