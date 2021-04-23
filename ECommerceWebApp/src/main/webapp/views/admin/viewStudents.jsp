<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

							<!-- <h3 class="tile-title">Filter By</h3> -->

							<div class="tile-body">

								<form class="row" method="post" action="/admin/view-students"
									data-bvalidator-validate>

									<div class="form-group col-md-3">
										<label class="control-label">Filter by</label> <select
											data-bvalidator="required" class="form-control"
											name="filterBy" id="filterBy">
											<option value="">Please Select</option>
											<option value="name">Name</option>
											<option value="mobile">Mobile</option>
											<option value="email">Email</option>
										</select>
									</div>


									<div class="form-group col-md-3">
										<label class="control-label">Enter Value</label> <input
											class="form-control" type="text" name="filterValue"
											data-bvalidator="required">
									</div>


									<%-- <div class="form-group col-md-3">
										<label class="control-label">Select drop down </label> <select
											class="form-control" name="instrument" id="instrument">
											<option value="">Please Select</option>

											<c:forEach items="${instrumentsList}" var="val">
												<option value="${val.instrumentName}">
													${val.instrumentName}</option>


											</c:forEach>


										</select>
									</div> --%>


									<div class="form-group col-md-2 align-self-end">
										<button class="btn btn-primary" type="submit" name="search"
											value="search">
											<i class="fa fa-fw fa-lg fa-search"></i>Search
										</button>
									</div>

									<div class="form-group col-md-2 align-self-end">

										<a href="/admin/view-students">
											<button class="btn btn-sm btn-success">Show All</button>
										</a>
									</div>

									<div style="color: red" class="form-group col-md-3">
										${msg}</div>

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
					<h3>Showing all ${pageTitle.pageHeader}</h3>

					<div class="tile-body">
						<div class="table-responsive">
							<table class="table table-hover table-bordered" id="sampleTable">
								<thead>
									<tr>
										<th>Student Id</th>
										<th>Admission Date</th>
										<th>Nmae</th>
										<th>Email</th>
										<th>Mobile</th>
										<th>Delete</th>

									</tr>
								</thead>
								<tbody>

									<c:forEach items="${studentList}" var="val">
										<tr>
											<td>${val.id}</td>
											<td><fmt:formatDate value="${val.date}"
													pattern="dd-MM-yyyy" /></td>
											<td>${val.name}</td>
											<td>${val.email}</td>
											<td>${val.mobile}</td>
											<td><a href="/admin/delete-student/${val.id}">
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

	<script type="text/javascript">
		$(document).ready(function() {
			$('form').bValidator();
		});
	</script>