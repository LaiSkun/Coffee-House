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
			<form:form action="#" modelAttribute="product" method="post"
				enctype="multipart/form-data"
				class="card border-0  needs-validation" novalidate="true">
				<div class="row mt-3">
					<div class="col-6 mt-4">
						<div class="card shadow rounded-3 mx-auto w-75">
							<label for="imageUpload" class="d-flex btn"> <img
								id="imagePreview" data-bs-toggle="tooltip"
								data-bs-placement="right" loading="lazy"
								src="/home/img/caphe1.jpg" style="width: 400px">
							</label>
						</div>
						<div class="mt-4 d-flex">
							<%--                <label for="imageUpload" class="btn btn-success text-center px-4 mx-auto">Upload</label>--%>
							<input type="file" name="attach" id="imageUpload" class="d-none"
								accept=".png, .jpg, .jpeg" onchange="readURL(this,event,'')" />
						</div>

					</div>
					<div class="col-6">
						<div class="mb-3">
							<form:label path="category" cssClass="form-label">Category</form:label>
							<form:select path="category" cssClass="form-select"
								cssErrorClass="form-select is-invalid" aria-label="category"
								items="${categories}" itemLabel="name">
							</form:select>
							<div class="invalid-feedback px-2">
								<form:errors path="category" />
							</div>
						</div>
						<div class="mb-3">
							<form:label path="name" for="name" cssClass="form-label ">Product name</form:label>
							<form:input path="name" id="name" cssClass="form-control"
								cssErrorClass="is-invalid form-control" />
							<div class="invalid-feedback px-2">
								<form:errors path="name" />
							</div>
						</div>
						<div class="mb-3">
							<form:label path="id" for="id" cssClass="form-label ">Product id</form:label>
							<form:input path="id" id="id" cssClass="form-control"
								cssErrorClass="is-invalid form-control" />
							<div class="invalid-feedback px-2">
								<form:errors path="id" />
							</div>
						</div>
						<div class="mb-3">
							<form:label path="price" for="price" cssClass="form-label">Price</form:label>
							<form:input path="price" id="price" cssClass="form-control"
								type="number" min="0" step="0,01"
								cssErrorClass="is-invalid form-control" />
							<div class="invalid-feedback px-2">
								<form:errors path="price" />
							</div>
						</div>
						<div class="mb-3">
							<form:label path="available" for="available"
								cssClass="form-label">Quantity</form:label>
							<form:input path="available" id="available"
								cssClass="form-control" type="number" min="0" step="1"
								cssErrorClass="is-invalid form-control" />
							<div class="invalid-feedback px-2">
								<form:errors path="available" />
							</div>
						</div>

						<div class="text-end">
							<button class="btn btn-success"
								formaction="/admin/product/create" formmethod="post">Save</button>
							<button class="btn btn-primary"
								formaction="/admin/product/update" formmethod="post">Update</button>
							<a href="/admin/product" class="btn btn-secondary">Reset</a>
						</div>

					</div>
				</div>
			</form:form>
	</div>

	</main>
	<div>
		<table width="100%">
			<thead>
				<tr>
					<th><span class="las la-sort"></span> Image</th>
					<th><span class="las la-sort"></span> Id</th>
					<th><span class="las la-sort"></span> Name</th>
					<th><span class="las la-sort"></span> Price</th>
					<th><span class="las la-sort"></span> Avaiable</th>
					<th><span class="las la-sort"></span> CatelogyId</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>

				<c:forEach var="item" items="${page.content }" varStatus="loop">
					<tr>
						<td>${item.image}</td>
						<td>${item.id}</td>
						<td>${item.name }</td>
						<td>${item.price}</td>
						<td>${item.available}</td>
						<td>${item.category.name}</td>
						<td class="text-center"><a class="btn btn-outline-primary"
							href="/admin/product/edit/${item.id}">Edit</a></td>
						<td class="text-center"><a class="btn btn-outline-primary"
							href="/admin/product/delete/${item.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<nav aria-label="Page navigation example"
			style="margin-left: 450px; margin-top: 50px">
			<ul class="pagination" style="margin-left: 250px">
				<li class="page-item"><a class="page-link"
					href="/admin/product?page=0">First</a></li>
				<li class="page-item"><a class="page-link"
					href="/admin/product?page=${page.number>0 ? page.number -1:0 }">Previous</a></li>
				<li class="page-item"><a class="page-link"
					href="/admin/product?page=${page.number<page.totalPages -1 ? page.number +1 : page.totalPages -1 }">Next</a></li>
				<li class="page-item"><a class="page-link"
					href="/admin/product?page=${page.totalPages -1 }">Last</a></li>
			</ul>
		</nav>
	</div>
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