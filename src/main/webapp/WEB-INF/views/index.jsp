<!doctype html>
<html class="no-js" lang="en">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 인코딩 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge"> 
<title>WOOM 에 오신걸 환영합니다. -> WOOM !</title>
<!-- <meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->
<meta property="og:image"   content="http://um-woom.shop/goods/assets/images/logo/logo.png" />
<meta property="og:title"   content="Woom!" />
<meta property="og:description"   content="WOOM에 오신걸 환영합니다." />

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="./assets/images/icon1.png">

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
<script type="text/javascript">
	$(function() {

		$("#cart").on("click", function() {
			/* var count = $("#cart_quantity").val();
			console.log(count); */
			$("form").attr("action", "loginCheck/cartAdd")

		})

		$("#wish").on("click", function() {

			$("form").attr("action", "loginCheck/wishAdd")

		})
	});
		</script>
<body>
<%-- 	<c:if test="${!empty success }">
		<!-- 회원가입성공메세지 -->
		<script>
			alert('${success}');
		</script>
	</c:if> --%>






	<div class="home-wrapper home-3">
		<!-- Header Area Start Here -->
		<jsp:include page="top.jsp" flush="true"></jsp:include>
		<!-- Header Area End Here -->
		<!-- Begin Slider Area One -->
		<div class="slider-area" >
			<div class="obrien-slider arrow-style"
				data-slick-options='{
        "slidesToShow": 1,
        "slidesToScroll": 1,
        "infinite": true,
        "arrows": true,
        "dots": true,
        "autoplay" : true,
        "fade" : true,
        "autoplaySpeed" : 7000,
        "pauseOnHover" : false,
        "pauseOnFocus" : false
        }'
				data-slick-responsive='[
        {"breakpoint":992, "settings": {
        "slidesToShow": 1,
        "arrows": false,
        "dots": true
        }}
        ]'>
				<div
					class="slide-item slide-1 bg-position slide-bg-2 animation-style-01"
					>
					<div class="slider-content">
						<h4 class="slider-small-title">Organic Products</h4>
						<h2 class="slider-large-title">Life with Beauty</h2>
						<div class="slider-btn">
							<a class="obrien-button black-btn" href="./productList">Shop
								Now</a>
						</div>
					</div>
				</div>
				<div
					class="slide-item slide-4 bg-position slide-bg-2 animation-style-01"
					>
					<div class="slider-content">
						<h4 class="slider-small-title">Cold process organic</h4>
						<h2 class="slider-large-title">Superior skin care</h2>
						<div class="slider-btn">
							<a class="obrien-button black-btn" href="./productList">Shop
								Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>




		<!-- BEST  Area End Here -->


		<!-- Product Area Start Here -->
		<div class="product-area mt-text mb-text-p">
			<div class="container container-default custom-area">
				<div class="row">
					<div class="col-lg-5 m-auto text-center col-custom">
						<!-- <div class="section-content"> -->
						<h2 class="title-1 text-uppercase">Best Sellers</h2>
						<div class="desc-content"></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 product-wrapper col-custom">
					<div class="product-slider"
						data-slick-options='{
                        "slidesToShow": 4,
                        "slidesToScroll": 1,
                        "infinite": true,
                        "arrows": false,
                        "dots": false
                        }'
						data-slick-responsive='[
                        {"breakpoint": 1200, "settings": {
                        "slidesToShow": 3
                        }},
                        {"breakpoint": 992, "settings": {
                        "slidesToShow": 2
                        }},
                        {"breakpoint": 576, "settings": {
                        "slidesToShow": 1
                        }}
                        ]'>



					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Product Area End Here -->







	<!-- Slider Area One End Here -->
	<!-- MAIN ProductLIST Area Start Here -->
	<div class="product-area mt-text mb-no-text">


		<!-- <h2 class="title-1 text-uppercase">Best Sellers</h2>  -->


		<!-- 			<div class="container container-default custom-area">
				<div class="row">
					<div class="col-lg-5 col-custom m-auto text-center">
						<div class="section-content">
							<h2 class="title-1 text-uppercase">Featured Products</h2>
							<div class="desc-content">
								<p>All best seller product are now available for you and
									your can buy this product from here any time any where so sop
									now</p>
							</div>
						</div>
					</div>
				</div> -->

		<!-- productlist-=------------------------------------ -->

		<div class="row shop_wrapper grid_4" style="padding: 0px 100px 0px 100px;">
			<c:forEach var="dto" items="${productList}" varStatus="status">

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
										currencySymbol="￦" /></span>

							</div>
						</div>
						<div class="add-action d-flex position-absolute">
							<a href="./cartList" id="cart"title="Add To cart"> <i class="ion-bag"></i></a>  
							<a href="./wishlist.html" title="Add To Wishlist"> <i class="ion-ios-heart-outline"></i></a> 
							<a href="./productDetails?product_id=${dto.product_id}" data-bs-toggle="modal" title="Quick View"> 
							<i class="ion-eye"></i></a>
						</div>
						<%-- <div class="product-content-listview">
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
										currencySymbol="￦" /></span> <span class="old-price"><del>$50.00</del></span>
							</div>
							<div class="add-action-listview d-flex">
								<a href="./cartList" title="Add To cart"> <i class="ion-bag"></i>
								</a> <a href="./compare.html" title="Compare"> <i
									class="ion-ios-loop-strong"></i>
								</a> <a href="./wishlist.html" title="Add To Wishlist"> <i
									class="ion-ios-heart-outline"></i>
								</a> <a href="./#exampleModalCenter" data-bs-toggle="modal"
									title="Quick View"> <i class="ion-eye"></i>
								</a>
							</div>
							<p class="desc-content">${dto.product_description_summary}</p>
						</div> --%>
					</div>
				</div>
				<tr>
					<td height="10"></td>
				</tr>

			</c:forEach>

		</div>



	</div>
	<!-- MAIN productlist END------------------------------------ -->
	</div>

































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
									<img src="assets/images/product/1.png" alt="Product Image">
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