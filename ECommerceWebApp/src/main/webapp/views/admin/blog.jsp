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
							<!-- <h3 class="tile-title">Subscribe</h3> -->
							<div class="tile-body">
								<form data-bvalidator-option-single-error="true"
									data-bvalidator-validate class="row" method="POST"
									action="/admin/blog/save">
									<div class="form-group col-md-6">
										<label class="control-label">Post Title</label> <input
											class="form-control" type="text" name="title"
											value="${blog.title}" data-bvalidator="required">
									</div>

									<div class="form-group col-md-4"></div>

									<div class="form-group col-md-8">
										<label class="control-label">Post sub title</label>
										<textarea rows="8" cols="5" class="form-control"
											name="subTitle" data-bvalidator="required">${blog.subTitle}</textarea>
									</div>

									<div class="form-group col-md-12">
										<label class="control-label">Post details</label>
										<textarea id="editor1" rows="8" cols="50" class="form-control"
											name="blogDecsription" data-bvalidator="required">${blog.blogDecsription}</textarea>
									</div>

									<div class="form-group col-md-4">
										<label class="control-label">Save as</label> <select
											class="form-control saveAs" name="saveAs">

											<option value="Draft">Draft</option>
											<option value="Publish" ${blog.saveAs eq 'Publish' : 'selected' : } >Publish</option>
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


		<!-- list -->
		<div class="row">

			<div class="col-md-12">

				<div class="tile">
					<h2>Showing all counter</h2>
					<div class="tile-body">
						<div class="table-responsive">
							<table class="table table-hover table-bordered" id="sampleTable">
								<thead>
									<tr>
										<th>Post Title</th>
										<th>Posted Date</th>
										<th>Delete</th>
										<th>Update</th>

									</tr>
								</thead>
								<tbody>

									<c:forEach items="${blogList}" var="val">
										<tr>
											<td>${val.title}</td>
											<td>${val.postedDate}</td>
											<td><a href="/admin/blog/delete/${val.id}">
													<button class="btn btn-danger btn-sm">Delete</button>
											</a></td>
											<td><a href="/admin/blog/update/${val.id}">
													<button type="submit" name="updateBtn" value="update"
														class="btn btn-success btn-sm">Update</button>
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