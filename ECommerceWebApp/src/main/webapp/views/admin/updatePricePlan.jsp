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

								<form class="row" method="post" action="/admin/pricePlan/save">
									<input type="hidden" name="id" value="${pricePlan.id}">



									<div class="form-group col-md-6">
										<label class="control-label">Plan Name </label><input
											name="name" id="name" class="form-control" type="text"
											value="${pricePlan.name}">
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">Display <i class="fa fa-info-circle" aria-hidden="true" data-toggle="tooltip" title="To dispay in front-end click on show radio button"></i>
										<br>
										<c:if test="${pricePlan.display == 'show'}">
											<label class="control-label">Show </label>
											<input type="radio" checked="checked" name="display"
												id="show" value="show" />
											<label class="control-label">Hide </label>
											<input type="radio" name="display" id="hide" value="hide" />
										</c:if>

										<c:if test="${pricePlan.display == 'hide'}">
											<label class="control-label">Show </label>
											<input type="radio" name="display" id="show" value="show" />
											<label class="control-label">Hide </label>
											<input type="radio" checked="checked" name="display"
												id="hide" value="hide" />
										</c:if>

									</div>

									<div class="form-group col-md-6">
										<label class="control-label">Plan Price</label><input
											name="price" id="price" value="${pricePlan.price}"
											class="form-control" type="text" data-bvalidator="required" />
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">Plan Detail</label> <input
											name="detail" id="detail" class="form-control" type="text"
											value="${pricePlan.detail}">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">Plan Rating Title</label> <input
											name="rating" id="rating" class="form-control" type="text"
											value="${pricePlan.rating}">
									</div>

									<div class="form-group col-md-4">
										<label class="control-label">Button Title</label> <input
											name="btnTitle" id="btnTitle" class="form-control"
											type="text" value="${pricePlan.btnTitle}">
									</div>


									<div class="form-group col-md-4 align-self-end">
										<button class="btn btn-primary" type="submit">
											<i class="fa fa-fw fa-lg fa-refresh"></i>Update
										</button>

										<input type="reset" id="reset" value="Reset"
											class="btn btn-danger">
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
		$(document).ready(function() {

			$('#reset').click(function() {
				$('#reset')[0].reset();
				
			});

			
		});


		
		</script>
	</script>