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
	<section class="checkout-section spad pt-4">
        <div class="container">
            <form action="/checkout" method="post" id="checkout" class="checkout-form" onsubmit="return checkout()">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <div class="col-lg-6">
                                <label for="address">Địa chỉ<span>*</span></label>
                                <input type="text" name="address" id="address" value="${sessionScope.account.address}" placeholder="Hãy nhập địa chỉ">
                            </div>
                            <div class="col-lg-6">
                                <label for="phone">Điện thoại<span>*</span></label>
                                <input type="text" name="phone" id="phone" value="${sessionScope.account.phone}" placeholder="Hãy nhập số điện thoại">
                            </div>
                        </div>
                        <div class="place-order">
                            <h4>Đơn hàng của bạn</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                    <li>Sản phẩm <span>Tổng tiền</span></li>
                                    <c:forEach var="detail" items="${cart.items}">
                                    	<li class="fw-normal d-flex align-items-center justify-content-between">
                                    		<div>
	                                    		<img src="/home/img/${detail.image}" style="width: 50px" alt=""> 
	                                    		 
	                                    		<b>${detail.name}</b>  x ${detail.available}
                                    		</div>
                                    		<span><fmt:formatNumber type="number" value="${detail.price}" /> VND</span>
                                    	</li>
                                    </c:forEach>
                                </ul>
                                <div class="order-btn">
                                    <button type="submit" class="site-btn place-btn">Đặt hàng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>

</body>
</html>