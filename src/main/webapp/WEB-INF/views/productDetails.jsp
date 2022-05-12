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
<title>Obrien - Organic Food HTML5 Template</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/favicon.ico">

<!-- CSS
	============================================ -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">
<!-- FontAwesome -->
<link rel="stylesheet" href="assets/css/vendor/font.awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="assets/css/vendor/ionicons.min.css">
<!-- Slick CSS -->
<link rel="stylesheet" href="assets/css/plugins/slick.min.css">
<!-- Animation -->
<link rel="stylesheet" href="assets/css/plugins/animate.min.css">
<!-- jQuery Ui -->
<link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css">
<!-- Nice Select -->
<link rel="stylesheet" href="assets/css/plugins/nice-select.min.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="assets/css/plugins/magnific-popup.css">

<!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from the above) -->

<!-- <link rel="stylesheet" href="assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="assets/css/plugins/plugins.min.css"> -->

<!-- Main Style CSS (Please use minify version for better website load performance) -->
<link rel="stylesheet" href="assets/css/style.css">
<!-- <link rel="stylesheet" href="assets/css/style.min.css"> -->







</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {

		$("#cart").on("click", function() {
			var count = $("#cart_quantity").val();
			console.log(count);
			$("form").attr("action", "loginCheck/cartAdd")
			
		})
		
		$("#wish").on("click", function() {
			
			$("form").attr("action", "loginCheck/wishAdd")
			
		})

		$("#up").on("click", function() {
			var count = $("#cart_quantity").val();
			console.log(count);
			
			$("#cart_quantity").val(parseInt(count) + 1);
		});

		$("#down").on("click", function() {
			var count = $("#cart_quantity").val();
			if (count != 1) {
				$("#cart_quantity").val(parseInt(count) - 1);
			}
		});
	});
</script>







<body>
<form name="productDetailsForm" method="GET" action="#">
	<input type="hidden" name="product_img" value="${productDetails.product_img}">
	<input type="hidden" name="product_name" value="${productDetails.product_name}">
	<input type="hidden" name="product_price" value="${productDetails.product_price}">
	<input type="hidden" name="product_description_summary" value="${productDetails.product_description_summary}">
	<input type="hidden" name="product_id" value="${productDetails.product_id}">
	<input type="hidden" name="cart_id" value="${productDetails.cart_id}">
	







	<div class="shop-wrapper">
		<header class="main-header-area">
			<!-- Main Header Area Start -->
			<div class="main-header">
				<div class="container container-default custom-area">
					<div class="row">
						<div class="col-lg-12 col-custom">
							<div class="row align-items-center">
								<div class="col-lg-2 col-xl-2 col-sm-6 col-6 col-custom">
									<div class="header-logo d-flex align-items-center">
										<a href="/"> <img class="img-full"
											src="assets/images/logo/logo.png" alt="Header Logo">
										</a>
									</div>
								</div>
								<div
									class="col-lg-8 col-xl-7 position-static d-none d-lg-block col-custom">
									<nav class="main-nav d-flex justify-content-center">
										<ul class="nav">
											<li><a href="/"> <span class="menu-text">
														Home</span>
											</a></li>
											<li><a class="active" href="shop.html"> <span
													class="menu-text">아트스타일</span> <i class="fa fa-angle-down"></i>
											</a>
												<div class="mega-menu dropdown-hover">
													<div class="menu-colum">
														<ul>
															<li><span class="mega-menu-text">계절</span></li>
															<li><a href="/productList?category_name=봄">봄</a></li>
															<li><a href="/productList?category_name=여름">여름</a></li>
															<li><a href="/productList?category_name=가을">가을</a></li>
															<li><a href="/productList?category_name=겨울">겨울</a></li>


														</ul>
													</div>

												</div></li>


											<li><a href="blog-details-fullwidth.html"> <span
													class="menu-text"> 추천 상품</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="blog.html">인기 상품</a></li>
												</ul></li>
											<li><a href="blog-details-fullwidth.html"> <span
													class="menu-text">상품 목록</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="blog.html">일러스트</a></li>
													<li><a href="blog.html">풍경화</a></li>
													<li><a href="blog.html">캘리그라피</a></li>
												</ul></li>
											<li><a href="#"> <span class="menu-text">Page</span>
													<i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="faqForm">FAQ</a></li>
													<li><a href="myAccount">My Account</a></li>
													<li><a href="loginForm">로그인</a></li>
													<li><a href="memberForm">회원가입</a></li>
													<li><a href="productList">상품리스트</a></li>
													<li><a href="cartList">카트리스트</a></li>
													<li><a href="wishList">위시리스트</a></li>
												</ul></li>
											<li><a href="aboutUs"> <span class="menu-text">
														About</span>
											</a></li>
											<li><a href="contactUs"> <span class="menu-text">Contact</span>
											</a></li>
										</ul>
									</nav>
								</div>
								<div class="col-lg-2 col-xl-3 col-sm-6 col-6 col-custom">
									<div class="header-right-area main-nav">
										<ul class="nav">
											<li class="login-register-wrap d-none d-xl-flex"><c:choose>
													<c:when test="${!empty login }"> &nbsp;&nbsp; <!-- 확인용 -->
														<div
															style="font-size: 15px; line-height: 1.6; font-weight: 600; color: #303030;">
															${login.user_name } 님</div>
														<span><a href="/loginCheck/logout">logout</a></span>
														<span><a href="memberForm">Register</a></span>
													</c:when>
													<c:otherwise>
														<span><a href="loginForm">login</a></span>
														<span><a href="memberForm">Register</a></span>
													</c:otherwise>
												</c:choose></li> &nbsp;&nbsp;
											<li class="minicart-wrap"><a href="#"
												class="minicart-btn toolbar-btn"> <i class="ion-bag"></i>
													<span class="cart-item_count">3</span>
											</a>
												<div
													class="cart-item-wrapper dropdown-sidemenu dropdown-hover-2">
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="cartList"><img
																src="assets/images/cart/1.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="cartList">11. Product with video - navy</a>
															</h5>
															<div class="cart-text-btn">
																<div class="cart-qty">
																	<span>1×</span> <span class="cart-price">$98.00</span>
																</div>
																<button type="button">
																	<i class="ion-trash-b"></i>
																</button>
															</div>
														</div>
													</div>
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="cartList"><img
																src="assets/images/cart/2.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="cartList"
																	title="10. This is the large title for testing large title and there is an image for testing - white">10.
																	This is the large title for testing...</a>
															</h5>
															<div class="cart-text-btn">
																<div class="cart-qty">
																	<span>1×</span> <span class="cart-price">$98.00</span>
																</div>
																<button type="button">
																	<i class="ion-trash-b"></i>
																</button>
															</div>
														</div>
													</div>
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="cartList"><img
																src="assets/images/cart/3.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="cartList">1. New and sale badge product - s
																	/ red</a>
															</h5>
															<div class="cart-text-btn">
																<div class="cart-qty">
																	<span>1×</span> <span class="cart-price">$98.00</span>
																</div>
																<button type="button">
																	<i class="ion-trash-b"></i>
																</button>
															</div>
														</div>
													</div>
													<div
														class="cart-price-total d-flex justify-content-between">
														<h5>Total :</h5>
														<h5>$166.00</h5>
													</div>
													<div class="cart-links d-flex justify-content-center">
														<a class="obrien-button white-btn" href="cartList">View
															cart</a> <a class="obrien-button white-btn"
															href="checkout.html">Checkout</a>
													</div>
												</div></li>
											<li class="mobile-menu-btn d-lg-none"><a
												class="off-canvas-btn" href="#"> <i class="fa fa-bars"></i>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Main Header Area End -->
			<!-- Sticky Header Start Here-->
			<div class="main-header header-sticky">
				<div class="container container-default custom-area">
					<div class="row">
						<div class="col-lg-12 col-custom">
							<div class="row align-items-center">
								<div class="col-lg-2 col-xl-2 col-sm-6 col-6 col-custom">
									<div class="header-logo">
										<a href="/"> <img class="img-full"
											src="assets/images/logo/logo.png" alt="Header Logo">
										</a>
									</div>
								</div>
								<div
									class="col-lg-8 col-xl-7 position-static d-none d-lg-block col-custom">
									<nav class="main-nav d-flex justify-content-center">
										<ul class="nav">
											<li><a href="/"> <span class="menu-text">
														Home</span>
											</a></li>
											<li><a class="active" href="shop.html"> <span
													class="menu-text">아트스타일</span> <i class="fa fa-angle-down"></i>
											</a>
												<div class="mega-menu dropdown-hover">
													<div class="menu-colum">
														<ul>
															<li><span class="mega-menu-text">계절</span></li>
															<li><a href="/productList?category_name=봄">봄</a></li>
															<li><a href="/productList?category_name=여름">여름</a></li>
															<li><a href="/productList?category_name=가을">가을</a></li>
															<li><a href="/productList?category_name=겨울">겨울</a></li>

															<li><a href="productList">상품리스트</a></li>
														</ul>
													</div>

												</div></li>
												
												
											<li><a href="blog-details-fullwidth.html"> <span
													class="menu-text"> 추천 상품</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="blog.html">인기 상품</a></li>
												</ul></li>
											<li><a href="blog-details-fullwidth.html"> <span
													class="menu-text">상품 목록</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="blog.html">일러스트</a></li>
													<li><a href="blog.html">풍경화</a></li>
													<li><a href="blog.html">캘리그라피</a></li>
												</ul></li>
											<li><a href="#"> <span class="menu-text">Page</span>
													<i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="faqForm">FAQ</a></li>
													<li><a href="myAccount">My Account</a></li>
													<li><a href="loginForm">로그인</a></li>
													<li><a href="memberForm">회원가입</a></li>
												</ul></li>
											<li><a href="aboutUs"> <span class="menu-text">
														About</span>
											</a></li>
											<li><a href="contactUs"> <span class="menu-text">Contact</span>
											</a></li>
										</ul>
									</nav>
								</div>
								<div class="col-lg-2 col-xl-3 col-sm-6 col-6 col-custom">
									<div class="header-right-area main-nav">
										<ul class="nav">
											<li class="login-register-wrap d-none d-xl-flex"><span><a
													href="loginForm">Login</a></span> <span><a
													href="memberForm">Register</a></span></li>

											<li class="minicart-wrap"><a href="#"
												class="minicart-btn toolbar-btn"> <i class="ion-bag"></i>
													<span class="cart-item_count">3</span>
											</a>
												<div
													class="cart-item-wrapper dropdown-sidemenu dropdown-hover-2">
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="cartList"><img
																src="assets/images/cart/1.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="cartList">11. Product with video - navy</a>
															</h5>
															<div class="cart-text-btn">
																<div class="cart-qty">
																	<span>1×</span> <span class="cart-price">$98.00</span>
																</div>
																<button type="button">
																	<i class="ion-trash-b"></i>
																</button>
															</div>
														</div>
													</div>
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="cartList"><img
																src="assets/images/cart/2.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="cartList"
																	title="10. This is the large title for testing large title and there is an image for testing - white">10.
																	This is the large title for testing...</a>
															</h5>
															<div class="cart-text-btn">
																<div class="cart-qty">
																	<span>1×</span> <span class="cart-price">$98.00</span>
																</div>
																<button type="button">
																	<i class="ion-trash-b"></i>
																</button>
															</div>
														</div>
													</div>
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="cartList"><img
																src="assets/images/cart/3.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="cartList">1. New and sale badge product - s
																	/ red</a>
															</h5>
															<div class="cart-text-btn">
																<div class="cart-qty">
																	<span>1×</span> <span class="cart-price">$98.00</span>
																</div>
																<button type="button">
																	<i class="ion-trash-b"></i>
																</button>
															</div>
														</div>
													</div>
													<div
														class="cart-price-total d-flex justify-content-between">
														<h5>Total :</h5>
														<h5>$166.00</h5>
													</div>
													<div class="cart-links d-flex justify-content-center">
														<a class="obrien-button white-btn" href="cartList">View
															cart</a> <a class="obrien-button white-btn"
															href="checkout.html">Checkout</a>
													</div>
												</div></li>
											<li class="mobile-menu-btn d-lg-none"><a
												class="off-canvas-btn" href="#mobileMenu"> <i
													class="fa fa-bars"></i>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Sticky Header End Here -->
			<!-- off-canvas menu start -->
			<aside class="off-canvas-wrapper" id="mobileMenu">
				<div class="off-canvas-overlay"></div>
				<div class="off-canvas-inner-content">
					<div class="btn-close-off-canvas">
						<i class="fa fa-times"></i>
					</div>
					<div class="off-canvas-inner">
						<div class="search-box-offcanvas">
							<form>
								<input type="text" placeholder="Search product...">
								<button class="search-btn">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>
						<!-- mobile menu start -->
						<div class="mobile-navigation">
							<!-- mobile menu navigation start -->
							<nav>
								<ul class="mobile-menu">
									<li class="menu-item-has-children"><a href="#">Home</a>
										<ul class="dropdown">
											<li><a href="/">Home Page 1</a></li>
											<li><a href="index-2.html">Home Page 2</a></li>
											<li><a href="index-3.html">Home Page 3</a></li>
											<li><a href="index-4.html">Home Page 4</a></li>
										</ul></li>
									<li class="menu-item-has-children"><a href="#">Shop</a>
										<ul class="megamenu dropdown">
											<li class="mega-title has-children"><a href="#">Shop
													Layouts</a>
												<ul class="dropdown">

													<li><a href="productList">상품리스트</a></li>
												</ul></li>
											<li class="mega-title has-children"><a href="#">Product
													Details</a>
												<ul class="dropdown">
													<li><a href="product-details.html">Single Product
															Details</a></li>
													<li><a href="variable-product-details.html">Variable
															Product Details</a></li>
													<li><a href="external-product-details.html">External
															Product Details</a></li>
													<li><a href="gallery-product-details.html">Gallery
															Product Details</a></li>
													<li><a href="countdown-product-details.html">Countdown
															Product Details</a></li>
												</ul></li>
											<li class="mega-title has-children"><a href="#">Others</a>
												<ul class="dropdown">
													<li><a href="error404.html">Error 404</a></li>
													<li><a href="compare.html">Compare Page</a></li>
													<li><a href="cartList">Cart Page</a></li>
													<li><a href="checkout.html">Checkout Page</a></li>
													<li><a href="wishlist.html">Wish List Page</a></li>
												</ul></li>
										</ul></li>
									<li class="menu-item-has-children "><a href="#">Blog</a>
										<ul class="dropdown">
											<li><a href="blog.html">Blog Left Sidebar</a></li>
											<li><a href="blog-list-right-sidebar.html">Blog List
													Right Sidebar</a></li>
											<li><a href="blog-list-fullwidth.html">Blog List
													Fullwidth</a></li>
											<li><a href="blog-grid.html">Blog Grid Page</a></li>
											<li><a href="blog-grid-right-sidebar.html">Blog Grid
													Right Sidebar</a></li>
											<li><a href="blog-grid-fullwidth.html">Blog Grid
													Fullwidth</a></li>
											<li><a href="blog-details-sidebar.html">Blog Details
													Sidebar Page</a></li>
											<li><a href="blog-details-fullwidth.html">Blog
													Details Fullwidth Page</a></li>
										</ul></li>
									<li class="menu-item-has-children "><a href="#">Pages</a>
										<ul class="dropdown">
											<li><a href="faqForm">FAQ</a></li>
											<li><a href="my-account.html">My Account</a></li>
											<li><a href="login-memberForm">login &amp; register</a></li>
										</ul></li>
									<li><a href="aboutUs">About Us</a></li>
									<li><a href="contactUs">Contact</a></li>
								</ul>
							</nav>
							<!-- mobile menu navigation end -->
						</div>
						<!-- mobile menu end -->
						<div class="header-top-settings offcanvas-curreny-lang-support">
							<!-- mobile menu navigation start -->
							<nav>
								<ul class="mobile-menu">
									<li class="menu-item-has-children"><a href="#">My
											Account</a>
										<ul class="dropdown">
											<li><a href="loginForm">Login</a></li>
											<li><a href="memberForm">Register</a></li>
										</ul></li>

								</ul>
							</nav>
							<!-- mobile menu navigation end -->
						</div>
						<!-- offcanvas widget area start -->
						<div class="offcanvas-widget-area">
							<div class="top-info-wrap text-left text-black">
								<ul>
									<li><i class="fa fa-phone"></i> <a
										href="info@yourdomain.com">(1245) 2456 012</a></li>
									<li><i class="fa fa-envelope"></i> <a
										href="info@yourdomain.com">info@yourdomain.com</a></li>
								</ul>
							</div>
							<div class="off-canvas-widget-social">
								<a title="Facebook-f" href="#"><i class="fa fa-facebook-f"></i></a>
								<a title="Twitter" href="#"><i class="fa fa-twitter"></i></a> <a
									title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a> <a
									title="Youtube" href="#"><i class="fa fa-youtube"></i></a> <a
									title="Vimeo" href="#"><i class="fa fa-vimeo"></i></a>
							</div>
						</div>
						<!-- offcanvas widget area end -->
					</div>
				</div>
			</aside>
			<!-- off-canvas menu end -->
		</header>
		<!-- Breadcrumb Area Start Here -->
		<div class="breadcrumbs-area position-relative">
			<div class="container">
				<div class="row">
					<div class="col-12 text-center">
						<div class="breadcrumb-content position-relative section-content">
							<h3 class="title-3">Product Details</h3>
							<ul>
								<li><a href="/">Home</a></li>
								<li>Product Details</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Breadcrumb Area End Here -->










		<!-- 상품 상세 파트 시작 -->


		<!-- Single Product Main Area Start -->
		<div class="single-product-main-area">
			<div class="container container-default custom-area">
				<div class="row">
					<input type="hidden" name="product_img"
						value="${productDetails.product_img }">

					<div class="col-lg-5 col-custom">
						<div class="product-details-img horizontal-tab">
							<div class="product-slider popup-gallery product-details_slider"
								data-slick-options='{
                        "slidesToShow": 1,
                        "arrows": false,
                        "fade": true,
                        "draggable": false,
                        "swipe": false,
                        "asNavFor": ".pd-slider-nav"
                        }'>

								<div class="single-image border">
									<!-- <a href="assets/images/product/large-size/1.jpg"> -->
									<!-- <img src="assets/images/product/large-size/1.jpg" alt="Product"> -->

									<a href="assets/images/${productDetails.product_img}.png">
										<img src="assets/images/${productDetails.product_img}.png"
										alt="Product">
									</a>
								</div>

								<div class="single-image border">
									<a href="assets/images/product/large-size/2.jpg"> <img
										src="assets/images/product/large-size/2.jpg" alt="Product">
									</a>
								</div>
								<div class="single-image border">
									<a href="assets/images/product/large-size/3.jpg"> <img
										src="assets/images/product/large-size/3.jpg" alt="Product">
									</a>
								</div>
								<div class="single-image border">
									<a href="assets/images/product/large-size/4.jpg"> <img
										src="assets/images/product/large-size/4.jpg" alt="Product">
									</a>
								</div>
								<div class="single-image border">
									<a href="assets/images/product/large-size/5.jpg"> <img
										src="assets/images/product/large-size/5.jpg" alt="Product">
									</a>
								</div>
								<div class="single-image border">
									<a href="assets/images/product/large-size/6.jpg"> <img
										src="assets/images/product/large-size/6.jpg" alt="Product">
									</a>
								</div>
								<div class="single-image border">
									<a href="assets/images/product/large-size/7.jpg"> <img
										src="assets/images/product/large-size/7.jpg" alt="Product">
									</a>
								</div>
							</div>
							<div class="pd-slider-nav product-slider"
								data-slick-options='{
                        "slidesToShow": 4,
                        "asNavFor": ".product-details_slider",
                        "focusOnSelect": true,
                        "arrows" : false,
                        "spaceBetween": 30,
                        "vertical" : false
                        }'
								data-slick-responsive='[
                            {"breakpoint":1501, "settings": {"slidesToShow": 4}},
                            {"breakpoint":1200, "settings": {"slidesToShow": 4}},
                            {"breakpoint":992, "settings": {"slidesToShow": 4}},
                            {"breakpoint":575, "settings": {"slidesToShow": 3}}
                        ]'>

								<c:set var="sub_img_1"
									value="${productDetails.product_sub_img_1}" scope="session" />
								<c:set var="sub_img_2"
									value="${productDetails.product_sub_img_2}" scope="session" />
								<c:set var="sub_img_3"
									value="${productDetails.product_sub_img_3}" scope="session" />
								<c:set var="sub_img_4"
									value="${productDetails.product_sub_img_4}" scope="session" />

								<div class="single-thumb border">
									<c:if test="${not empty sub_img_1}">
										<img
											src="assets/images/${productDetails.product_sub_img_1}.png"
											alt="Product Thumnail">
									</c:if>
								</div>
								
								<div class="single-thumb border">
									<c:if test="${not empty sub_img_2}">
										<img
											src="assets/images/${productDetails.product_sub_img_2}.png"
											alt="Product Thumnail">
									</c:if>
								</div>
								
								<div class="single-thumb border">
									<c:if test="${not empty sub_img_3}">
										<img
											src="assets/images/${productDetails.product_sub_img_3}.png"
											alt="Product Thumnail">
									</c:if>
								</div>
								
								<div class="single-thumb border">
									<c:if test="${not empty sub_img_4}">
										<img
											src="assets/images/${productDetails.product_sub_img_4}.png"
											alt="Product Thumnail">
									</c:if>
								</div>
								
								


							</div>
						</div>
					</div>
					<div class="col-lg-7 col-custom">
						<div class="product-summery position-relative">
							<div class="product-head mb-3">
								<h2 class="product-title">${productDetails.product_name}</h2>
							
							</div>
							<div class="price-box mb-2">
								<span class="regular-price"></span>
								<fmt:formatNumber value="${productDetails.product_price}"
									type="currency" currencySymbol="￦ " />
								<!-- <span class="old-price"><del>$90.00</del></span> -->
							</div>
							<div class="product-rating mb-3">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
									class="fa fa-star-o"></i>
							</div>

							<p class="desc-content mb-5">${productDetails.product_description_summary}
							</p>
							<div class="quantity-with_btn mb-4">
								<div class="quantity" name="div_quantity" id="div_quantity" onclick="click">
									<div class="cart-plus-minus">
										<input class="cart-plus-minus-box" name="cart_quantity" value="1" id="cart_quantity" type="text">
										<div id="down">-</div>
										<div id="up">+</div>
									</div>
								</div>
								<div class="add-to_cart">
									<button class="btn obrien-button primary-btn" id="cart" href="cartList">Add
										to cart</button>
										
										<button class="btn obrien-button primary-btn" id="wish" href="wishList">Add
										to wishlist</button>
										
								</div>
							</div>
							<div class="buy-button mb-5">
								<a href="#" class="btn obrien-button-3 black-button">Buy it
									now</a>
							</div>
							<div class="social-share mb-4">
								<span>Share :</span> <a href="#"><i
									class="fa fa-facebook-square facebook-color"></i></a> <a href="#"><i
									class="fa fa-twitter-square twitter-color"></i></a> <a href="#"><i
									class="fa fa-linkedin-square linkedin-color"></i></a> <a href="#"><i
									class="fa fa-pinterest-square pinterest-color"></i></a>
							</div>
							<div class="payment">
								<a href="#"><img class="border"
									src="assets/images/payment/img-payment.png" alt="Payment"></a>
							</div>
						</div>
					</div>
				</div>
</form>
				<!--  <상품 상세파트 리뷰위 > -->












				<div class="row mt-no-text">
					<div class="col-lg-12">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a
								class="nav-link active text-uppercase" id="home-tab"
								data-bs-toggle="tab" href="#connect-1" role="tab"
								aria-selected="true">Description</a></li>
							<li class="nav-item"><a class="nav-link text-uppercase"
								id="profile-tab" data-bs-toggle="tab" href="#connect-2"
								role="tab" aria-selected="false">Reviews</a></li>
							<li class="nav-item"><a class="nav-link text-uppercase"
								id="contact-tab" data-bs-toggle="tab" href="#connect-3"
								role="tab" aria-selected="false">Shipping Policy</a></li>
							<li class="nav-item"><a class="nav-link text-uppercase"
								id="review-tab" data-bs-toggle="tab" href="#connect-4"
								role="tab" aria-selected="false">Size Chart</a></li>
						</ul>
						<div class="tab-content mb-text" id="myTabContent">
							<div class="tab-pane fade show active" id="connect-1"
								role="tabpanel" aria-labelledby="home-tab">
								<div class="desc-content">
									<p class="mb-3">${productDetails.product_description}</p>
								</div>
							</div>
							<div class="tab-pane fade" id="connect-2" role="tabpanel"
								aria-labelledby="profile-tab">
								<!-- Start Single Content -->
								<div class="product_tab_content  border p-3">
									<div class="review_address_inner">
										<!-- Start Single Review -->
										<div class="pro_review mb-5">
											<div class="review_thumb">
												<img alt="review images" src="assets/images/review/1.jpg">
											</div>
											<div class="review_details">
												<div class="review_info mb-2">
													<div class="product-rating mb-2">
														<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
															class="fa fa-star-o"></i>
													</div>
													<h5>
														Admin - <span> December 19, 2020</span>
													</h5>
												</div>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing
													elit. Proin in viverra ex, vitae vestibulum arcu. Duis
													sollicitudin metus sed lorem commodo, eu dapibus libero
													interdum. Morbi convallis viverra erat, et aliquet orci
													congue vel. Integer in odio enim. Pellentesque in dignissim
													leo. Vivamus varius ex sit amet quam tincidunt iaculis.</p>
											</div>
										</div>
										<!-- End Single Review -->
									</div>
									<!-- Start RAting Area -->
									<div class="rating_wrap">
										<h5 class="rating-title-1 mb-2">Add a review</h5>
										<p class="mb-2">Your email address will not be published.
											Required fields are marked *</p>
										<h6 class="rating-title-2 mb-2">Your Rating</h6>
										<div class="rating_list mb-4">
											<div class="review_info">
												<div class="product-rating mb-3">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
														class="fa fa-star-o"></i>
												</div>
											</div>
										</div>
									</div>
									<!-- End RAting Area -->
									<div class="comments-area comments-reply-area">
										<div class="row">
											<div class="col-lg-12 col-custom">
												<form action="#" class="comment-form-area">
													<div class="row comment-input">
														<div class="col-md-6 col-custom comment-form-author mb-3">
															<label>Name <span class="required">*</span></label> <input
																type="text" required="required" name="Name">
														</div>
														<div class="col-md-6 col-custom comment-form-emai mb-3">
															<label>Email <span class="required">*</span></label> <input
																type="text" required="required" name="email">
														</div>
													</div>
													<div class="comment-form-comment mb-3">
														<label>Comment</label>
														<textarea class="comment-notes" required="required"></textarea>
													</div>
													<div class="comment-form-submit">
														<input type="submit" value="Submit"
															class="comment-submit btn obrien-button primary-btn">
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<!-- End Single Content -->
							</div>
							<div class="tab-pane fade" id="connect-3" role="tabpanel"
								aria-labelledby="contact-tab">
								<div class="shipping-policy">
									<h4 class="title-3 mb-4">Shipping policy for our store</h4>
									<p class="desc-content mb-2">Lorem ipsum dolor sit amet,
										consectetuer adipiscing elit, sed diam nonummy nibh euismod
										tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut
										wisi enim ad minim veniam, quis nostrud exerci tation
										ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
										consequat. Duis autem vel eum iriure dolor in hendrerit in
										vulputate</p>
									<ul class="policy-list mb-2">
										<li>1-2 business days (Typically by end of day)</li>
										<li><a href="#">30 days money back guaranty</a></li>
										<li>24/7 live support</li>
										<li>odio dignissim qui blandit praesent</li>
										<li>luptatum zzril delenit augue duis dolore</li>
										<li>te feugait nulla facilisi.</li>
									</ul>
									<p class="desc-content mb-2">Nam liber tempor cum soluta
										nobis eleifend option congue nihil imperdiet doming id quod
										mazim placerat facer possim assum. Typi non habent claritatem
										insitam; est usus legentis in iis qui facit eorum</p>
									<p class="desc-content mb-2">claritatem. Investigationes
										demonstraverunt lectores legere me lius quod ii legunt
										saepius. Claritas est etiam processus dynamicus, qui sequitur
										mutationem consuetudium lectorum. Mirum est notare quam
										littera gothica, quam nunc putamus parum claram, anteposuerit
										litterarum formas humanitatis per</p>
									<p class="desc-content mb-2">seacula quarta decima et
										quinta decima. Eodem modo typi, qui nunc nobis videntur parum
										clari, fiant sollemnes in futurum.</p>
								</div>
							</div>
							<div class="tab-pane fade" id="connect-4" role="tabpanel"
								aria-labelledby="review-tab">
								<div class="size-tab table-responsive-lg">
									<h4 class="title-3 mb-4">Size Chart</h4>
									<table class="table border">
										<tbody>
											<tr>
												<td class="cun-name"><span>UK</span></td>
												<td>18</td>
												<td>20</td>
												<td>22</td>
												<td>24</td>
												<td>26</td>
											</tr>
											<tr>
												<td class="cun-name"><span>European</span></td>
												<td>46</td>
												<td>48</td>
												<td>50</td>
												<td>52</td>
												<td>54</td>
											</tr>
											<tr>
												<td class="cun-name"><span>usa</span></td>
												<td>14</td>
												<td>16</td>
												<td>18</td>
												<td>20</td>
												<td>22</td>
											</tr>
											<tr>
												<td class="cun-name"><span>Australia</span></td>
												<td>28</td>
												<td>10</td>
												<td>12</td>
												<td>14</td>
												<td>16</td>
											</tr>
											<tr>
												<td class="cun-name"><span>Canada</span></td>
												<td>24</td>
												<td>18</td>
												<td>14</td>
												<td>42</td>
												<td>36</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Single Product Main Area End -->












		<!-- Support Area Start Here -->
		<div class="support-area">
			<div class="container container-default custom-area">
				<div class="row">
					<div class="col-lg-12 col-custom">
						<div class="support-wrapper d-flex">
							<div class="support-content">
								<h1 class="title">Need Help </h1>
								<p class="desc-content">Call our support 24/7 at
									01234-567-890</p>
							</div>
							<div class="support-button d-flex align-items-center">
								<a class="obrien-button primary-btn" href="contactUs">Contact
									now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Support Area End Here -->
		<!-- Footer Area Start Here -->
		<footer class="footer-area">
			<div class="footer-widget-area">
				<div class="container container-default custom-area">
					<div class="row">
						<div class="col-12 col-sm-12 col-md-12 col-lg-3 col-custom">
							<div class="single-footer-widget m-0">
								<div class="footer-logo">
									<a href="/"> <img src="assets/images/logo/footer.png"
										alt="Logo Image">
									</a>
								</div>
								<p class="desc-content">Obrien is the best parts shop of
									your daily nutritions. What kind of nutrition do you need you
									can get here soluta nobis</p>
								<div class="social-links">
									<ul class="d-flex">
										<li><a class="border rounded-circle" href="#"
											title="Facebook"> <i class="fa fa-facebook-f"></i>
										</a></li>
										<li><a class="border rounded-circle" href="#"
											title="Twitter"> <i class="fa fa-twitter"></i>
										</a></li>
										<li><a class="border rounded-circle" href="#"
											title="Linkedin"> <i class="fa fa-linkedin"></i>
										</a></li>
										<li><a class="border rounded-circle" href="#"
											title="Youtube"> <i class="fa fa-youtube"></i>
										</a></li>
										<li><a class="border rounded-circle" href="#"
											title="Vimeo"> <i class="fa fa-vimeo"></i>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">Information</h2>
								<ul class="widget-list">
									<li><a href="aboutUs">Our Company</a></li>
									<li><a href="contactUs">Contact Us</a></li>
									<li><a href="aboutUs">Our Services</a></li>
									<li><a href="aboutUs">Why We?</a></li>
									<li><a href="aboutUs">Careers</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">Quicklink</h2>
								<ul class="widget-list">
									<li><a href="aboutUs">About</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="shop.html">Shop</a></li>
									<li><a href="cartList">Cart</a></li>
									<li><a href="contactUs">Contact</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">Support</h2>
								<ul class="widget-list">
									<li><a href="contactUs">Online Support</a></li>
									<li><a href="contactUs">Shipping Policy</a></li>
									<li><a href="contactUs">Return Policy</a></li>
									<li><a href="contactUs">Privacy Policy</a></li>
									<li><a href="contactUs">Terms of Service</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-3 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">See Information</h2>
								<div class="widget-body">
									<address>
										123, H2, Road #21, Main City, Your address goes here.<br>Phone:
										01254 698 785, 36598 254 987<br>Email:
										https://example.com
									</address>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-copyright-area">
				<div class="container custom-area">
					<div class="row">
						<div class="col-12 text-center col-custom">
							<div class="copyright-content">
								<p>
									Copyright © 2020 <a href="https://hasthemes.com/"
										title="https://hasthemes.com/">HasThemes</a> | Built
									with&nbsp;<strong>Obrien</strong>&nbsp;by <a
										href="https://hasthemes.com/" title="https://hasthemes.com/">HasThemes</a>.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- Footer Area End Here -->
	</div>



	<!-- Scroll to Top Start -->
	<a class="scroll-to-top" href="#"> <i class="ion-chevron-up"></i>
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