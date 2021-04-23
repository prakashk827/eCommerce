<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
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
									action="/admin/display-sections/update">
									
									<input type="hidden" value="${section.id}" name="id"> 

				
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">1 Slider</label><br> <label>
												<input type="radio" name="section1"
												${section.section1 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section1"
												value="hide" ${section.section1 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">2 About Us</label><br> <label>
												<input type="radio" name="section2"
												${section.section2 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section2"
												value="hide" ${section.section2 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">3 Counter</label><br> <label>
												<input type="radio" name="section3"
												${section.section3 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section3"
												value="hide" ${section.section3 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">4 Testimonials </label><br> <label>
												<input type="radio" name="section4"
												${section.section4 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section4"
												value="hide" ${section.section4 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">5 Experience </label><br> <label>
												<input type="radio" name="section5"
												${section.section5 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section5"
												value="hide" ${section.section5 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">6 Event Schedules </label><br> <label>
												<input type="radio" name="section6"
												${section.section6 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section6"
												value="hide" ${section.section6 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">7 Pricing plans </label><br> <label>
												<input type="radio" name="section7"
												${section.section7 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section7"
												value="hide" ${section.section7 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">8 Blogs </label><br> <label>
												<input type="radio" name="section8"
												${section.section8 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section8"
												value="hide" ${section.section8 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">9 Reach Us </label><br> <label>
												<input type="radio" name="section9"
												${section.section9 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section9"
												value="hide" ${section.section9 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
								
									
									
									<div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label class="label-control">10 Footer </label><br> <label>
												<input type="radio" name="section10"
												${section.section10 eq 'show'?'checked':''} value="show"><span
												class="label-text">Show</span>
											</label> <label> <input type="radio" name="section10"
												value="hide" ${section.section10 eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									
									
									
									
									
									
									
									<div class="form-group col-md-12 align-self-end">
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