<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/admin" var="url"></c:url>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cập nhật người dùng</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/png"
	href="${url }/assets/images/icon/favicon.ico">
<link rel="stylesheet" href="${url }/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${url }/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${url }/assets/css/themify-icons.css">
<link rel="stylesheet" href="${url }/assets/css/metisMenu.css">
<link rel="stylesheet" href="${url }/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="${url }/assets/css/slicknav.min.css">
<!-- amchart css -->
<link rel="stylesheet"
	href="https://www.amcharts.com/lib/3/plugins/export/export.css"
	type="text/css" media="all" />
<!-- others css -->
<link rel="stylesheet" href="${url }/assets/css/typography.css">
<link rel="stylesheet" href="${url }/assets/css/default-css.css">
<link rel="stylesheet" href="${url }/assets/css/styles.css">
<link rel="stylesheet" href="${url }/assets/css/responsive.css">
<!-- css data table -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.css" />
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.js"></script>
<!-- modernizr css -->
<script src="${url }/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- preloader area start -->
	<div id="preloader">
		<div class="loader"></div>
	</div>
	<!-- preloader area end -->
	<!-- page container area start -->
	<div class="page-container">
		<!-- sidebar menu area start -->
		<%@include file="layout/sidebar.jsp"%>
		<!-- sidebar menu area end -->
		<!-- main content area start -->
		<div class="main-content">
			<!-- header area start -->
			<%@include file="layout/header.jsp"%>
			<!-- header area end -->
			<!-- page title area start -->
			<div class="page-title-area">
				<div class="row align-items-center">
					<div class="col-sm-6">
						<div class="breadcrumbs-area clearfix">
							<h4 class="page-title pull-left">Dashboard</h4>
							<ul class="breadcrumbs pull-left">
								<li><a href="index.jsp">Home</a></li>
								<li><span>Cập nhật người dùng</span></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6 clearfix">
						<div class="user-profile pull-right">
							<img class="avatar user-thumb"
								src="${url }/assets/images/author/avatar.png" alt="avatar">
							<h4 class="user-name dropdown-toggle" data-toggle="dropdown">
								Admin <i class="fa fa-angle-down"></i>
							</h4>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">Message</a> <a
									class="dropdown-item" href="#">Settings</a> <a
									class="dropdown-item" href="/WebCoffee/admin-logout">Log Out</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- page title area end -->
<div class="main-content-inner">
    <div class="row">
        <!-- Hoverable Rows Table start -->
        <div class="col-lg-12 mt-5">
            <div class="card">
                <div class="card-body">
                    <h4 class="header-title">Cập nhật người dùng</h4>
                    <form id="updateUserForm" action="/WebCoffee/update-user" class="row g-3" method="post">
                        <div class="col-12">
                            <label>Mã Người Dùng</label>
                            <input type="number" name="id" class="form-control" value="${user.id}">
                            <small class="text-danger d-none" id="idError">Vui lòng không để trống mã người dùng.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Họ Tên</label>
                            <input type="text" name="fullname" class="form-control" value="${user.fullName}">
                            <small class="text-danger d-none" id="fullnameError">Vui lòng không để trống họ tên.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Tên Đăng Nhập</label>
                            <input type="text" name="username" class="form-control" value="${user.userName}">
                            <small class="text-danger d-none" id="usernameError">Vui lòng không để trống tên đăng nhập.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Mật Khẩu</label>
                            <input type="text" name="password" class="form-control" value="${user.password}">
                            <small class="text-danger d-none" id="passwordError">Vui lòng không để trống mật khẩu.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Email</label>
                            <input type="text" name="email" class="form-control" value="${user.email}">
                            <small class="text-danger d-none" id="emailError">Vui lòng không để trống email.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Số Điện Thoại</label>
                            <input type="text" name="phonenumber" class="form-control" value="${user.phoneNumber}">
                            <small class="text-danger d-none" id="phonenumberError">Vui lòng không để trống số điện thoại.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Địa Chỉ</label>
                            <input type="text" name="address" class="form-control" value="${user.address}">
                            <small class="text-danger d-none" id="addressError">Vui lòng không để trống địa chỉ.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Mã Phân Quyền</label>
                            <input type="number" name="role_id" class="form-control" value="${user.role_id}">
                            <small class="text-danger d-none" id="roleIdError">Vui lòng không để trống mã phân quyền.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Trạng Thái</label>
                            <input type="number" name="status" class="form-control" value="${user.status}">
                            <small class="text-danger d-none" id="statusError">Vui lòng không để trống trạng thái.</small>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary mt-4 ml-3">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

			<!-- Hoverable Rows Table end -->
		</div>
	</div>
	<!-- main content area end -->
	<!-- footer area start-->
	<%@include file="layout/footer.jsp"%>
	<!-- offset area end -->
	<!-- jquery latest version -->
	<script src="${url }/assets/js/vendor/jquery-2.2.4.min.js"></script>
	<!-- bootstrap 4 js -->
	<script src="${url }/assets/js/popper.min.js"></script>
	<script src="${url }/assets/js/bootstrap.min.js"></script>
	<script src="${url }/assets/js/owl.carousel.min.js"></script>
	<script src="${url }/assets/js/metisMenu.min.js"></script>
	<script src="${url }/assets/js/jquery.slimscroll.min.js"></script>
	<script src="${url }/assets/js/jquery.slicknav.min.js"></script>

	<!-- others plugins -->
	<script src="${url }/assets/js/plugins.js"></script>
	<script src="${url }/assets/js/scripts.js"></script>
	<script>
    document.addEventListener('DOMContentLoaded', function() {
        var form = document.querySelector('#updateUserForm');

        form.addEventListener('submit', function(event) {
            var id = document.querySelector('input[name="id"]');
            var fullname = document.querySelector('input[name="fullname"]');
            var username = document.querySelector('input[name="username"]');
            var password = document.querySelector('input[name="password"]');
            var email = document.querySelector('input[name="email"]');
            var phonenumber = document.querySelector('input[name="phonenumber"]');
            var address = document.querySelector('input[name="address"]');
            var role_id = document.querySelector('input[name="role_id"]');
            var status = document.querySelector('input[name="status"]');

            var idError = document.getElementById('idError');
            var fullnameError = document.getElementById('fullnameError');
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');
            var emailError = document.getElementById('emailError');
            var phonenumberError = document.getElementById('phonenumberError');
            var addressError = document.getElementById('addressError');
            var roleIdError = document.getElementById('roleIdError');
            var statusError = document.getElementById('statusError');

            if (id.value.trim() === '') {
                event.preventDefault();
                idError.classList.remove('d-none');
            } else {
                idError.classList.add('d-none');
            }

            if (fullname.value.trim() === '') {
                event.preventDefault();
                fullnameError.classList.remove('d-none');
            } else {
                fullnameError.classList.add('d-none');
            }

            if (username.value.trim() === '') {
                event.preventDefault();
                usernameError.classList.remove('d-none');
            } else {
                usernameError.classList.add('d-none');
            }

            if (password.value.trim() === '') {
                event.preventDefault();
                passwordError.classList.remove('d-none');
            } else {
                passwordError.classList.add('d-none');
            }

            if (email.value.trim() === '') {
                event.preventDefault();
                emailError.classList.remove('d-none');
            } else {
                emailError.classList.add('d-none');
            }

            if (phonenumber.value.trim() === '') {
                event.preventDefault();
                phonenumberError.classList.remove('d-none');
            } else {
                phonenumberError.classList.add('d-none');
            }

            if (address.value.trim() === '') {
                event.preventDefault();
                addressError.classList.remove('d-none');
            } else {
                addressError.classList.add('d-none');
            }

            if (role_id.value.trim() === '') {
                event.preventDefault();
                roleIdError.classList.remove('d-none');
            } else {
                roleIdError.classList.add('d-none');
            }

            if (status.value.trim() === '') {
                event.preventDefault();
                statusError.classList.remove('d-none');
            } else {
                statusError.classList.add('d-none');
            }
        });
    });
</script>
</body>

</html>
