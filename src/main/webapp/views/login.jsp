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

		<div style="margin-left: 200px ; margin-top: 100px">
			<div class="ml-5" style="max-width: 1000px !important;">
				<div class="">
					<div
						class=""
						id="modelId" tabindex="-1" role="dialog"
						aria-labelledby="modelTitleId" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title">Đăng nhập</h5>
									
								</div>
								<div class="modal-body">
									<div class="container-fluid">
										<div class="login-form">
											<form action="<c:url value='/login' />" method="post">
												<div class="mb-3">
													<label class="form-label"> <strong>Tên tài
															khoản </strong></label> <input name="username" type="text"
														class="form-control" placeholder="Hãy nhập tên tài khoản" />
												</div>
												<div class="mb-3">
													<label class="form-label">Mật khẩu</label> <input
														name="password" type="password" class="form-control"
														placeholder="Hãy nhập mật khẩu" />
												</div>
												<div class="row">
													<div class="col-sm-7 mt-2 form-group">
														<input type="checkbox" name="remember-me" id="remember-me"
															class="agree-term" /> <label for="remember-me"
															class="label-agree-term"><span><span></span></span>Ghi
															nhớ đăng nhập?</label>
													</div>
													<div class="col-sm-5  form-group">
														<a class="img-responsive btn text-danger"
															data-dismiss="modal" aria-label="Close"
															data-toggle="modal" data-target="#forgotModal"> Quên
															mật khẩu?</a>
													</div>
												</div>
												<div class="mt-2 text-center">
													<button class="primary-btn fw-bold w-100 py-2 rounded-pill"
														type="submit">Đăng nhập</button>
												</div>
											</form>
											<div class="mt-3 text-center">
												<span>Bạn chưa có tài khoản?</span> <a
													class="img-responsive btn text-danger" data-dismiss="modal"
													aria-label="Close" data-toggle="modal"
													data-target="#registerModal"> Đăng ký ngay</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
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
</body>
</html>