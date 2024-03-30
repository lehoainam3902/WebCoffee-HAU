<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/admin" var="url"></c:url>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Sửa thông tin đơn hàng</title>
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
								<li><span>Sửa thông tin đơn hàng</span></li>
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
                    <h4 class="header-title">Sửa thông tin đơn hàng</h4>
                    <form id="updateOrderForm" action="/WebCoffee/update-order" class="row g-3" method="post">
                        <div class="col-12">
                            <label>Mã đơn hàng</label>
                            <input type="number" name="id" class="form-control" value="${orders.id}">
                            <small class="text-danger d-none" id="idError">Vui lòng không để trống mã đơn hàng.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Họ và tên</label>
                            <input type="text" name="fullname" class="form-control" value="${orders.fullName}">
                            <small class="text-danger d-none" id="fullnameError">Vui lòng không để trống họ và tên.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Email</label>
                            <input type="email" name="email" class="form-control" value="${orders.email}">
                            <small class="text-danger d-none" id="emailError">Vui lòng không để trống email.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Số điện thoại</label>
                            <input type="text" name="phonenumber" class="form-control" value="${orders.phoneNumber}">
                            <small class="text-danger d-none" id="phonenumberError">Vui lòng không để trống số điện thoại.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Địa chỉ</label>
                            <input type="text" name="address" class="form-control" value="${orders.address}">
                            <small class="text-danger d-none" id="addressError">Vui lòng không để trống địa chỉ.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Ngày đặt</label>
                            <input type="date" name="orderdate" class="form-control" value="${orders.orderDate}">
                            <small class="text-danger d-none" id="orderdateError">Vui lòng không để trống ngày đặt.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Trạng thái</label>
                            <input type="number" name="status" class="form-control" value="${orders.status}">
                            <small class="text-danger d-none" id="statusError">Vui lòng không để trống trạng thái.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Tổng tiền</label>
                            <input type="number" name="total" class="form-control" value="${orders.total}">
                            <small class="text-danger d-none" id="totalError">Vui lòng không để trống tổng tiền.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Mã khách hàng</label>
                            <input type="number" name="user_id" class="form-control" value="${orders.user_id}">
                            <small class="text-danger d-none" id="userIdError">Vui lòng không để trống mã khách hàng.</small>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary mt-4 ml-3">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</

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
        var form = document.querySelector('#updateOrderForm');

        form.addEventListener('submit', function(event) {
            var id = document.querySelector('input[name="id"]');
            var fullname = document.querySelector('input[name="fullname"]');
            var email = document.querySelector('input[name="email"]');
            var phonenumber = document.querySelector('input[name="phonenumber"]');
            var address = document.querySelector('input[name="address"]');
            var orderdate = document.querySelector('input[name="orderdate"]');
            var status = document.querySelector('input[name="status"]');
            var total = document.querySelector('input[name="total"]');
            var user_id = document.querySelector('input[name="user_id"]');
            var idError = document.getElementById('idError');
            var fullnameError = document.getElementById('fullnameError');
            var emailError = document.getElementById('emailError');
            var phonenumberError = document.getElementById('phonenumberError');
            var addressError = document.getElementById('addressError');
            var orderdateError = document.getElementById('orderdateError');
            var statusError = document.getElementById('statusError');
            var totalError = document.getElementById('totalError');
            var userIdError = document.getElementById('userIdError');

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

            if (orderdate.value.trim() === '') {
                event.preventDefault();
                orderdateError.classList.remove('d-none');
            } else {
                orderdateError.classList.add('d-none');
            }

            if (status.value.trim() === '') {
                event.preventDefault();
                statusError.classList.remove('d-none');
            } else {
                statusError.classList.add('d-none');
            }

            if (total.value.trim() === '') {
                event.preventDefault();
                totalError.classList.remove('d-none');
            } else {
                totalError.classList.add('d-none');
            }

            if (user_id.value.trim() === '') {
                event.preventDefault();
                userIdError.classList.remove('d-none');
            } else {
                userIdError.classList.add('d-none');
            }
        });
    });
</script>
	
</body>

</html>
