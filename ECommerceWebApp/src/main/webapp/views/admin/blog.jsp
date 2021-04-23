
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
								<form data-bvalidator-option-single-error="true"
									data-bvalidator-validate class="row" method="POST"
									action="/admin/blog/save">
									<div class="form-group col-md-6">
										<label class="control-label">Post Title</label> <input
											class="form-control" type="text" name="title"
											data-bvalidator="required">
									</div>

									<div class="form-group col-md-4"></div>

									<div class="form-group col-md-8">
										<label class="control-label">Post sub title</label>
										<textarea rows="8" cols="5" class="form-control"
											name="subTitle" data-bvalidator="required"></textarea>
									</div>

									<div class="form-group col-md-12">
										<label class="control-label">Post details</label>
										<textarea id="editor1" rows="8" cols="50" class="form-control"
											name="blogDecsription" data-bvalidator="required"></textarea>
									</div>

									<div class="form-group col-md-4">
										<label class="control-label">Save as</label> <select
											class="form-control saveAs" name="saveAs">

											<option value="Draft">Draft</option>
											<option value="Publish">Publish</option>
										</select>
									</div>

									<div class="form-group col-md-4 align-self-end">
										<button class="btn btn-primary saveBtn" type="submit">
											<i class="fa fa-fw fa-lg fa-check-circle"></i>Draft
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

	<script>
		CKEDITOR.replace('editor1');

		$(document).ready(
				function() {
					$(".saveAs").change(
							function() {
								$(".saveBtn").html(
										'<i class="fa fa-fw fa-lg fa-check-circle"></i>'
												+ $(this).val());
							});
				});
	</script>