<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

							<h3 class="tile-title">${pageTitle.pageHeader}</h3>
							<div class="tile-body">

								<form class="row" method="post" action="/admin/slider/save">
									<input type="hidden" name="id" value="${slider.id}">
									<div class="form-group col-md-6">
										<label class="control-label">Slider Heading </label><input
											name="h1Tag" id="h1Tag" class="form-control" type="text"
											value="${slider.h1Tag}">
									</div>
									<div class="form-group col-md-6">
										<label class="control-label">Slider Paragraph</label><input
											name="paragraphTag" id="paragraphTag"
											value="${slider.paragraphTag}" class="form-control"
											type="text" data-bvalidator="required" />
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">Register Form Title</label> <input
											name="formTitle" id="formTitle" class="form-control"
											type="text" value="${slider.formTitle}">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">Register Form Button
											Title</label> <input name="formBtnTitle" id="formBtnTitle"
											class="form-control" type="text"
											value="${slider.formBtnTitle}">
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">First Button Title</label> <input
											name="firstBtnTitle" id="firstBtnTitle" class="form-control"
											type="text" value="${slider.firstBtnTitle}">
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">URL</label> <input
											name="firstBtnUrl" id="firstBtnUrl" class="form-control"
											type="text" value="${slider.firstBtnUrl}">
									</div>
									<div class="form-group col-md-6">
										<label class="control-label">Second Button Title</label> <input
											name="secondBtnTitle" id="secondBtnTitle"
											class="form-control" type="text"
											value="${slider.secondBtnTitle}">
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">URL</label> <input
											name="secondBtnUrl" id="secondBtnUrl" class="form-control"
											type="text" value="${slider.secondBtnUrl}">
									</div>

									<div class="form-group col-md-6">
										<div class="animated-radio-button">
										<label>Want to show first button ?</label><br>
											<label> <input type="radio" name="firstBtnDisplay"
												${slider.firstBtnDisplay eq 'show'?'checked':''}
												value="show"><span class="label-text">Show</span>
											</label> <label> <input type="radio" name="firstBtnDisplay"
												value="hide" ${slider.firstBtnDisplay eq'hide'?'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>
									
									<div class="form-group col-md-6">
										<div class="animated-radio-button">
										<label>Want to show second button ?</label><br>
											<label> <input type="radio" name="secondBtnDisplay"
												${slider.secondBtnDisplay eq 'show' ? 'checked':''}
												value="show"><span class="label-text">Show</span>
											</label> <label> <input type="radio" name="secondBtnDisplay"
												value="hide" ${slider.secondBtnDisplay eq 'hide' ? 'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">Register Form Short
											Description</label> <input name="formParagraph" id=formParagraph
											class="form-control" type="text"
											value="${slider.formParagraph}">
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