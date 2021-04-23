
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
							<!-- <h3 class="tile-title">Subscribe</h3> -->
							<div class="tile-body">
								<form class="row" method="post" action="/admin/social-media/update">
									<div class="form-group col-md-6">
									<input type="hidden" name="id" value="${socialMediaLinks.id}" >
										<label class="control-label">Facebook Link</label> <input
											class="form-control" type="text"
											 name="facbookLink" value="${socialMediaLinks.facbookLink}">
									</div>
									<div class="form-group col-md-6">
										<label class="control-label">Twitter Link</label> <input
											class="form-control" type="text" name="twitterLink" value="${socialMediaLinks.twitterLink}"
											>
									</div>
									
									<div class="form-group col-md-6">
										<label class="control-label">Google+ Link</label> <input
											class="form-control" type="text"
											name="goolePlusLink" value="${socialMediaLinks.goolePlusLink}" >
									</div>
									<div class="form-group col-md-6">
										<label class="control-label">Instagram Link</label> <input
											class="form-control" type="text"
											name="instagramLink" value="${socialMediaLinks.instagramLink}">
									</div>
									
									<div class="form-group col-md-6">
										<label class="control-label">LinkedIn Link</label> <input
											class="form-control" type="text"
											name="linkedinLink" value="${socialMediaLinks.linkedinLink}">
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