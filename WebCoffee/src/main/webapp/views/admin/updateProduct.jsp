<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/admin" var="url"></c:url>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cập nhật sản phẩm</title>
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
								<li><span>Cập nhật sản phẩm</span></li>
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
                    <h4 class="header-title">Cập nhật sản phẩm</h4>
                    <form id="updateProductForm" action="/WebCoffee/update-product" class="row g-3" method="post">
                        <div class="col-12">
                            <label>Mã sản phẩm</label>
                            <input type="number" name="id" class="form-control" value="${product.id}">
                            <small class="text-danger d-none" id="idError">Vui lòng không để trống mã sản phẩm.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Tên sản phẩm</label>
                            <input type="text" name="name" class="form-control" value="${product.name}">
                            <small class="text-danger d-none" id="nameError">Vui lòng không để trống tên sản phẩm.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Giá</label>
                            <input type="text" name="price" class="form-control" value="${product.price}">
                            <small class="text-danger d-none" id="priceError">Vui lòng không để trống giá sản phẩm.</small>
                        </div>
                        <div class="col-12 mt-4">
                            <label>Giảm Giá</label>
                            <input type="text" name="discount" class="form-control" value="${product.discount}">
                            <small class="text-danger d-none" id="discountError">Vui lòng không để trống thông tin giảm giá.</small>
                        </div>
                                            <div class="col-12 mt-4">
                        <label>Ảnh Minh Họa</label>
                        <input type="text" name="thumbnail" class="form-control" value="${product.thumbnail}">
                        <small class="text-danger d-none" id="thumbnailError">Vui lòng không để trống đường dẫn ảnh minh họa.</small>
                    </div>
                    <div class="col-12 mt-4">
                        <label>Mô Tả</label>
                        <input type="text" name="description" class="form-control" value="${product.description}">
                        <small class="text-danger d-none" id="descriptionError">Vui lòng không để trống mô tả sản phẩm.</small>
                    </div>
                    <div class="col-12 mt-4">
                        <label>Mã Loại Sản Phẩm</label>
                        <input type="text" name="category_id" class="form-control" value="${product.category_id}">
                        <small class="text-danger d-none" id="categoryIdError">Vui lòng không để trống mã loại sản phẩm.</small>
                    </div>
                    <div class="col-12 mt-4">
                        <label>Ngày Tạo</label>
                        <input type="date" name="created_at" class="form-control" value="${product.created_at}">
                        <small class="text-danger d-none" id="createdAtError">Vui lòng không để trống ngày tạo sản phẩm.</small>
                    </div>
                    <div class="col-12 mt-4">
                        <label>Ngày Cập Nhật</label>
                        <input type="date" name="updated_at" class="form-control" value="${product.updated_at}">
                        <small class="text-danger d-none" id="updatedAtError">Vui lòng không để trống ngày cập nhật sản phẩm.</small>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-primary mt-4 ml-3">Cập nhật</button>
                    </div>
                </form>
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
        var form = document.querySelector('#updateProductForm');

        form.addEventListener('submit', function(event) {
            var id = document.querySelector('input[name="id"]');
            var name = document.querySelector('input[name="name"]');
            var price = document.querySelector('input[name="price"]');
            var discount = document.querySelector('input[name="discount"]');
            var thumbnail = document.querySelector('input[name="thumbnail"]');
            var description = document.querySelector('input[name="description"]');
            var category_id = document.querySelector('input[name="category_id"]');
            var created_at = document.querySelector('input[name="created_at"]');
            var updated_at = document.querySelector('input[name="updated_at"]');
            var idError = document.getElementById('idError');
            var nameError = document.getElementById('nameError');
            var priceError = document.getElementById('priceError');
            var discountError = document.getElementById('discountError');
            var thumbnailError = document.getElementById('thumbnailError');
            var descriptionError = document.getElementById('descriptionError');
            var categoryIdError = document.getElementById('categoryIdError');
            var createdAtError = document.getElementById('createdAtError');
            var updatedAtError = document.getElementById('updatedAtError');

            if (id.value.trim() === '') {
                event.preventDefault();
                idError.classList.remove('d-none');
            } else {
                idError.classList.add('d-none');
            }

            if (name.value.trim() === '') {
                event.preventDefault();
                nameError.classList.remove('d-none');
            } else {
                nameError.classList.add('d-none');
            }

            if (price.value.trim() === '') {
                event.preventDefault();
                priceError.classList.remove('d-none');
            } else {
                priceError.classList.add('d-none');
            }

            if (discount.value.trim() === '') {
                event.preventDefault();
                discountError.classList.remove('d-none');
            } else {
                discountError.classList.add('d-none');
            }

            if (thumbnail.value.trim() === '') {
                event.preventDefault();
                thumbnailError.classList.remove('d-none');
            } else {
                thumbnailError.classList.add('d-none');
            }

            if (description.value.trim() === '') {
                event.preventDefault();
                descriptionError.classList.remove('d-none');
            } else {
                descriptionError.classList.add('d-none');
            }

            if (category_id.value.trim() === '') {
                event.preventDefault();
                categoryIdError.classList.remove('d-none');
            } else {
                categoryIdError.classList.add('d-none');
            }

            if (created_at.value.trim() === '') {
                event.preventDefault();
                createdAtError.classList.remove('d-none');
            } else {
                createdAtError.classList.add('d-none');
            }

            if (updated_at.value.trim() === '') {
                event.preventDefault();
                updatedAtError.classList.remove('d-none');
            } else {
                updatedAtError.classList.add('d-none');
            }
        });
    });
</script>
	
</body>

</html>
