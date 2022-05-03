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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">
       <!--Bootstrap Js--> <!-- 이걸로 버전 맞췄음 -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script> 
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
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

<body>

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
													<i class="fa fa-angle-down"></i></a>
													
													
												<ul class="dropdown-submenu dropdown-hover">
												<c:choose>
													<c:when test="${!empty login }"> 
													
													<li><a href="frequently-questions.html">FAQ</a></li>
													<li><a href="/myAccount">My Account</a></li>
													<li><a href="loginForm">로그인</a></li>
													<li><a href="memberForm">회원가입</a></li>
													<li><a href="productList">상품리스트</a></li>
													<li><a href="cartList">카트리스트</a></li>
													<li><a href="wishList">위시리스트</a></li>
														
													</c:when>
													
													
													
													<c:otherwise>
														<li><a href="frequently-questions.html">FAQ</a></li>
														<li><a href="loginForm">로그인</a></li>
														<li><a href="memberForm">회원가입</a></li>
														<li><a href="productList">상품리스트</a></li>
														<li><a href="cartList">카트리스트</a></li>
														<li><a href="wishList">위시리스트</a></li>
													</c:otherwise>
												</c:choose>
												
												
												</ul>
												
											</li>
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
											<li class="login-register-wrap d-none d-xl-flex">
											<c:choose>
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
												</c:choose>
												</li> &nbsp;&nbsp;
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
											<li><a href="/"> <span class="menu-text">Home</span>
											</a></li>
											<li><a href="shop.html"> <span class="menu-text">Shop</span>
													<i class="fa fa-angle-down"></i>
											</a>
												<div class="mega-menu dropdown-hover">
													<div class="menu-colum">
														<ul>
															<li><span class="mega-menu-text">Shop</span></li>


														</ul>
													</div>
													<div class="menu-colum">
														<ul>
															<li><span class="mega-menu-text">Product</span></li>
															<li><a
																href="productDetails?product_id=${dto.product_id}"">Single
																	Product</a></li>
															<li><a href="variable-product-details.html">Variable
																	Product</a></li>
															<li><a href="external-product-details.html">External
																	Product</a></li>
															<li><a href="gallery-product-details.html">Gallery
																	Product</a></li>
															<li><a href="countdown-product-details.html">Countdown
																	Product</a></li>
														</ul>
													</div>
													<div class="menu-colum">
														<ul>
															<li><span class="mega-menu-text">Others</span></li>
															<li><a href="error-404.html">Error 404</a></li>
															<li><a href="compare.html">Compare Page</a></li>
															<li><a href="cartList">Cart Page</a></li>
															<li><a href="checkout.html">Checkout Page</a></li>
															<li><a href="wishlist.html">Wishlist Page</a></li>
														</ul>
													</div>
												</div></li>
											<li><a href="blog-details-fullwidth.html"> <span
													class="menu-text"> Blog</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="blog.html">Blog Left Sidebar</a></li>
													<li><a href="blog-list-right-sidebar.html">Blog
															List Right Sidebar</a></li>
													<li><a href="blog-list-fullwidth.html">Blog List
															Fullwidth</a></li>
													<li><a href="blog-grid.html">Blog Grid Page</a></li>
													<li><a href="blog-grid-right-sidebar.html">Blog
															Grid Right Sidebar</a></li>
													<li><a href="blog-grid-fullwidth.html">Blog Grid
															Fullwidth</a></li>
													<li><a href="blog-details-sidebar.html">Blog
															Details Sidebar</a></li>
													<li><a href="blog-details-fullwidth.html">Blog
															Details Fullwidth</a></li>
												</ul></li>
											<li><a href="#"> <span class="menu-text">
														Pages</span> <i class="fa fa-angle-down"></i>
											</a>
												<ul class="dropdown-submenu dropdown-hover">
													<li><a href="frequently-questions.html">FAQ</a></li>
													<li><a href="/loginCheck//myAccount">My Account</a></li>
													<li><a href="loginForm">Login</a></li>
													<li><a href="memberForm">Register</a></li>
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
													<c:when test="${!empty login }"> ${login.user_name }님  <!-- 확인용 -->
														<span><a href="/loginCheck/logout">logout</a></span>
														<span><a href="memberForm">Register</a></span>
													</c:when>
													<c:otherwise>
														<span><a href="loginForm">login</a></span>
														<span><a href="memberForm">Register</a></span>
													</c:otherwise>
												</c:choose></li>
											<!--                          2                   <li class="sidemenu-wrap d-none d-lg-flex">
                                                <a href="#">USD <i class="fa fa-caret-down"></i> </a>
                                                <ul class="dropdown-sidemenu dropdown-hover-2 dropdown-language">
                                                    <li><a href="#">USD - US Dollar</a></li>
                                                    <li><a href="#">EUR - Euro</a></li>
                                                    <li><a href="#">GBP - British Pound</a></li>
                                                    <li><a href="#">INR - Indian Rupee</a></li>
                                                    <li><a href="#">BDT - Bangladesh Taka</a></li>
                                                    <li><a href="#">JPY - Japan Yen</a></li>
                                                    <li><a href="#">CAD - Canada Dollar</a></li>
                                                    <li><a href="#">AUD - Australian Dollar</a></li>
                                                </ul>
                                            </li> -->
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
										
											<c:choose>
													<c:when test="${!empty login }"> 
													
													<li><a href="frequently-questions.html">FAQ</a></li>
													<li><a href="/myAccount">My Account</a></li>
													<li><a href="loginForm">로그인</a></li>
													<li><a href="memberForm">회원가입</a></li>
													<li><a href="productList">상품리스트</a></li>
													<li><a href="cartList">카트리스트</a></li>
													<li><a href="wishList">위시리스트</a></li>
														
													</c:when>
													
													
													
													<c:otherwise>
														<li><a href="frequently-questions.html">FAQ</a></li>
														<li><a href="loginForm">로그인</a></li>
														<li><a href="memberForm">회원가입</a></li>
														<li><a href="productList">상품리스트</a></li>
														<li><a href="cartList">카트리스트</a></li>
														<li><a href="wishList">위시리스트</a></li>
													</c:otherwise>
												</c:choose>
										</ul></li>
									<li><a href="aboutUs"> <span class="menu-text">
												About</span>
									</a></li>
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
											<c:choose>
												<c:when test="${!empty login }"> ${login.user_name }님  <!-- 확인용 -->
													<span><a href="/loginCheck/logout">logout</a></span>
													<span><a href="memberForm">Register</a></span>
												</c:when>
												<c:otherwise>
													<span><a href="loginForm">login</a></span>
													<span><a href="memberForm">Register</a></span>
												</c:otherwise>
											</c:choose>
										</ul></li>

								</ul>
							</nav>
                            <!-- mobile menu navigation end -->
                        </div>
                        <!-- mobile menu end -->
                        <div class="header-top-settings offcanvas-curreny-lang-support">
                            <!-- mobile menu navigation start -->
                            <nav>
                                <ul class="mobile-menu">
                                    <li class="menu-item-has-children"><a href="#">My Account</a>
                                        <ul class="dropdown">
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="Register.html">Register</a></li>
                                        </ul>
                                    </li>
                                    
                                </ul>
                            </nav>
                            <!-- mobile menu navigation end -->
                        </div>
                        <!-- offcanvas widget area start -->
                        <div class="offcanvas-widget-area">
                            <div class="top-info-wrap text-left text-black">
                                <ul>
                                    <li>
                                        <i class="fa fa-phone"></i>
                                        <a href="info@yourdomain.com">(1245) 2456 012</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope"></i>
                                        <a href="info@yourdomain.com">info@yourdomain.com</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="off-canvas-widget-social">
                                <a title="Facebook-f" href="#"><i class="fa fa-facebook-f"></i></a>
                                <a title="Twitter" href="#"><i class="fa fa-twitter"></i></a>
                                <a title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a>
                                <a title="Youtube" href="#"><i class="fa fa-youtube"></i></a>
                                <a title="Vimeo" href="#"><i class="fa fa-vimeo"></i></a>
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
                            <h3 class="title-3">My Account</h3>
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li>My Account</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End Here -->
        <!-- my account wrapper start -->
        <div class="my-account-wrapper mt-no-text mb-no-text">
            <div class="container container-default-2 custom-area">
                <div class="row">
                    <div class="col-lg-12 col-custom">
                        <!-- My Account Page Start -->
                        <div class="myaccount-page-wrapper">
                            <!-- My Account Tab Menu Start -->
                            <div class="row">
                                <div class="col-lg-3 col-md-4 col-custom">
                                    <div class="myaccount-tab-menu nav" role="tablist">
                                        <a href="#dashboad" class="active" data-bs-toggle="tab"><i class="fa fa-dashboard"></i>
                                            Dashboard</a>
                                        <a href="#orders" data-bs-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                                            Orders</a>
                                        <a href="#download" data-bs-toggle="tab"><i class="fa fa-cloud-download"></i>
                                            Download</a>
                                        <a href="#payment-method" data-bs-toggle="tab"><i class="fa fa-credit-card"></i>
                                            Payment
                                            Method</a>
                                        <a href="#address-edit" data-bs-toggle="tab"><i class="fa fa-map-marker"></i>
                                            address</a>
                                        <a href="#account-info" data-bs-toggle="tab"><i class="fa fa-user"></i> Account
                                            Details</a>
                                        <a href="login.html"><i class="fa fa-sign-out"></i> Logout</a>
                                    </div>
                                </div>
                                <!-- My Account Tab Menu End -->

                                <!-- My Account Tab Content Start -->
                                <div class="col-lg-9 col-md-8 col-custom">
                                    <div class="tab-content" id="myaccountContent">
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Dashboard</h3>
                                                <div class="welcome">
                                                    <p>Hello, <strong>${login.user_id}</strong> (If Not <strong>${login.user_id} !</strong><a href="login-register.html" class="logout"> Logout</a>)</p>
                                                </div>
                                                <p class="mb-0">From your account dashboard. you can easily check & view your recent orders, manage your shipping and billing addresses and edit your password and account details.</p>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="orders" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Orders</h3>
                                                <div class="myaccount-table table-responsive text-center">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>Order</th>
                                                                <th>Date</th>
                                                                <th>Status</th>
                                                                <th>Total</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="order" items="${orderList}" varStatus="status">
                                                       		
                                                            <tr>
                                                                <td>${order.rnum}</td>
                                                                <td><fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${order.order_date}"/><c:out value="${dateTempParse}"/></td>
                                                                <td>${order.order_state}</td>
                                                                <td>${order.total_price}</td>
                                                                <td><a href="cart.html" class="btn obrien-button-2 primary-color rounded-0">View</a></td>
                                                            </tr>
                                                            
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="download" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Downloads</h3>
                                                <div class="myaccount-table table-responsive text-center">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>Product</th>
                                                                <th>Date</th>
                                                                <th>Expire</th>
                                                                <th>Download</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Haven - Free Real Estate PSD Template</td>
                                                                <td>Aug 22, 2018</td>
                                                                <td>Yes</td>
                                                                <td><a href="#" class="btn obrien-button-2 primary-color rounded-0"><i class="fa fa-cloud-download mr-2"></i>Download File</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>HasTech - Profolio Business Template</td>
                                                                <td>Sep 12, 2018</td>
                                                                <td>Never</td>
                                                                <td><a href="#" class="btn obrien-button-2 primary-color rounded-0"><i class="fa fa-cloud-download mr-2"></i>Download File</a></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Payment Method</h3>
                                                <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Billing Address</h3>
                                                <address>
                                                    <p><strong>Alex Aya</strong></p>
                                                    <p>1355 Market St, Suite 900 <br>
                                                    San Francisco, CA 94103</p>
                                                    <p>Mobile: (123) 456-7890</p>
                                                </address>
                                                <a href="#" class="btn obrien-button-2 primary-color rounded-0"><i class="fa fa-edit mr-2"></i>Edit Address</a>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="account-info" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Account Details</h3>
                                                <div class="account-details-form">
                                                    <form action="#">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-custom">
                                                                <div class="single-input-item mb-3">
                                                                    <label for="first-name" class="required mb-1">First Name</label>
                                                                    <input type="text" id="first-name" placeholder="First Name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-custom">
                                                                <div class="single-input-item mb-3">
                                                                    <label for="last-name" class="required mb-1">Last Name</label>
                                                                    <input type="text" id="last-name" placeholder="Last Name" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="single-input-item mb-3">
                                                            <label for="display-name" class="required mb-1">Display Name</label>
                                                            <input type="text" id="display-name" placeholder="Display Name" />
                                                        </div>
                                                        <div class="single-input-item mb-3">
                                                            <label for="email" class="required mb-1">Email Addres</label>
                                                            <input type="email" id="email" placeholder="Email Address" />
                                                        </div>
                                                        <fieldset>
                                                            <legend>Password change</legend>
                                                            <div class="single-input-item mb-3">
                                                                <label for="current-pwd" class="required mb-1">Current Password</label>
                                                                <input type="password" id="current-pwd" placeholder="Current Password" />
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-6 col-custom">
                                                                    <div class="single-input-item mb-3">
                                                                        <label for="new-pwd" class="required mb-1">New Password</label>
                                                                        <input type="password" id="new-pwd" placeholder="New Password" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-custom">
                                                                    <div class="single-input-item mb-3">
                                                                        <label for="confirm-pwd" class="required mb-1">Confirm Password</label>
                                                                        <input type="password" id="confirm-pwd" placeholder="Confirm Password" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </fieldset>
                                                        <div class="single-input-item single-item-button">
                                                            <button class="btn obrien-button primary-btn">Save Changes</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div> <!-- Single Tab Content End -->
                                    </div>
                                </div> <!-- My Account Tab Content End -->
                            </div>
                        </div> <!-- My Account Page End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- my account wrapper end -->
        <!-- Support Area Start Here -->
        <div class="support-area">
            <div class="container container-default custom-area">
                <div class="row">
                    <div class="col-lg-12 col-custom">
                        <div class="support-wrapper d-flex">
                            <div class="support-content">
                                <h1 class="title">Need Help ?</h1>
                                <p class="desc-content">Call our support 24/7 at 01234-567-890</p>
                            </div>
                            <div class="support-button d-flex align-items-center">
                                <a class="obrien-button primary-btn" href="contact-us.html">Contact now</a>
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
                                    <a href="index.html">
                                        <img src="assets/images/logo/footer.png" alt="Logo Image">
                                    </a>
                                </div>
                                <p class="desc-content">Obrien is the best parts shop of your daily nutritions. What kind of nutrition do you need you can get here soluta nobis</p>
                                <div class="social-links">
                                    <ul class="d-flex">
                                        <li>
                                            <a class="border rounded-circle" href="#" title="Facebook">
                                                <i class="fa fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="border rounded-circle" href="#" title="Twitter">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="border rounded-circle" href="#" title="Linkedin">
                                                <i class="fa fa-linkedin"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="border rounded-circle" href="#" title="Youtube">
                                                <i class="fa fa-youtube"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="border rounded-circle" href="#" title="Vimeo">
                                                <i class="fa fa-vimeo"></i>
                                            </a>
                                        </li>
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
                                    <li><a href="cart.html">Cart</a></li>
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
                                    <address>123, H2, Road #21, Main City, Your address goes here.<br>Phone: 01254 698 785, 36598 254 987<br>Email: https://example.com</address>
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
                                <p>Copyright © 2020 <a href="https://hasthemes.com/" title="https://hasthemes.com/">HasThemes</a> | Built with&nbsp;<strong>Obrien</strong>&nbsp;by <a href="https://hasthemes.com/" title="https://hasthemes.com/">HasThemes</a>.</p>
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