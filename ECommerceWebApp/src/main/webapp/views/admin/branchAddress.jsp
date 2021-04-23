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
							<h3 class="tile-title"></h3>
							<div class="tile-body">
								<form class="row" method="post"
									action="/admin/branch-address/save" data-bvalidator-validate>

									<div class="form-group col-md-3">
										<label class="control-label">Display As</label> <input
											class="form-control" type="text" name="addressLine1"
											id="addressLine1" value="${branchAddress.displayAs}" data-bvalidator="required" >
									</div>
									<div class="form-group col-md-3">
										<label class="control-label">Address Line 1</label> <input
											class="form-control" type="text" name="addressLine1"
											id="addressLine1" value="${branchAddress.addressLine1}" data-bvalidator="required">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">Address Line 2</label> <input
											class="form-control" type="text" name="addressLine2"
											id="addressLine2" value="${branchAddress.addressLine2}" data-bvalidator="required">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">Address Line 3</label> <input
											class="form-control" type="text" name="addressLine3"
											id="addressLine3" value="${branchAddress.addressLine3}">
									</div>


									<div class="form-group col-md-3">
										<label class="control-label">State</label> <input
											class="form-control" type="text" name="state" id="state"
											value="${branchAddress.state}" data-bvalidator="required">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">City</label> <input
											class="form-control" type="text" name="city" id="city"
											value="${branchAddress.city}" data-bvalidator="required">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">Pincode</label> <input
											class="form-control" type="text" name="pincode" id="pincode"
											value="${branchAddress.pincode}" data-bvalidator="required">
									</div>


									<div class="form-group col-md-3">
										<label class="control-label">Owner Name</label> <input
											class="form-control" type="text" name="name" id="name"
											value="${branchAddress.name}" data-bvalidator="required">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">Mobile</label> <input
											class="form-control" type="text" name="mobile" id="mobile"
											value="${branchAddress.mobile}" data-bvalidator="required">
									</div>

									<div class="form-group col-md-3">
										<label class="control-label">Email</label> <input
											class="form-control" type="text" name="email" id="email"
											value="${branchAddress.email}" data-bvalidator="required">
									</div>


									<div class="form-group col-md-4 align-self-end">
										<button class="btn btn-primary" type="submit">
											<i class="fa fa-fw fa-lg fa-check-circle"></i>Save
										</button>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>


		<span><strong>${showWarnMsg}</strong></span>
		<c:if test="${fn:length(branchAddressList) > 0}">
			<div class="row">
				<div class="col-md-12">
					<div class="tile">
						<h2>Showing all instruments</h2>
						<div class="tile-body">
							<div class="table-responsive">
								<table class="table table-hover table-bordered" id="sampleTable">
									<thead>
										<tr>

											<th>Address Line 1</th>
											<th>Address Line 2</th>
											<th>City</th>
											<th>Delete</th>

										</tr>
									</thead>
									<tbody>

										<c:forEach items="${branchAddressList}" var="val">
											<tr>
												<td>${val.addressLine1}</td>
												<td>${val.addressLine2}</td>
												<td>${val.city}</td>
												<td><a
													href="/admin/branch-address/delete/${val.id}">
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
		</c:if>

	</main>

	<jsp:include page="footer.jsp"></jsp:include>