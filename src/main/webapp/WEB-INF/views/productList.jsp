<!doctype html>
<html class="no-js" lang="en">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>WOOM 에 오신걸 환영합니다.   ->  WOOM !</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="./assets/images/icon1.png">

<!-- CSS
	============================================ -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="./assets/css/vendor/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="./assets/css/vendor/font.awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="./assets/css/vendor/ionicons.min.css">
<!-- Slick CSS -->
<link rel="stylesheet" href="./assets/css/plugins/slick.min.css">
<!-- Animation -->
<link rel="stylesheet" href="./assets/css/plugins/animate.min.css">
<!-- jQuery Ui -->
<link rel="stylesheet" href="./assets/css/plugins/jquery-ui.min.css">
<!-- Nice Select -->
<link rel="stylesheet" href="./assets/css/plugins/nice-select.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="./assets/css/plugins/magnific-popup.css">

<!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from the above) -->

<!-- <link rel="stylesheet" href="./assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="./assets/css/plugins/plugins.min.css"> -->

<!-- Main Style CSS (Please use minify version for better website load performance) -->
<link rel="stylesheet" href="./assets/css/style.css">
<!-- <link rel="stylesheet" href="./assets/css/style.min.css"> -->
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#cart").on("click", function() {
		console.log("카트 담기 버튼 클릭 ");
		
		var product_id= $(this).attr("data-num");
		
		$.ajax({
			url : "loginCheck/cartAddDirect",
			type : "GET",
			dataType: 'text',
			data : {
				product_id : product_id
			},
			success : function(data, status, xhr) {
				console.log("success " + data);
				
			},
			error : function(xhr, status, error) {
				console.log(error);
				console.log("fail");
			}
		});
	});
	
	
	$("#wish").on("click", function() {
		console.log("위시리스트 담기 버튼 클릭 ");
		
		var product_id= $(this).attr("data-num");
		console.log("product_id" +product_id);
		$.ajax({
			url : "loginCheck/wishAdd",
			type : "POST",
			//contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
	        dataType: 'text',
			data :  {
				product_id : product_id
			},
			success : function(data, status, xhr) {
				console.log("success " + data);
			
			},
			error : function(xhr, status, error) {
				console.log(error);
				console.log("fail");
			}
		});
	});
});
</script>
<body>

	<div class="shop-wrapper">
		<!-- Header Area Start Here -->
		<jsp:include page="top.jsp" flush="true"></jsp:include>
		<!-- Breadcrumb Area Start Here -->
		<div class="breadcrumbs-area position-relative">
			<div class="container">
				<div class="row">
					<div class="col-12 text-center">
						<div class="breadcrumb-content position-relative section-content">
							<h3 class="title-3">${category_name} Shop</h3>
							<ul>
								<li><a href= "/">Home</a></li>
								<li>Shop</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Area End Here -->
		<!-- Shop Main Area Start Here -->
		<div class="shop-main-area shop-fullwidth">
			<div class="container container-default custom-area">
				<div class="row flex-row-reverse">
					<div class="col-12 col-custom widget-mt">
						<!--shop toolbar start-->
						<div class="shop_toolbar_wrapper">
							<div class="shop_toolbar_btn">
								<button data-role="grid_4" type="button"
									class="active btn-grid-4" data-bs-toggle="tooltip" title="4">
									<i class="fa fa-th"></i>
								</button>
								<button data-role="grid_3" type="button" class="btn-grid-3"
									data-bs-toggle="tooltip" title="3">
									<i class="fa fa-th-large"></i>
								</button>
								<button data-role="grid_list" type="button" class="btn-list"
									data-bs-toggle="tooltip" title="List">
									<i class="fa fa-th-list"></i>
								</button>
							</div>
							<div class="shop-select">
								<form class="d-flex flex-column w-100" action="#">
									<div class="form-group">
										<!-- <select class="form-control nice-select w-100">
											<option selected value="1">낮은 가격</option>
											<option value="2">높은 가격</option>
										</select> -->
									</div>
								</form>
							</div>
						</div>




						<!--shop toolbar end-->
						<!-- Shop Wrapper Start -->
						<form name="productListForm" id="productListForm" method="post" action="">
						<c:forEach var="dto" items="${productList}" varStatus="status">
						<input type="hidden" name="product_img" id="product_img"
			value="${dto.product_img}"> 
			<input type="hidden"
			name="product_name" value="${dto.product_name}"> 
			<input
			type="hidden" name="product_price"
			value="${dto.product_price}"> 
		
			<input
			type="hidden" name="product_id" value="${dto.product_id}">

		
		
						<div class="row shop_wrapper grid_4">
							

								<div class="col-lg-3 col-md-6 col-sm-6 col-custom product-area">
									<div class="single-product position-relative">
										<div class="product-image">
											<a class="d-block"
												href="./productDetails?product_id=${dto.product_id}"> <img
												src="assets/images/${dto.product_img}" alt=""
												class="product-image-1 w-100"> <%-- <img src="assets/images/${dto.product_img}_on.jpg" alt="" class="product-image-2 position-absolute w-100"> --%>
											</a>
										</div>
										<div class="product-content">
											<div class="product-rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
													class="fa fa-star-o"></i>
											</div>
											<div class="product-title">
												<h4 class="title-2">
													<a href="./productDetails?product_id=${dto.product_id}">${dto.product_name}</a>
												</h4>
											</div>
											<div class="price-box">

												<span class="regular-price "><fmt:formatNumber
														value="${dto.product_price}" type="currency"
														currencySymbol="￦ " /></span>

												<!-- <span class="old-price"><del>$50.00</del></span> -->
											</div>
										</div>
										<div class="add-action d-flex position-absolute">
											<a id="cart" data-num="${dto.product_id}" title="Add To cart"> 
											<i class="ion-bag"></i></a> 
											
											<a id="wish" data-num="${dto.product_id}" title="Add To Wishlist"> 
											<i class="ion-ios-heart-outline"></i></a> 
											
											<a href="./productDetails?product_id=${dto.product_id}" data-bs-toggle="modal" title="Quick View">
											 <i class="ion-eye"></i>
											</a>
										</div>


										<div class="product-content-listview">
											<div class="product-rating">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
													class="fa fa-star-o"></i>
											</div>
											<div class="product-title">
												<h4 class="title-2">
													<a href="./product-details.html">${dto.product_name}</a>
												</h4>
											</div>
											<div class="price-box">
												<span class="regular-price "><fmt:formatNumber
														value="${dto.product_price}" type="currency"
														currencySymbol="￦" /></span> <span class="old-price"><del>$50.00</del></span>
											</div>
											
											<div class="add-action-listview d-flex">
												<a href="" title="Add To cart" id="cart"> 
												<i class="ion-bag"></i>
												</a>  
												
												<a href="" title="Add To Wishlist" id="wish"> 
												<i class="ion-ios-heart-outline"></i>
												</a> 
												
												<a href="./productDetails?product_id=${dto.product_id}" data-bs-toggle="modal" title="Quick View"> 
												<i class="ion-eye"></i>
												</a>
											</div>
											<p class="desc-content">
												${dto.product_description_summary}</p>
										</div>
									</div>
								</div>
								<tr>
									<td height="10"></td>
								</tr>

							

						</div>
						</c:forEach>
						</form>










						<!-- Shop Wrapper End -->
						<!-- Bottom Toolbar Start -->
						<div class="row">
							<div class="col-sm-12 col-custom">
								<div class="toolbar-bottom mt-30">
									<nav class="pagination pagination-wrap mb-10 mb-sm-0">
										<ul class="pagination">
											<li class="disabled prev"><i
												class="ion-ios-arrow-thin-left"></i></li>
											<li class="active"><a>1</a></li>
											<!-- <li><a href="./#">2</a></li> -->
											<li class="next"><a href="./#" title="Next >>"><i
													class="ion-ios-arrow-thin-right"></i></a></li>
										</ul>
									</nav>
									<p class="desc-content text-center text-sm-right">Showing 1 - 1 of 1 result</p>
								</div>
							</div>
						</div>
						<!-- Bottom Toolbar End -->
					</div>
				</div>
			</div>
		</div>

		<!-- Shop Main Area End Here -->
		<!-- Support Area Start Here -->
		<div class="support-area">
			<div class="container container-default custom-area">
				<div class="row">
					<div class="col-lg-12 col-custom">
						<div class="support-wrapper d-flex">
							<div class="support-content">
								<h1 class="title">Need Help ?</h1>
								<p class="desc-content">Email: um.woom@gmail.com</p>
							</div>
							<div class="support-button d-flex align-items-center">
								<a class="obrien-button primary-btn" href="./contactUs">Contact
									now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Support Area End Here -->
		<!-- Footer Area Start Here -->
		<jsp:include page="support.jsp" flush="true"></jsp:include>
		<!-- Footer Area End Here -->
	</div>

	<!-- Modal Area Start Here -->
	<div class="modal fade obrien-modal" id="exampleModalCenter"
		tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<button type="button" class="close close-button"
					data-bs-dismiss="modal" aria-label="Close">
					<span class="close-icon" aria-hidden="true">x</span>
				</button>
				<div class="modal-body">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6 col-md-6 text-center">
								<div class="product-image">
									<img src="assets/images/product/1.jpg" alt="Product Image">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="modal-product">
									<div class="product-content">
										<div class="product-title">
											<h4 class="title">Product dummy name</h4>
										</div>
										<div class="price-box">
											<span class="regular-price ">$80.00</span> <span
												class="old-price"><del>$90.00</del></span>
										</div>
										<div class="product-rating">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
												class="fa fa-star-o"></i> <span>1 Review</span>
										</div>
										<p class="desc-content">we denounce with righteous
											indignation and dislike men who are so beguiled and
											demoralized by the charms of pleasure of the moment, so
											blinded by desire, that they cannot foresee the pain and
											trouble that are bound to ensue; and equal blame bel...</p>
										<form class="d-flex flex-column w-100" action="#">
											<div class="form-group">
												<select class="form-control nice-select w-100">
													<option>S</option>
													<option>M</option>
													<option>L</option>
													<option>XL</option>
													<option>XXL</option>
												</select>
											</div>
										</form>
										<div class="quantity-with_btn">
											<div class="quantity">
												<div class="cart-plus-minus">
													<input class="cart-plus-minus-box" value="0" type="text">
													<div class="dec qtybutton">-</div>
													<div class="inc qtybutton">+</div>
												</div>
											</div>
											<div class="add-to_cart">
												<a class="btn obrien-button primary-btn" href="./cartList">Add
													to cart</a>
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
	</div>
	<!-- Modal Area End Here -->

	<!-- Scroll to Top Start -->
	<a class="scroll-to-top" href="./#"> <i class="ion-chevron-up"></i>
	</a>
	<!-- Scroll to Top End -->

	<!-- JS
============================================ -->

	<!-- jQuery JS -->
	<script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
	<!-- jQuery Migrate JS -->
	<script src="assets/js/vendor/jquery-migrate-3.3.2.min.js"></script>
	<!-- Modernizer JS -->
	<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
	<!-- Slick Slider JS -->
	<script src="assets/js/plugins/slick.min.js"></script>
	<!-- Countdown JS -->
	<script src="assets/js/plugins/jquery.countdown.min.js"></script>
	<!-- Ajax JS -->
	<script src="assets/js/plugins/jquery.ajaxchimp.min.js"></script>
	<!-- Jquery Nice Select JS -->
	<script src="assets/js/plugins/jquery.nice-select.min.js"></script>
	<!-- Jquery Ui JS -->
	<script src="assets/js/plugins/jquery-ui.min.js"></script>
	<!-- jquery magnific popup js -->
	<script src="assets/js/plugins/jquery.magnific-popup.min.js"></script>

	<!-- Main JS -->
	<script src="assets/js/main.js"></script>

</body>

</html>