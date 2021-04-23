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

								<form class="row" method="post" action="/admin/save-instruments" data-bvalidator-validate>
									<div class="form-group col-md-3">
										<label class="control-label">Instrument Name</label> <input
											name="instrumentName" id="instrumentName"
											value="${instruments.instrumentName}" class="form-control"
											type="text" data-bvalidator="required"/>
									</div>
									
									<div class="form-group col-md-4 align-self-end">
										<button class="btn btn-primary" type="submit">
											<i class="fa fa-fw fa-lg fa-plus"></i>Add
										</button>
									</div>
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
				<h2>Showing all instruments</h2>
					<div class="tile-body">
						<div class="table-responsive">
							<table class="table table-hover table-bordered" id="sampleTable">
								<thead>
									<tr>
										
										<th>Instrument Name</th>
										<th>Delete</th>

									</tr>
								</thead>
								<tbody>
							
									<c:forEach  items="${instrumentsList}" var="val">
										<tr>
											
											<td>${val.instrumentName}</td>
											<td>
											<a href="/admin/delete-instruments/${val.id}">
											<button class="btn btn-danger btn-sm">Delete</button>
											</a>
											</td>
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
    $(document).ready(function () {
        $('form').bValidator();
    });
</script>