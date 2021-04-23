<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

								<form class="row" method="post" action="/admin/pricePlan/save"
									data-bvalidator-validate>
									<input type="hidden" name="id" value="${pricePlan.id}">
									
									

									<div class="form-group col-md-6">
										<label class="control-label">Title </label><input name="title"
											id="title" class="form-control" type="text"
											data-bvalidator="required" value="${pricePlan.title}">
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">Sub Title</label><input
											name="subTitle" id="subTitle" class="form-control"
											data-bvalidator="required" type="text"
											value="${pricePlan.subTitle}">
									</div>



									<div class="form-group col-md-6">
										<label class="control-label">Plan Name </label><input
											name="name" id="name" class="form-control" type="text"
											value="${pricePlan.name}" data-bvalidator="required">
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">Plan Price</label><input
											name="price" id="price" value="${pricePlan.price}"
											data-bvalidator="required" class="form-control" type="text"
											data-bvalidator="required" />
									</div>

									<div class="form-group col-md-6">
										<label class="control-label">Plan Detail</label> <input
											name="detail" id="detail" class="form-control" type="text"
											data-bvalidator="required" value="${pricePlan.detail}">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">Plan Rating Title</label> <input
											name="rating" id="rating" class="form-control" type="text"
											data-bvalidator="required" value="${pricePlan.rating}">
									</div>

									<div class="form-group col-md-4">
										<label class="control-label">Button Title</label> <input
											name="btnTitle" id="btnTitle" class="form-control"
											data-bvalidator="required" type="text"
											value="${pricePlan.btnTitle}">
									</div>

									<div class="form-group col-md-4">
										<label class="control-label">Button Url</label> <input
											name="btnUrl" id="btnUrl" class="form-control" type="text"
											data-bvalidator="required" value="${pricePlan.btnUrl}">
									</div>
									<!-- Future Use -->
									<%-- <div class="form-group col-md-4">
										<div class="animated-radio-button">
											<label>Want to show button ?</label><br> <label>
												<input type="radio" name="buttonDisplay"
												${pricePlan.buttonDisplay eq 'show' ? 'checked':''}
												value="show"><span class="label-text">Show</span>
											</label> <label> <input type="radio" name="buttonDisplay"
												value="hide"
												${pricePlan.buttonDisplay eq 'hide' ? 'checked':''}><span
												class="label-text">Hide</span>
											</label>
										</div>
									</div> --%>



									<c:if test="${fn:length(pricingPlanList) >= 3}">
										<div class="form-group col-md-4 align-self-end">
											<button disabled class="btn btn-primary" type="submit">
												<i class="fa fa-fw fa-lg fa-floppy-o"></i>Save
											</button>

											<input type="reset" id="reset" value="Reset"
												class="btn btn-danger">
										</div>
									</c:if>

									<c:if test="${fn:length(pricingPlanList) < 3}">
										<div class="form-group col-md-4 align-self-end">
											<button class="btn btn-primary" type="submit">
												<i class="fa fa-fw fa-lg fa-floppy-o"></i>Save
											</button>

											<input type="reset" id="reset" value="Reset"
												class="btn btn-danger">
										</div>

									</c:if>




								</form>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>


		<div class="row">

			<div class="col-md-12">

				<div class="tile">
					<h2>List of pricing plans</h2>
					<div class="tile-body">
						<div class="table-responsive">
							<table class="table table-hover table-bordered" id="sampleTable">
								<thead>
									<tr>
										<th>Sl.No</th>
										<th>Plan Name</th>
										<th>Plan Price</th>
										<th>Update</th>
										<th>Delete</th>


									</tr>
								</thead>
								<tbody>

									<c:forEach items="${pricingPlanList}" var="val">
										<tr>
											<td>1</td>
											<td>${val.name}</td>
											<td>${val.price}</td>
											<td><a href="/admin/pricePlan/update/${val.id}">
													<button class="btn btn-sm btn-warning">Update</button>
											</a></td>
											<td><a href="/admin/pricePlan/delete/${val.id}">
													<button class="btn btn-danger btn-sm">Delete</button>
											</a></td>
										</tr>

									</c:forEach>

								</tbody>
							</table>
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