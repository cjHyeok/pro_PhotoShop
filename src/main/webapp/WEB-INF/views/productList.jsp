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
	href="./assets/images/favicon.ico">

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

<body>

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
										<a href="./"> <img class="img-full"
											src="assets/images/logo/logo.png" alt="Header Logo">
										</a>
									</div>
								</div>
								<div class="col-lg-8 col-xl-7 position-static d-none d-lg-block col-custom">
									<nav class="main-nav d-flex justify-content-center">
										<ul class="nav">
											<li><a href="./aboutUs"> <span class="menu-text">소개</span></a></li>
											
											<li><a href="./productItem"> <span class="menu-text">상품 관리</span></a></li>
											
											 
											<li><a> <span class="menu-text">캘리그라피</span><i class="fa fa-angle-down"></i></a> 
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=액자">액자</a></li>
														<li><a href="./productList?category_name=캔버스">캔버스</a></li>
														<li><a href="./productList?category_name=엽서">엽서</a></li>
														<li><a href="./productList?category_name=캘리키트">캘리키트</a></li> 
													</ul>
												</div>
											</li>
											
											
											<li><a> <span class="menu-text">그림</span><i class="fa fa-angle-down"></i></a> 
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=그림액자">액자</a></li>
														<li><a href="./productList?category_name=그림캔버스">캔버스</a></li>
														<li><a href="./productList?category_name=그림엽서">엽서</a></li>
													</ul>
												</div>
											</li>										
											
												
											<li><a> <span class="menu-text">스탠드</span><i class="fa fa-angle-down"></i></a> 
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=무드등">무드등</a></li>
													</ul>
												</div>
											</li>	

											<li><a> <span class="menu-text">액세사리</span><i class="fa fa-angle-down"></i></a> 
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=골프공캘리">골프공캘리</a></li>
														<li><a href="./productList?category_name=봉투">봉투</a></li>
													</ul>
												</div> 
											</li>
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
														<span><a href="./loginCheck/logout">로그아웃</a></span>
														<span><a href="./memberForm">회원가입</a></span>
													</c:when>
													<c:otherwise>
														<span><a href="./loginForm">로그인</a></span>
														<span><a href="./memberForm">회원가입</a></span>
													</c:otherwise>
												</c:choose></li> &nbsp;&nbsp;
											<li class="minicart-wrap"><a href="./#"
												class="minicart-btn toolbar-btn"> <i class="ion-bag"></i>
													<span class="cart-item_count">3</span>
											</a>
												<div
													class="cart-item-wrapper dropdown-sidemenu dropdown-hover-2">
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="./cartList"><img
																src="assets/images/cart/1.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="./cartList">11. Product with video - navy</a>
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
															<a href="./cartList"><img
																src="assets/images/cart/2.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="./cartList"
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
															<a href="./cartList"><img
																src="assets/images/cart/3.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="./cartList">1. New and sale badge product - s
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
														<a class="obrien-button white-btn" href="./cartList">View
															cart</a> <a class="obrien-button white-btn"
															href="./checkout.html">Checkout</a>
													</div>
												</div></li>
											<li class="mobile-menu-btn d-lg-none"><a
												class="off-canvas-btn" href="./#"> <i class="fa fa-bars"></i>
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
										<a href="./"> <img class="img-full"
											src="assets/images/logo/logo.png" alt="Header Logo">
										</a>
									</div>
								</div>
								<div
									class="col-lg-8 col-xl-7 position-static d-none d-lg-block col-custom">
									<nav class="main-nav d-flex justify-content-center">
										<ul class="nav">
											
												<li><a href="./"> <span class="menu-text">
														Home</span>
											</a></li>
											<li><a class="active" href="./shop.html"> <span
													class="menu-text">아트스타일</span> <i class="fa fa-angle-down"></i>
											</a>
												<div class="mega-menu dropdown-hover">
													<div class="menu-colum">
														<ul>
															<li><span class="mega-menu-text">계절</span></li>
															<li><a href="./productList?category_name=봄">봄</a></li>
															<li><a href="./productList?category_name=여름">여름</a></li>
															<li><a href="./productList?category_name=가을">가을</a></li>
															<li><a href="./productList?category_name=겨울">겨울</a></li>

															<li><a href="./productList">상품리스트</a></li>
														</ul>
													</div>

												</div></li>
												
												
											<li><a href="./blog-details-fullwidth.html"> <span
													class="menu-text"> 추천 상품</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="./blog.html">인기 상품</a></li>
												</ul></li>
											<li><a href="./blog-details-fullwidth.html"> <span
													class="menu-text">상품 목록</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="./blog.html">일러스트</a></li>
													<li><a href="./blog.html">풍경화</a></li>
													<li><a href="./blog.html">캘리그라피</a></li>
												</ul></li>
											<li><a href="./#"> <span class="menu-text">Page</span>
													<i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="./faqForm">FAQ</a></li>
													<li><a href="./myAccount">My Account</a></li>
													<li><a href="./loginForm">로그인</a></li>
													<li><a href="./memberForm">회원가입</a></li>
												</ul></li>
											<li><a href="./aboutUs"> <span class="menu-text">
														About</span>
											</a></li>
											
											<li><a href="./contactUs"> <span class="menu-text">Contact</span>
											</a></li>
										</ul>
									</nav>
								</div>
								<div class="col-lg-2 col-xl-3 col-sm-6 col-6 col-custom">
									<div class="header-right-area main-nav">
										<ul class="nav">
											<li class="login-register-wrap d-none d-xl-flex"><span><a
													href="./loginForm">로그인</a></span> <span><a
													href="./memberForm">회원가입</a></span></li>

											<li class="minicart-wrap"><a href="./#"
												class="minicart-btn toolbar-btn"> <i class="ion-bag"></i>
													<span class="cart-item_count">3</span>
											</a>
												<div
													class="cart-item-wrapper dropdown-sidemenu dropdown-hover-2">
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="./cartList"><img
																src="assets/images/cart/1.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="./cartList">11. Product with video - navy</a>
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
															<a href="./cartList"><img
																src="assets/images/cart/2.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="./cartList"
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
															<a href="./cartList"><img
																src="assets/images/cart/3.jpg" alt=""></a>
														</div>
														<div class="cart-text">
															<h5 class="title">
																<a href="./cartList">1. New and sale badge product - s
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
														<a class="obrien-button white-btn" href="./cartList">View
															cart</a> <a class="obrien-button white-btn"
															href="./checkout.html">Checkout</a>
													</div>
												</div></li>
											<li class="mobile-menu-btn d-lg-none"><a
												class="off-canvas-btn" href="./#mobileMenu"> <i
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
								<li><a href="./"> <span class="menu-text">
														Home</span>
											</a></li>
											<li><a class="active" href="./shop.html"> <span
													class="menu-text">아트스타일</span> <i class="fa fa-angle-down"></i>
											</a>
												<div class="mega-menu dropdown-hover">
													<div class="menu-colum">
														<ul>
															<li><span class="mega-menu-text">계절</span></li>
															<li><a href="./productList?category_name=봄">봄</a></li>
															<li><a href="./productList?category_name=여름">여름</a></li>
															<li><a href="./productList?category_name=가을">가을</a></li>
															<li><a href="./productList?category_name=겨울">겨울</a></li>

															<li><a href="./productList">상품리스트</a></li>
														</ul>
													</div>

												</div></li>
												
												
											<li><a href="./blog-details-fullwidth.html"> <span
													class="menu-text"> 추천 상품</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="./blog.html">인기 상품</a></li>
												</ul></li>
											<li><a href="./blog-details-fullwidth.html"> <span
													class="menu-text">상품 목록</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="./blog.html">일러스트</a></li>
													<li><a href="./blog.html">풍경화</a></li>
													<li><a href="./blog.html">캘리그라피</a></li>
												</ul></li>
											<li><a href="./#"> <span class="menu-text">Page</span>
													<i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="./faqForm">FAQ</a></li>
													<li><a href="./myAccount">My Account</a></li>
													<li><a href="./loginForm">로그인</a></li>
													<li><a href="./memberForm">회원가입</a></li>
												</ul></li>
											<li><a href="./aboutUs"> <span class="menu-text">
														About</span>
											</a></li>
									<li><a href="./contactUs">Contact</a></li>
								</ul>
							</nav>
							<!-- mobile menu navigation end -->
						</div>
						<!-- mobile menu end -->


						<div class="header-top-settings offcanvas-curreny-lang-support">
							<!-- mobile menu navigation start -->
							<nav>
								<ul class="mobile-menu">
									<li class="menu-item-has-children"><a href="./#">My
											Account</a>
										<ul class="dropdown">
											<li><a href="./loginForm">Login</a></li>
											<li><a href="./memberForm">Register</a></li>
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
										href="./info@yourdomain.com">(1245) 2456 012</a></li>
									<li><i class="fa fa-envelope"></i> <a
										href="./info@yourdomain.com">info@yourdomain.com</a></li>
								</ul>
							</div>
							<div class="off-canvas-widget-social">
								<a title="Facebook-f" href="./#"><i class="fa fa-facebook-f"></i></a>
								<a title="Twitter" href="./#"><i class="fa fa-twitter"></i></a> <a
									title="Linkedin" href="./#"><i class="fa fa-linkedin"></i></a> <a
									title="Youtube" href="./#"><i class="fa fa-youtube"></i></a> <a
									title="Vimeo" href="./#"><i class="fa fa-vimeo"></i></a>
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
							<h3 class="title-3">Shop Fullwidth</h3>
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
										<select class="form-control nice-select w-100">
											<option selected value="1">Alphabetically, A-Z</option>
											<option value="2">Sort by popularity</option>
											<option value="3">Sort by newness</option>
											<option value="4">Sort by price: low to high</option>
											<option value="5">Sort by price: high to low</option>
											<option value="6">Product Name: Z</option>
										</select>
									</div>
								</form>
							</div>
						</div>




						<!--shop toolbar end-->
						<!-- Shop Wrapper Start -->
						<div class="row shop_wrapper grid_4">
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
														currencySymbol="￦ " /></span>

												<!-- <span class="old-price"><del>$50.00</del></span> -->
											</div>
										</div>
										<div class="add-action d-flex position-absolute">
											<a href="./cartList" title="Add To cart"> <i
												class="ion-bag"></i>
											</a> <a href="./compare.html" title="Compare"> <i
												class="ion-ios-loop-strong"></i>
											</a> <a href="./wishlist.html" title="Add To Wishlist"> <i
												class="ion-ios-heart-outline"></i>
											</a> <a href="./#exampleModalCenter" data-bs-toggle="modal"
												title="Quick View"> <i class="ion-eye"></i>
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
												<a href="./cartList" title="Add To cart"> <i
													class="ion-bag"></i>
												</a> <a href="./compare.html" title="Compare"> <i
													class="ion-ios-loop-strong"></i>
												</a> <a href="./wishlist.html" title="Add To Wishlist"> <i
													class="ion-ios-heart-outline"></i>
												</a> <a href="./#exampleModalCenter" data-bs-toggle="modal"
													title="Quick View"> <i class="ion-eye"></i>
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

							</c:forEach>

						</div>











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
											<li><a href="./#">2</a></li>
											<li class="next"><a href="./#" title="Next >>"><i
													class="ion-ios-arrow-thin-right"></i></a></li>
										</ul>
									</nav>
									<p class="desc-content text-center text-sm-right">Showing 1
										- 12 of 34 result</p>
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
								<p class="desc-content">Call our support 24/7 at
									01234-567-890</p>
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
		<footer class="footer-area">
			<div class="footer-widget-area">
				<div class="container container-default custom-area">
					<div class="row">
						<div class="col-12 col-sm-12 col-md-12 col-lg-3 col-custom">
							<div class="single-footer-widget m-0">
								<div class="footer-logo">
									<a href="./"> <img src="assets/images/logo/footer.png"
										alt="Logo Image">
									</a>
								</div>
								<p class="desc-content">Obrien is the best parts shop of
									your daily nutritions. What kind of nutrition do you need you
									can get here soluta nobis</p>
								<div class="social-links">
									<ul class="d-flex">
										<li><a class="border rounded-circle" href="./#"
											title="Facebook"> <i class="fa fa-facebook-f"></i>
										</a></li>
										<li><a class="border rounded-circle" href="./#"
											title="Twitter"> <i class="fa fa-twitter"></i>
										</a></li>
										<li><a class="border rounded-circle" href="./#"
											title="Linkedin"> <i class="fa fa-linkedin"></i>
										</a></li>
										<li><a class="border rounded-circle" href="./#"
											title="Youtube"> <i class="fa fa-youtube"></i>
										</a></li>
										<li><a class="border rounded-circle" href="./#"
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
									<li><a href="./aboutUs">Our Company</a></li>
									<li><a href="./contactUs">Contact Us</a></li>
									<li><a href="./aboutUs">Our Services</a></li>
									<li><a href="./aboutUs">Why We?</a></li>
									<li><a href="./aboutUs">Careers</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">Quicklink</h2>
								<ul class="widget-list">
									<li><a href="./aboutUs">About</a></li>
									<li><a href="./blog.html">Blog</a></li>
									<li><a href="./shop.html">Shop</a></li>
									<li><a href="./cartList">Cart</a></li>
									<li><a href="./contactUs">Contact</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">Support</h2>
								<ul class="widget-list">
									<li><a href="./contactUs">Online Support</a></li>
									<li><a href="./contactUs">Shipping Policy</a></li>
									<li><a href="./contactUs">Return Policy</a></li>
									<li><a href="./contactUs">Privacy Policy</a></li>
									<li><a href="./contactUs">Terms of Service</a></li>
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
									Copyright © 2020 <a href="./https://hasthemes.com/"
										title="https://hasthemes.com/">HasThemes</a> | Built
									with&nbsp;<strong>Obrien</strong>&nbsp;by <a
										href="./https://hasthemes.com/" title="https://hasthemes.com/">HasThemes</a>.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
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