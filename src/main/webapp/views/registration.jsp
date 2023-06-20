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
	
	<div style="margin-left: 150px">
    <div class="ml-5" style="max-width: 1000px !important;">
        <div class="">
        	<div class="modal-header border-0 d-flex justify-content-between">
        		<h2 class="fw-bold "><Strong> Đăng ký </Strong></h2>
            </div>
            <div class="modal-body">
                <div class="register-form">
                    <form action="/register" method="post" id="registerForm" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-4 border-right">
                                <div class="d-flex flex-column align-items-center text-center px-3 ">
                                    <div class="mt-3">
                                        <label class="h3"> <strong>Hình ảnh</strong>
										</label>
                                    </div>
                                    <div class="avatar-upload m-0 w-100" style="max-width: 100%;">
                                        <label for="imageUpload" class="rounded-0 w-100 d-flex justify-content-center">
											<div class="avatar-preview rounded-0"
												style="width: 250px; height: 300px">
												<div id="imagePreview" class="w-100 rounded-0"
													style="background-image: url('img/no_image.jpg');"></div>
											</div>
										</label>
                                        <input type="file" class="custom-file-input" id="imageUpload" name="avatar" accept=".jpg,.png,.jpeg" onchange="readURL(this)">

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 border-right">
                                <div class="p-3 ">
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-lg-6 mb-3">
                                            <label class="form-label font-weight-bold">Tên tài khoản</label>
                                            <input name="username" type="text" class="form-control" placeholder="Hãy nhập tên tài khoản" />
                                        </div>
                                        <div class="col-12 col-sm-6 col-lg-6 mb-3">
                                            <label class="form-label font-weight-bold">Họ và tên</label>
                                            <input name="fullname" type="text" class="form-control" placeholder="Hãy nhập họ và tên" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-lg-6 mb-3">
                                            <label class="form-label font-weight-bold">Mật khẩu</label>
                                            <input name="password" type="password" class="form-control" placeholder="Hãy nhập mật khẩu" />
                                        </div>
                                        <div class="col-12 col-sm-6 col-lg-6 mb-3">
                                            <label class="form-label font-weight-bold">Xác nhận mật khẩu</label>
                                            <input name="confirm" type="password" class="form-control" placeholder="Hãy nhập xác nhận mật khẩu" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-6 col-lg-6 mb-3">
                                            <label class="form-label font-weight-bold">Giới tính</label>
                                            <select class="form-control" name="gender" id="gender">
												<option value="true">Nam</option>
												<option value="false">Nữ</option>
											</select>
                                        </div>
                                        <div class="col-12 col-sm-6 col-lg-6 mb-3">
                                            <label class="form-label font-weight-bold">Điện thoại</label>
                                            <input name="phone" type="text" class="form-control" placeholder="Hãy nhập số điện thoại" />
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label font-weight-bold">Email</label>
                                        <input name="email" type="email" class="form-control" placeholder="Hãy nhập Email" />
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label font-weight-bold">Địa chỉ</label>
                                        <input name="address" type="text" class="form-control" placeholder="Hãy nhập địa chỉ" />
                                    </div>
                                    <div class="mt-5">
                                        <button class="btn btn-primary w-100 py-2 font-weight-bold profile-button" style="font-size: 20px">Đăng ký</button>
                                        <div class="mt-2 text-center">
                                            <span>Bạn đã sẵn sàng đăng nhập?</span> 
                                            <a class="img-responsive btn text-danger" data-dismiss="modal" aria-label="Close" data-toggle="modal"
							data-target="#loginModal"> Đăng nhập tại đây</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
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