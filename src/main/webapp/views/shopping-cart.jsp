<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="/home/css/style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="home/css/style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container" style="max-width: 1550px; max-height: 5000px;">
		<%@include file="./components/header.jsp"%>
		<!-- Breadcrumb Section Begin -->
		<div class="breacrumb-section">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 mt-2">
						<div class="breadcrumb-text product-more">
							<a href="/home" class="home"><i class="fa fa-home"></i> Trang
								chủ </a> <span>Giỏ hàng</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Section Begin -->

		<!-- Shopping Cart Section Begin -->
		<section class="shopping-cart spad ">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="cart-table">
							<table>
								<thead>
									<tr>
										<th style="width: 10%">Hình ảnh</th>
										<th style="width: 25%" class="p-name">Tên sản phẩm</th>
										<th style="width: 20%">Giá</th>
										<th style="width: 20%">Số lượng</th>
										<th style="width: 20%">Tổng giá</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${cart.items}" varStatus="loop">
										<tr class="row_cart">
											<td class="cart-pic first-row"><img class="cart-img"
												src="<c:url value='/home/img/${item.image}' />" alt=""></td>
											<td class="cart-title first-row">
												<h5>${item.name}</h5>
											</td>
											<td class="p-price first-row"><fmt:formatNumber
													type="number" value="${item.price}" /> VND</td>
											<td class="qua-col first-row">
												<form action="/cart/update" class="mt-4" method="post">
													<div class="d-flex mb-4" style="max-width: 300px">

														<div class="form-outline">
															<input type="hidden" name="id" value="${item.id}">
															<%--                                                        updateItem(this)--%>
															<input id="form1" onblur="this.form.submit()" min="0"
																name="quantity" step="1" type="number"
																class="form-control" value="${item.available}" />
														</div>



													</div>
												</form>
											</td>
											<td class="total-price first-row price_total"><fmt:formatNumber
													type="number" value="${item.price * item.available}" />
												VND</td>
											<td class="total-price first-row price_total"><a
												id="removeBtn" href="/cart/remove/${item.id }"
												class="btn btn-danger" type="button">X</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="">
							<h3 class="fw-bold">Hóa đơn</h3>
							<hr class="my-4">
							<c:forEach var="item" items="${cart.items}">
								<div class="d-flex justify-content-between mb-4 row_summary">
									<h5 class="h6 qty_summary">${item.available}x${item.name}</h5>
									<h5 class="h6 price_summary">
										<fmt:formatNumber type="number"
											value="${item.price * item.available}" />
										VND
									</h5>
								</div>
							</c:forEach>
							<hr class="my-4 ">
						</div>
						<div class="">
							<div class="discount-coupon">
								<h6>Mã giảm giá</h6>
								<form action="#" class="coupon-form">
									<input type="text" placeholder="Hãy nhập mã giảm giá">
									<button type="submit" class="site-btn coupon-btn">Áp
										dụng</button>
								</form>
							</div>
						</div>
						<div class="">
							<div class="proceed-checkout">
								<ul>
									<li class="subQuantity mb-3">Số lượng <span
										id="subQuantity">${cart.getCount()}</span></li>
									<li class="subTotal">Tổng giá<span id="subTotal"><fmt:formatNumber
												type="number" value="${cart.getAmount()}" /> VND</span></li>
									<hr>
									<li class="cart-total">Tổng tiền <span id="cartTotal"><fmt:formatNumber
												type="number" value="${cart.getAmount()}" /> VND</span></li>
								</ul>
								<a href="/cart/checkout" class="proceed-btn">Thanh toán</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<script>
		function removeSP(maSP) {
			$('#removeBtn').attr("href",
					"/cart/add?maSP=" + maSP + "&soLuong=0&isUpdate=false");
			$('#removeBtn').submit();
		}
	</script>
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