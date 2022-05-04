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

	$(document).ready(function() {
		$("#product_cate_num").on("change", function() {
			var product_cate_num = $(this).val();
			$("#product_category_id").val(product_cate_num);
		});
		
		
		$("form").on("submit", function(event) {
			var product_id = $("#product_id").val();
			var product_category_id = $("#product_category_id").val();
			var product_name = $("#product_name").val();
			var product_price = $("#product_price").val();
			var product_quantity = $("#product_quantity").val();
			var product_description_summary = $("#product_description_summary").val();
			var product_description = $("#product_description").val();
			var product_sales_state = $("#product_sales_state").val();
			var product_img = $("#product_img").val();
			var product_sub_img_1 = $("#product_sub_img_1").val();
			var product_sub_img_2 = $("#product_sub_img_2").val();
			var product_sub_img_3 = $("#product_sub_img_3").val();
			var product_sub_img_4 = $("#product_sub_img_4").val();
			
			console.log("result =" + result);
			
			if (product_id.length < 8) {
				alert("상품 번호를 8자리 이상 입력해주세요")
				$("#product_id").focus();
				event.preventDefault();
			} else if (product_category_id.length < 1) {
				alert("카테고리 번호를 입력해주세요")
				$("#product_category_id").focus();
				event.preventDefault();
			
			} else if (product_name.length < 1) {
				alert("상품 이름을 입력해주세요")
				$("#product_name").focus();
				event.preventDefault();
			
			} else if (product_price.length < 1) {
				alert("상품 가격을 입력해주세요")
				$("#product_price").focus();
				event.preventDefault();
			
			} else if (product_quantity < 1) {
				alert("상품 수량을 입력해주세요")
				$("#product_quantity").focus();
				event.preventDefault();
			
			} else if (product_description_summary.length < 1) {
				alert("간단한 상품 설명 입력해주세요")
				$("#product_description_summary").focus();
				event.preventDefault();
			
			} else if (product_description.length < 1) {
				alert("자세한 상품 설명을 입력해주세요")
				$("#product_description").focus();
				event.preventDefault();
			
			} else if (product_sales_state.length < 1) {
				alert("상품 할인 상태를 입력해주세요")
				$("#product_sales_state").focus();
				event.preventDefault();
			
			} else if (product_img.length < 1) {
				alert("상품 메인 이미지를 넣어주세요")
				$("#product_img").focus();
				event.preventDefault();
			
			} 
			});
		
		
		
		
		
		});
		

</script>
<body>
<c:set var="xxx" value="${mDTO}" />

<c:set var="user_id" value="${xxx.user_id}" />
<c:set var="user_name" value="${xxx.user_name}" />
<c:set var="post" value="${xxx.post}" />
<c:set var="address" value="${xxx.address}" />
<c:set var="phone" value="${xxx.phone}" />



	<div class="contact-wrapper">
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
													<li><a href="frequently-questions.html">FAQ</a></li>
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
											<li>
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
													<li><a href="frequently-questions.html">FAQ</a></li>
													<li><a href="myAccount">My Account</a></li>
													<li><a href="loginForm">로그인</a></li>
													<li><a href="memberForm">회원가입</a></li>
												</ul></li>
											<li><a href="aboutUs"> <span class="menu-text">
														About</span>
											</a></li>
											<li><a href="contact-us.html"> <span
													class="menu-text">Contact</span>
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
																src="assets/images/cart/1.png" alt=""></a>
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
									<li><a href="/"> <span class="menu-text"> Home</span>
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
									<li><a href="#"> <span class="menu-text">Page</span> <i
											class="fa fa-angle-down"></i>
									</a>
										<ul class="dropdown-submenu dropdown-hover">
											<li><a href="frequently-questions.html">FAQ</a></li>
											<li><a href="myAccount">My Account</a></li>
											<li><a href="loginForm">로그인</a></li>
											<li><a href="memberForm">회원가입</a></li>
										</ul></li>
									<li><a href="aboutUs"> <span class="menu-text">
												About</span>
									</a></li>
									<li><a href="contact-us.html">Contact</a></li>
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
							<h3 class="title-3">Shopping Cart</h3>
							<ul>
								<li><a href="/">Home</a></li>
								<li>Cart</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Area End Here -->
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
 <!-- Login Area Start Here -->
        <div class="login-register-area mt-no-text mb-no-text">
            <div class="container container-default-2 custom-area">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-custom">
                        <div class="login-register-wrapper">
                            <div class="section-content text-center mb-5">
                                <h2 class="title-4 mb-2">상품 등록</h2>
                                
                            </div>
                            <form action="/productAdd" method="post">
                            
                            <div class="single-input-item mb-3">
                                    <input id="product_id" name="product_id" type="text" placeholder="상품 번호"> 
                                </div>
                            
                                <div class="single-input-item mb-3">
                                <input id="product_category_id"  type="text" placeholder="상품 카테고리"><span>
                                    <select id="product_cate_num" > <span id="result"></span>
                                    	<option value="1">1</option>
                                    	<option value="2">2</option>
                                    	<option value="3">3</option>
                                    </select>
                                </div>


                                <div class="single-input-item mb-3">
                                    <input id="product_name" name="product_name" type="text" placeholder="상품 이름"> 
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_price" name="product_price" type="text" placeholder="상품 가격">
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_quantity" name="product_quantity" type="text" placeholder="상품 수량">
                                </div>
                                
                                <div class="single-input-item mb-3">
                                    <input id="product_description_summary" name="product_description_summary" type="text"  style="padding: 30px 10px 150px;" placeholder="상품 설명">
                                
                                </div>                              
                                
                                <div class="single-input-item mb-3">
                                    <input id="product_description" name="product_description" type="text" style="padding: 40px 10px 250px;" placeholder="상품 상세 설명">
                                </div>
                                
                                <div class="single-input-item mb-3">
                                    <input id="product_sales_state" name="product_sales_state" type="text" placeholder="상품 상태">
                                </div>
                                
                                
                                
                                
                                
                                <div class="single-input-item mb-3">
                                    <input id="product_img" name="product_img" type="text" placeholder="상품 메인 사진"><!-- <span type="button">등록</span> -->
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_sub_img_1" name="product_sub_img_1" type="text" placeholder="상품 사진 1">
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_sub_img_2" name="product_sub_img_2" type="text" placeholder="상품 사진 2">
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_sub_img_3" name="product_sub_img_3" type="text" placeholder="상품 사진 3">
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_sub_img_4" name="product_sub_img_4" type="text" placeholder="싱픔 사진 4">
                                </div>
                                
                                <div class="single-input-item mb-3">
                                    <div class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                        <div class="remember-meta mb-3">
                                            <!-- <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="rememberMe">
                                                <label class="custom-control-label" for="rememberMe">Subscribe Our Newsletter</label>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                                <div class="single-input-item mb-3">
                                    <button class="btn obrien-button-2 primary-color">상품 등록</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Login Area End Here -->













<!-- Support Area Start Here -->
		<div class="support-area">
			<div class="container container-default custom-area">
				<div class="row">
					<div class="col-lg-12 col-custom">
						<div class="support-wrapper d-flex">
							<div class="support-content">
								<h1 class="title">Need Help ?</h1>
								<p class="desc-content">Call our support 24/7 at
									01234-567-890</p>
							</div>
							<div class="support-button d-flex align-items-center">
								<a class="obrien-button primary-btn" href="contact-us.html">Contact
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
									<li><a href="about-us.html">Our Company</a></li>
									<li><a href="contact-us.html">Contact Us</a></li>
									<li><a href="about-us.html">Our Services</a></li>
									<li><a href="about-us.html">Why We?</a></li>
									<li><a href="about-us.html">Careers</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">Quicklink</h2>
								<ul class="widget-list">
									<li><a href="about-us.html">About</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="shop.html">Shop</a></li>
									<li><a href="cartList">Cart</a></li>
									<li><a href="contact-us.html">Contact</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">Support</h2>
								<ul class="widget-list">
									<li><a href="contact-us.html">Online Support</a></li>
									<li><a href="contact-us.html">Shipping Policy</a></li>
									<li><a href="contact-us.html">Return Policy</a></li>
									<li><a href="contact-us.html">Privacy Policy</a></li>
									<li><a href="contact-us.html">Terms of Service</a></li>
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


