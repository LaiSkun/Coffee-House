<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/home/css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container" style="max-width: 1550px; max-height: 5000px;">
		<%@include file="./components/header.jsp"%>
		<h1>${cart.size }</h1>
		<section class="menu">
			<div class="row container" style="margin-left: 200px;">
				<aside class="list col-sm-3">
					<div class="card" href="#chungloai">
						<div class="card-header" style="cursor: pointer;">
							<span class="glyphicon glyphicon-th-list"></span> Tất cả
						</div>

						<ul class="list-group list-group-flush card-collapse"
							id="chungloai">
							<c:forEach var="item" items="${listDM }">
								<a href="<c:url value='/product/collection/${item.id}'/>">
									<li class="list-group-item">${item.name}</li>
								</a>
							</c:forEach>
						</ul>

					</div>
				</aside>
				<article class="col-sm-9">
					<div class="menu-list row">
						<c:forEach var="item" items="${page.content }" varStatus="loop">
							<div class="cart product col-sm-4" style="width: 250px;">
								<a href="/cart/add/${item.id}"><img
									src="<c:url value='/home/img/${item.image}' />"
									class="card-img-top img-thumbnail" alt="..."></a> <a href="/cart/add/${item.id}">
									<div class="see-menu"></div>
								</a>
								<div class="cart-info">
									<a href="/cart/add/${item.id}"><h6>${ item.name}</h6></a>
									<p class="card-text">
										<fmt:formatNumber type="number" value="${ item.price}" />
										đ
									</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<nav aria-label="Page navigation example">
						<ul class="pagination" style="margin-left: 250px">
							<li class="page-item"><a class="page-link"
								href="/product/collection/all?page=0">First</a></li>
							<li class="page-item"><a class="page-link"
								href="/product/collection/all?page=${page.number>0 ? page.number -1:0 }">Previous</a></li>
							<li class="page-item"><a class="page-link"
								href="/product/collection/all?page=${page.number<page.totalPages -1 ? page.number +1 : page.totalPages -1 }">Next</a></li>
							<li class="page-item"><a class="page-link"
								href="/product/collection/all?page=${page.totalPages -1 }">Last</a></li>
						</ul>
					</nav>
				</article>
			</div>
		</section>
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
</body>
</html>