<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<div class="row">
	<div class="col">
		<div class="header-list">
			<div>
				<a href=""><img
					src="/home/img/vector_706a88566eab4f009bed6eea93cd890b.webp" alt="">
					154 Cửa hàng cả nước</a>
			</div>
			<div>
				<a href=""><img
					src="/home/img/group_8de276faa50c486b9d485826c506803b.webp" alt="">
					Đặt hàng : 1800.6936</a>
			</div>
			<div>
				<a href=""><img
					src="/home/img/vector_c337310f409d440f890b370ff9cefe44.webp" alt="">
					Freeship từ 50.000vnd</a>
			</div>
		</div>
	</div>
</div>
<nav class="row navbar navbar-expand-lg navbar-light bg-light">
	<div class="collapse navbar-collapse" id="navbarNavDropdown">
		<a href="/home"><img
			src="/home/img/logo-the-coffee-house-chieu-dai.webp" alt=""
			style="width: 200px; height: 20px; margin-right: 200px; margin-left: 80px;"></a>
		<ul class="navbar-nav hover">
			<li class=" nav-item active hover-li"><a class="nav-link color"
				href="/home"><i class="fa fa-home" aria-hidden="true"></i> Trang
					chủ <span class="sr-only">(current)</span></a></li>
			<li class="hover-li nav-item"><a class=" color nav-link"
				href="#"><i class="fa fa-share-square" aria-hidden="true"></i>
					Giới thiệu</a></li>
			<li class="hover-li nav-item"><a class=" color nav-link"
				href="/product/collection/all"><i class="fa fa-list"
					aria-hidden="true"></i> Menu</a></li>
			<li class="nav-item"><a class="nav-link" href="contact.html"><i
					class="fa fa-phone" aria-hidden="true"></i> Liên hệ</a></li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-address-book" aria-hidden="true"></i> Góp ý</a></li>
			<li class="nav-item"><a class="nav-link" href="#"><i
					class="fa fa-comment" aria-hidden="true"></i> Hỏi đáp</a></li>
							
			<c:if test="${empty sessionScope.loggedInUser}">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href=""
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <i
						class="fa fa-user" aria-hidden="true"></i> Tài khoản
				</a>

					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="<c:url value='/login' />">Đăng
							nhập</a><a class="dropdown-item" href="/registration">Đăng ký
							thành viên</a>
					</div></li>
			</c:if>
			<c:if test="${not empty sessionScope.loggedInUser}">
				<li class="nav-item"><a class="nav-link" href="<c:url value='/logout' />"><i
						class="fa fa-user" aria-hidden="true"></i> Đăng xuất</a></li>
				<li class="nav-item"><i class="nav-link">Welcome, <b >${sessionScope.loggedInUser.username}</b></i></li>
			</c:if>

		</ul>
	</div>
	<ul class="navbar-nav reverser">
		<li class="nav-item">
			<!-- Button trigger modal --> <a class="cart-reponsive"
			href="/cart/view" class="nav-icon-link"> <span
				class="fa fa-cart-plus nav-icon"></span> <span id="cart-badge"
				class="badge badge-pill badge-danger text-white count">
					${Count} </span>
					
		</a>
		</li>
		<li class="nav-item"><a href="" class="nav-link"></a></li>
	</ul>
</nav>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#imagePreview').css('background-image',
						'url(' + e.target.result + ')');
				$('#imagePreview').hide();
				$('#imagePreview').fadeIn(650);
			}
			reader.readAsDataURL(input.files[0]);
		} else {
			$('#imagePreview').css('background-image',
					'url(/home/img/pf-icon4-jir2064-por-l.jpg)');
		}
	}
</script>