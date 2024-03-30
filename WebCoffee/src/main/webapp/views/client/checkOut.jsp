<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/views/client" var="url"></c:url>
<%
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("carts");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Thanh toán giỏ hàng</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Great+Vibes"
	rel="stylesheet">

<link rel="stylesheet"
	href="${url }/assets/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="${url }/assets/css/animate.css">

<link rel="stylesheet" href="${url }/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${url }/assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="${url }/assets/css/magnific-popup.css">

<link rel="stylesheet" href="${url }/assets/css/aos.css">

<link rel="stylesheet" href="${url }/assets/css/ionicons.min.css">

<link rel="stylesheet"
	href="${url }/assets/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${url }/assets/css/jquery.timepicker.css">


<link rel="stylesheet" href="${url }/assets/css/flaticon.css">
<link rel="stylesheet" href="${url }/assets/css/icomoon.css">
<link rel="stylesheet" href="${url }/assets/css/style.css">
</head>
<body>
	<!-- HEADER -->
	<%@include file="layout/header.jsp"%>
	<!-- END HEADER -->

	<section class="home-slider owl-carousel">

		<div class="slider-item"
			style="background-image: url(${url }/assets/images/about.jpg);"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row slider-text justify-content-center align-items-center">

					<div class="col-md-7 col-sm-12 text-center ftco-animate">
						<h1 class="mb-3 mt-5 bread">Thanh toán</h1>
						<p class="breadcrumbs">
							<span class="mr-2"><a href="home.jsp">Trang chủ</a></span> <span>Thanh
								toán</span>
						</p>
					</div>

				</div>
			</div>
		</div>
	</section>
	<div class="container">
		<div class="row mt-6">
			<div class="col-md-12 ftco-animate">
				<div class="cart-list">
					<table class="table">
						<thead class="thead-primary">
							<tr class="text-center">
								<th>&nbsp;</th>
								<th>Sản phẩm</th>
								<th>Đơn giá</th>
								<th>Số lượng</th>
								<th>Tồng tiền</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.cart_list}" var="cart">
								<tr class="text-center">
									<td class="image-prod"><div class="img"
											style="background-image:url(${url }images/menu-2.jpg);"></div></td>

									<td class="product-name">
										<h3>${cart.getName() }</h3>
									</td>

									<td class="price">${cart.getPrice() }VND</td>

									<td class="quantity">
										<div class="input-group mb-3">
											<input type="text" name="quantity"
												class="quantity form-control input-number"
												value="${cart.getQuantity()}">
										</div>
									</td>

									<td class="total">${cart.getPrice()* cart.getQuantity() }VND</td>

									<c:set var="subTotal" value=" ${subTotal + cart.getPrice()} " />
									<c:set var="discount" value=" ${cart.getDiscount()} " />
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div> 

		<section class="ftco-section">
			<div class="container">
				<div class="row">
					<div class="col-xl-8 ftco-animate">
						<h3>Thông tin thanh toán</h3>
						<p>
							Bạn đã có tài khoản? <a href="/WebCoffee/user-login">Đăng
								nhập</a>
						</p>
						<form action="/WebCoffee/order" method="post"
							class="billing-form ftco-bg-dark p-3 p-md-5" onsubmit="return validateForm()">
							<h3 class="mb-4 billing-heading">Thông tin thanh toán</h3>
							<div class="row align-items-end">
								<div class="col-md-12">
									<div class="form-group">
										<label>Họ và tên</label> 
										<input name="fullname" class="form-control" placeholder="Họ và tên" required>
									</div>

									<div class="form-group">
										<label>Email</label> 
										<input type="email" class="form-control" placeholder="Email" name="email" required>
									</div>
									<div class="form-group">
										<label>Số điện thoại</label> 
										<input class="form-control" placeholder="Số điện thoại" name="phonenumber">
									</div>
									<div class="form-group">
										<label>Địa chỉ</label> 
										<input class="form-control" placeholder="address" for="address" required>
									</div>
									<div class="form-group">
										<label>Ngày đặt</label> <input type="date" class="form-control" name="orderdate" required>
									</div>
								</div>
								<button type="submit" class="btn btn-primary py-3 px-4">Đặt
									hàng</button>

							</div>
						</form>
						<!-- END -->
					</div>
					<!-- .col-md-8 -->

					<div class="col-xl-4 sidebar ftco-animate">
						<div class="sidebar-box">
							<form action="#" class="search-form">
								<div class="form-group">
									<div class="icon">
										<span class="icon-search"></span>
									</div>
									<input type="text" class="form-control" placeholder="Search...">
								</div>
							</form>
						</div>
						<div class="sidebar-box ftco-animate">
							<div class="categories">
								<div class="row">
									<div class="col-md-12 d-flex">
										<div class="cart-total mb-3">
											<h3>Tổng đơn hàng</h3>
											<p class="d-flex">
												<span>Tổng Tiền</span> <span>${subTotal}VND</span>
											</p>
											<p class="d-flex">
												<span>Giảm Giá</span> <span>${discount}VND</span>
											</p>
											<hr>
											<p class="d-flex total-price">
												<span>Thành Tiền</span> <span>${subTotal}VND</span>
											</p>
										</div>
									</div>

								</div>
							</div>
						</div>
		</section>
		<!-- .section -->

		<!-- FOOTER -->
		<%@include file="layout/footer.jsp"%>



		<!-- loader -->
		<div id="ftco-loader" class="show fullscreen">
			<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
					stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
					stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
		</div>


		<script src="${url }/assets/js/jquery.min.js"></script>
		<script src="${url }/assets/js/jquery-migrate-3.0.1.min.js"></script>
		<script src="${url }/assets/js/popper.min.js"></script>
		<script src="${url }/assets/js/bootstrap.min.js"></script>
		<script src="${url }/assets/js/jquery.easing.1.3.js"></script>
		<script src="${url }/assets/js/jquery.waypoints.min.js"></script>
		<script src="${url }/assets/js/jquery.stellar.min.js"></script>
		<script src="${url }/assets/js/owl.carousel.min.js"></script>
		<script src="${url }/assets/js/jquery.magnific-popup.min.js"></script>
		<script src="${url }/assets/js/aos.js"></script>
		<script src="${url }/assets/js/jquery.animateNumber.min.js"></script>
		<script src="${url }/assets/js/bootstrap-datepicker.js"></script>
		<script src="${url }/assets/js/jquery.timepicker.min.js"></script>
		<script src="${url }/assets/js/scrollax.min.js"></script>
		<script
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script src="${url }/assets/js/google-map.js"></script>
		<script src="${url }/assets/js/main.js"></script>
		<!-- <script>
    // Find all elements with the class "product-remove"
    const removeButtons = document.querySelectorAll('.product-remove a');

    // Add a click event listener to each "Remove" button
    removeButtons.forEach(button => {
        button.addEventListener('click', function (event) {
            // Prevent the default link behavior
            event.preventDefault();

            // Get the cart ID from the data attribute
            const cartId = button.getAttribute('data-cart-id');

            // Find the corresponding table row and remove it
            const tableRow = button.closest('tr');
            if (tableRow) {
                tableRow.remove();
            }

            // You can also send an AJAX request to delete the item from the server-side if needed
            // Example AJAX request (requires jQuery):
            // $.post('/deleteCartItem', { cartId: cartId }, function (data) {
            //     // Handle the response from the server
            // });
        });
    });

</script> -->
<script>
    function validateForm() {
        var fullname = document.forms["billing-form"]["fullname"].value;
        var email = document.forms["billing-form"]["email"].value;
        var phonenumber = document.forms["billing-form"]["phonenumber"].value;
        var address = document.forms["billing-form"]["address"].value;
        var orderdate = document.forms["billing-form"]["orderdate"].value;

        if (fullname == "" || email == "" || phonenumber == "" || address == "" || orderdate == "") {
            alert("Vui lòng nhập đầy đủ thông tin.");
            return false;
        }
    }
</script>

</body>
</html>