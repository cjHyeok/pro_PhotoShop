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
    <link rel="shortcut icon" type="image/x-icon" href="./assets/images/favicon.ico">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script> 
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
													<li><a href="./productList">상품리스트</a></li>
													<li><a href="./cartList">카트리스트</a></li>
													<li><a href="./wishList">위시리스트</a></li>
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
											<li class="login-register-wrap d-none d-xl-flex"><c:choose>
													<c:when test="${!empty login }"> &nbsp;&nbsp; <!-- 확인용 -->
														<div
															style="font-size: 15px; line-height: 1.6; font-weight: 600; color: #303030;">
															${login.user_name } 님</div>
														<span><a href="././loginCheck/logout">logout</a></span>
														<span><a href="./memberForm">Register</a></span>
													</c:when>
													<c:otherwise>
														<span><a href="./loginForm">login</a></span>
														<span><a href="./memberForm">Register</a></span>
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
											<li>
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
											<li><a href="./contact-us.html"> <span
													class="menu-text">Contact</span>
											</a></li>
										</ul>
									</nav>
								</div>
								<div class="col-lg-2 col-xl-3 col-sm-6 col-6 col-custom">
									<div class="header-right-area main-nav">
										<ul class="nav">
											<li class="login-register-wrap d-none d-xl-flex"><span><a
													href="./loginForm">Login</a></span> <span><a
													href="./memberForm">Register</a></span></li>

											<li class="minicart-wrap"><a href="./#"
												class="minicart-btn toolbar-btn"> <i class="ion-bag"></i>
													<span class="cart-item_count">3</span>
											</a>
												<div
													class="cart-item-wrapper dropdown-sidemenu dropdown-hover-2">
													<div class="single-cart-item">
														<div class="cart-img">
															<a href="./cartList"><img
																src="assets/images/cart/1.png" alt=""></a>
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
                                <button class="search-btn"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <!-- mobile menu start -->
                        <div class="mobile-navigation">
                            <!-- mobile menu navigation start -->
                            <nav>
                                <ul class="mobile-menu">
                                    <li class="menu-item-has-children"><a href="./#">Home</a>
                                        <ul class="dropdown">
                                            <li><a href="./index.html">Home Page 1</a></li>
                                            <li><a href="./index-2.html">Home Page 2</a></li>
                                            <li><a href="./index-3.html">Home Page 3</a></li>
                                            <li><a href="./index-4.html">Home Page 4</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children"><a href="./#">Shop</a>
                                        <ul class="megamenu dropdown">
                                            <li class="mega-title has-children"><a href="./#">Shop Layouts</a>
                                                <ul class="dropdown">
                                                    <li><a href="./shop.html">Shop Left Sidebar</a></li>
                                                    <li><a href="./shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                                    <li><a href="./shop-list-left.html">Shop List Left Sidebar</a></li>
                                                    <li><a href="./shop-list-right.html">Shop List Right Sidebar</a></li>
                                                    <li><a href="./shop-fullwidth.html">Shop Full Width</a></li>
                                                </ul>
                                            </li>
                                            <li class="mega-title has-children"><a href="./#">Product Details</a>
                                                <ul class="dropdown">
                                                    <li><a href="./product-details.html">Single Product Details</a></li>
                                                    <li><a href="./variable-product-details.html">Variable Product Details</a></li>
                                                    <li><a href="./external-product-details.html">External Product Details</a></li>
                                                    <li><a href="./gallery-product-details.html">Gallery Product Details</a></li>
                                                    <li><a href="./countdown-product-details.html">Countdown Product Details</a></li>
                                                </ul>
                                            </li>
                                            <li class="mega-title has-children"><a href="./#">Others</a>
                                                <ul class="dropdown">
                                                    <li><a href="./error404.html">Error 404</a></li>
                                                    <li><a href="./compare.html">Compare Page</a></li>
                                                    <li><a href="./cart.html">Cart Page</a></li>
                                                    <li><a href="./checkout.html">Checkout Page</a></li>
                                                    <li><a href="./wishlist.html">Wish List Page</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children "><a href="./#">Blog</a>
                                        <ul class="dropdown">
                                            <li><a href="./blog.html">Blog Left Sidebar</a></li>
                                            <li><a href="./blog-list-right-sidebar.html">Blog List Right Sidebar</a></li>
                                            <li><a href="./blog-list-fullwidth.html">Blog List Fullwidth</a></li>
                                            <li><a href="./blog-grid.html">Blog Grid Page</a></li>
                                            <li><a href="./blog-grid-right-sidebar.html">Blog Grid Right Sidebar</a></li>
                                            <li><a href="./blog-grid-fullwidth.html">Blog Grid Fullwidth</a></li>
                                            <li><a href="./blog-details-sidebar.html">Blog Details Sidebar Page</a></li>
                                            <li><a href="./blog-details-fullwidth.html">Blog Details Fullwidth Page</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children "><a href="./#">Pages</a>
                                        <ul class="dropdown">
                                            <li><a href="./faqForm">FAQ</a></li>
                                            <li><a href="./my-account.html">My Account</a></li>
                                            <li><a href="./login-register.html">login &amp; register</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="./about-us.html">About Us</a></li>
                                    <li><a href="./contact-us.html">Contact</a></li>
                                </ul>
                            </nav>
                            <!-- mobile menu navigation end -->
                        </div>
                        <!-- mobile menu end -->
                        <div class="header-top-settings offcanvas-curreny-lang-support">
                            <!-- mobile menu navigation start -->
                            <nav>
                                <ul class="mobile-menu">
                                    <li class="menu-item-has-children"><a href="./#">My Account</a>
                                        <ul class="dropdown">
                                            <li><a href="./login.html">Login</a></li>
                                            <li><a href="./Register.html">Register</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-item-has-children"><a href="./#">Currency:USD</a>
                                        <ul class="dropdown">
                                            <li><a href="./#">USD - US Dollar</a></li>
                                            <li><a href="./#">EUR - Euro</a></li>
                                            <li><a href="./#">GBP - British Pound</a></li>
                                            <li><a href="./#">INR - Indian Rupee</a></li>
                                            <li><a href="./#">BDT - Bangladesh Taka</a></li>
                                            <li><a href="./#">JPY - Japan Yen</a></li>
                                            <li><a href="./#">CAD - Canada Dollar</a></li>
                                            <li><a href="./#">AUD - Australian Dollar</a></li>
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
                                        <a href="./info@yourdomain.com">(1245) 2456 012</a>
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope"></i>
                                        <a href="./info@yourdomain.com">info@yourdomain.com</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="off-canvas-widget-social">
                                <a title="Facebook-f" href="./#"><i class="fa fa-facebook-f"></i></a>
                                <a title="Twitter" href="./#"><i class="fa fa-twitter"></i></a>
                                <a title="Linkedin" href="./#"><i class="fa fa-linkedin"></i></a>
                                <a title="Youtube" href="./#"><i class="fa fa-youtube"></i></a>
                                <a title="Vimeo" href="./#"><i class="fa fa-vimeo"></i></a>
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
                            <h3 class="title-3">FAQ</h3>
                            <ul>
                                <li><a href="./index.html">Home</a></li>
                                <li>FAQ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End Here -->
        <!--faq area start-->
        <div class="faq_content_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="faq_content_wrapper">
                            <h4>[FAQ] 자주 묻는 질문 & 답변</h4>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id erat sagittis, faucibus metus malesuada, eleifend turpis. Mauris semper augue id nisl aliquet, a porta lectus mattis. Nulla at tortor augue. In eget enim diam. Donec gravida tortor sem, ac fermentum nibh rutrum sit amet. Nulla convallis mauris vitae congue consequat. Donec interdum nunc purus, vitae vulputate arcu fringilla quis. Vivamus iaculis euismod dui.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Accordion area-->
        <div class="accordion_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div id="accordion" class="card__accordion">
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingOne">
                                    <button class="btn btn-link" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Mauris congue euismod purus at semper. Morbi et vulputate massa?<i class="fa fa-plus"></i><i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingTwo">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Donec mattis finibus elit ut tristique?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingThree">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Aenean elit orci, efficitur quis nisl at, accumsan?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingfour">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseeight" aria-expanded="false" aria-controls="collapseeight">
                                        Pellentesque habitant morbi tristique senectus et netus?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseeight" class="collapse" aria-labelledby="headingfour" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingfive">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseseven" aria-expanded="false" aria-controls="collapseseven">
                                        Nam pellentesque aliquam metus?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseseven" class="collapse" aria-labelledby="headingfive" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingsix">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
                                        Aenean elit orci, efficitur quis nisl at?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsefour" class="collapse" aria-labelledby="headingsix" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingseven">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapsefive" aria-expanded="false" aria-controls="collapsefive">
                                        Morbi gravida, nisi id fringilla ultricies, elit lorem?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsefive" class="collapse" aria-labelledby="headingseven" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingeight">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix">
                                        Aenean elit orci, efficitur quis nisl at, accumsan?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsesix" class="collapse" aria-labelledby="headingeight" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Donec mattis finibus elit ut tristique. Nullam tempus nunc eget arcu vulputate, eu porttitor tellus commodo. Aliquam erat volutpat. Aliquam consectetur lorem eu viverra lobortis. Morbi gravida, nisi id fringilla ultricies, elit lorem eleifend lorem</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Accordion area end-->
        <!--faq area end-->
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
                                <a class="obrien-button primary-btn" href="./contact-us.html">Contact now</a>
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
                                    <a href="./index.html">
                                        <img src="assets/images/logo/footer.png" alt="Logo Image">
                                    </a>
                                </div>
                                <p class="desc-content">Obrien is the best parts shop of your daily nutritions. What kind of nutrition do you need you can get here soluta nobis</p>
                                <div class="social-links">
                                    <ul class="d-flex">
                                        <li>
                                            <a class="border rounded-circle" href="./#" title="Facebook">
                                                <i class="fa fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="border rounded-circle" href="./#" title="Twitter">
                                                <i class="fa fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="border rounded-circle" href="./#" title="Linkedin">
                                                <i class="fa fa-linkedin"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="border rounded-circle" href="./#" title="Youtube">
                                                <i class="fa fa-youtube"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a class="border rounded-circle" href="./#" title="Vimeo">
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
                                    <li><a href="./about-us.html">Our Company</a></li>
                                    <li><a href="./contact-us.html">Contact Us</a></li>
                                    <li><a href="./about-us.html">Our Services</a></li>
                                    <li><a href="./about-us.html">Why We?</a></li>
                                    <li><a href="./about-us.html">Careers</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
                            <div class="single-footer-widget">
                                <h2 class="widget-title">Quicklink</h2>
                                <ul class="widget-list">
                                    <li><a href="./about-us.html">About</a></li>
                                    <li><a href="./blog.html">Blog</a></li>
                                    <li><a href="./shop.html">Shop</a></li>
                                    <li><a href="./cart.html">Cart</a></li>
                                    <li><a href="./contact-us.html">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
                            <div class="single-footer-widget">
                                <h2 class="widget-title">Support</h2>
                                <ul class="widget-list">
                                    <li><a href="./contact-us.html">Online Support</a></li>
                                    <li><a href="./contact-us.html">Shipping Policy</a></li>
                                    <li><a href="./contact-us.html">Return Policy</a></li>
                                    <li><a href="./contact-us.html">Privacy Policy</a></li>
                                    <li><a href="./contact-us.html">Terms of Service</a></li>
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
                                <p>Copyright © 2020 <a href="./https://hasthemes.com/" title="https://hasthemes.com/">HasThemes</a> | Built with&nbsp;<strong>Obrien</strong>&nbsp;by <a href="./https://hasthemes.com/" title="https://hasthemes.com/">HasThemes</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Area End Here -->
    </div>

    <!-- Scroll to Top Start -->
    <a class="scroll-to-top" href="./#">
        <i class="ion-chevron-up"></i>
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