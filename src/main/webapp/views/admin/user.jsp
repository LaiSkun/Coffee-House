<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1">
<title>Modern Admin Dashboard</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="/home/css/admin.css">
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>
	<input type="checkbox" id="menu-toggle">
	<div class="sidebar">
		<div class="side-header">
			<h3>
				<span>Modern</span>
			</h3>
		</div>

		<div class="side-content">
			<div class="profile">
				<div class="profile-img bg-img">
					<c:choose>
						<c:when
							test='${loggedInUser.photo != null && !loggedInUser.photo.equals("")}'>
							<img src="/home/upload/${loggedInUser.photo}" alt="mdo"
								width="100" height="100" class="rounded-circle img-fluid">
						</c:when>
						<c:otherwise>
							<img src="https://github.com/mdo.png" alt="mdo" width="100"
								height="100" class="rounded-circle img-fluid">
						</c:otherwise>
					</c:choose>

				</div>
				<h4>${loggedInUser.username }</h4>
				<small>Art Director</small>
			</div>

			<div class="side-menu">
				<ul>

					<li><a href="/admin/user"> <span class="las la-user-alt"></span>
							<small>User</small>
					</a></li>
					<li><a href="/admin/product"> <span
							class="las la-shopping-cart"></span> <small>Product</small>
					</a></li>
					<li><a href=""> <span class="las la-clipboard-list"></span>
							<small>Order</small>
					</a></li>


				</ul>
			</div>
		</div>
	</div>

	<div class="main-content">

		<header>
			<div class="header-content">
				<label for="menu-toggle"> <span class="las la-bars"></span>
				</label>

				<div class="header-menu">
					<label for=""> <span class="las la-search"></span>
					</label>

					<div class="notify-icon">
						<span class="las la-envelope"></span> <span class="notify">4</span>
					</div>

					<div class="notify-icon">
						<span class="las la-bell"></span> <span class="notify">3</span>
					</div>

					<div class="user">
						<div class="bg-img" style="background-image: url(img/1.jpeg)"></div>

						<span class="las la-power-off"></span> <a href="/logout">Logout</a>
					</div>
				</div>
			</div>
		</header>


		<main>

			<div class="page-header">
				<h1>Dashboard</h1>
				<small>Home / Dashboard</small>
			</div>

			<div class="page-content">

				<div class="analytics">

					<div class="card">
						<div class="card-head">
							<h2>107,200</h2>
							<span class="las la-user-friends"></span>
						</div>
						<div class="card-progress">
							<small>User activity this month</small>
							<div class="card-indicator">
								<div class="indicator one" style="width: 60%"></div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="card-head">
							<h2>340,230</h2>
							<span class="las la-eye"></span>
						</div>
						<div class="card-progress">
							<small>Page views</small>
							<div class="card-indicator">
								<div class="indicator two" style="width: 80%"></div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="card-head">
							<h2>$653,200</h2>
							<span class="las la-shopping-cart"></span>
						</div>
						<div class="card-progress">
							<small>Monthly revenue growth</small>
							<div class="card-indicator">
								<div class="indicator three" style="width: 65%"></div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="card-head">
							<h2>47,500</h2>
							<span class="las la-envelope"></span>
						</div>
						<div class="card-progress">
							<small>New E-mails received</small>
							<div class="card-indicator">
								<div class="indicator four" style="width: 90%"></div>
							</div>
						</div>
					</div>

				</div>


				<div class="records table-responsive">

					<div class="record-header">
						<div class="add">
							<span>Entries</span> <select name="" id="">
								<option value="">ID</option>
							</select>
							<button class="btn  btn-lg" data-toggle="modal"
								data-target="#modelId">New user</button>
						</div>

						<div class="modal fade bd-example-modal-lg" id="modelId"
							tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
							aria-hidden="true">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title">Enter you details</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<div class="container-fluid">

											<div class="register-form">
												<form:form action="/admin/user" modelAttribute="user"
													method="post" id="registerForm"
													enctype="multipart/form-data">
													<div class="row">
														<div class="col-md-4 border-right">
															<div
																class="d-flex flex-column align-items-center text-center px-3 ">
																<div class="mt-3">
																	<label class="h3"> <strong>Hình ảnh</strong>
																	</label>
																</div>
																<div class="avatar-upload m-0 w-100"
																	style="max-width: 100%;">
																	<label for="imageUpload"
																		class="rounded-0 w-100 d-flex justify-content-center">
																		<div class="avatar-preview rounded-0"
																			style="width: 250px; height: 300px">
																			<img id="imagePreview"  data-bs-toggle="tooltip" data-bs-placement="right" loading="lazy" src="/home/img/admin1.jpg" style="width: 250px">
																		</div>
																	</label> <input type="file" class="custom-file-input"
																		id="thumbnail" name="thumbnail"
																		accept=".jpg,.png,.jpeg" onchange="readURL(this,event,'')">

																</div>
															</div>
														</div>
														<div class="col-md-8 border-right">
															<div class="p-3 ">
																<div class="row">
																	<div class="col-12 col-sm-6 col-lg-6 mb-3">
																		<form:label path="username"
																			class="form-label font-weight-bold">Tên
																			tài khoản</form:label>
																		<form:input path="username" name="username"
																			type="text" class="form-control"
																			placeholder="Hãy nhập tên tài khoản" />
																	</div>
																	<div class="col-12 col-sm-6 col-lg-6 mb-3">
																		<form:label path="fullname"
																			class="form-label font-weight-bold">Họ
																			và tên</form:label>
																		<form:input path="fullname" name="fullname"
																			type="text" class="form-control"
																			placeholder="Hãy nhập họ và tên" />
																	</div>
																</div>
																<div class="row">
																	<div class="col-12 col-sm-6 col-lg-6 mb-3">
																		<form:label path="password"
																			class="form-label font-weight-bold">Mật
																			khẩu</form:label>
																		<form:input path="password" name="password"
																			type="password" class="form-control"
																			placeholder="Hãy nhập mật khẩu" />
																	</div>
																</div>
																<div class="row">
																	<div class="col-12 col-sm-6 col-lg-6 mb-3">
																		<form:label path="admin"
																			class="form-label font-weight-bold">Role</form:label>
																		<form:select class="form-control" name="gender"
																			path="admin" id="gender">
																			<option value="true">Admin</option>
																			<option value="false">User</option>
																		</form:select>
																	</div>

																</div>
																<div class="mb-3">
																	<form:label path="email"
																		class="form-label font-weight-bold">Email</form:label>
																	<form:input path="email" name="email" type="email"
																		class="form-control" placeholder="Hãy nhập Email" />
																</div>


															</div>
														</div>
													</div>
													<button class="btn btn-success mr-3"
														formaction="/admin/create" formmethod="post">
														<i class="fas fa-save mr-2"></i>CREATE
													</button>
													<button class="btn btn-primary mr-3"
														formaction="/admin/update" formmethod="post">
														<i class="fas fa-times-circle mr-2"></i>UPDATE
													</button>
													<a class="btn btn-info mr-3 mt-2 mb-2" href="/admin/user"><i
														class="fas fa-times-circle mr-2"></i>RESET</a>
												</form:form>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>


						<div class="browse">
							<input type="search" placeholder="Search" class="record-search">
							<select name="" id="">
								<option value="">Status</option>
							</select>
						</div>
					</div>

					<div>
						<table width="100%">
							<thead>
								<tr>

									<th><span class="las la-sort"></span> Username</th>
									<th><span class="las la-sort"></span> Actived</th>
									<th><span class="las la-sort"></span> Role</th>
									<th><span class="las la-sort"></span> Email</th>
									<th><span class="las la-sort"></span> Fullname</th>
									<th><span class="las la-sort"></span> Password</th>
									<th><span class="las la-sort"></span> Image</th>
									<th></th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${page.content }" varStatus="loop">
									<tr>
										<td>${item.username}</td>
										<td>${item.activated}</td>
										<td>${item.admin ? 'Admin':'User'}</td>
										<td>${item.email}</td>
										<td>${item.fullname}</td>
										<td>${item.password}</td>
										<td>${item.photo}</td>
										<td class="text-center"><a
											class="btn btn-outline-primary"
											href="/admin/edit/${item.username}">Edit</a></td>
										<td class="text-center"><a
											class="btn btn-outline-primary"
											href="/admin/delete/${item.username}">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<nav aria-label="Page navigation example"
						style="margin-left: 200px; margin-top: 50px">
						<ul class="pagination" style="margin-left: 250px">
							<li class="page-item"><a class="page-link"
								href="/admin/user?page=0">First</a></li>
							<li class="page-item"><a class="page-link"
								href="/admin/user?page=${page.number>0 ? page.number -1:0 }">Previous</a></li>
							<li class="page-item"><a class="page-link"
								href="/admin/user?page=${page.number<page.totalPages -1 ? page.number +1 : page.totalPages -1 }">Next</a></li>
							<li class="page-item"><a class="page-link"
								href="/admin/user?page=${page.totalPages -1 }">Last</a></li>
						</ul>
					</nav>
				</div>

			</div>

		</main>

	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<script>
		function readURL(input, event, number) {
			if (input.files && input.files[0]) {
				var output = document.getElementById('imagePreview' + number);
				output.src = URL.createObjectURL(event.target.files[0]);
				output.onload = function() {
					URL.revokeObjectURL(output.src) // free memory
				}
			}
		}
	</script>
</body>
</html>