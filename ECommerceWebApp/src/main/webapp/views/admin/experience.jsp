
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
								<form class="row" id="configform" method="POST" action="/admin/experience/save"> 
								<input type="hidden" name="id" value="${experience.id}">
									<div class="form-group col-md-6">
										<label class="control-label">Title</label> <input
											class="form-control" type="text" name="title"
											value="${experience.title}">
									</div>
									<div class="form-group col-md-6">
										<label class="control-label">Sub Title</label> <input
											class="form-control" type="text" name="subTitle"
											value="${experience.subTitle}">
									</div>
									
									<div class="form-group col-md-12">
										<label class="control-label">Description</label>
									<textarea class="form-control"  rows="10" cols="10" name="description">${experience.description}</textarea>
									
									</div>
									
									<div class="form-group col-md-4 align-self-end">
										<button class="btn btn-primary" type="submit">
											<i class="fa fa-fw fa-lg fa fa-refresh"></i>Update
										</button>
										<button class="btn btn-danger reset">Reset</button>  
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
	