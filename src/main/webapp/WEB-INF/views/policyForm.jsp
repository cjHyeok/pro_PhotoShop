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
<title>WOOM 에 오신걸 환영합니다. -> WOOM !</title>
<meta name="robots" content="noindex, follow" />
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<style>
@import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Oswald:wght@200;300;400;469;500;600;700&display=swap");

</style>
<body>


	<div class="contact-wrapper">
		<!-- Header Area Start Here -->
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
											<li><a href="./aboutUs"> <span class="menu-text">소개</span></a></li>

											<li><a> <span class="menu-text">캘리그라피</span><i
													class="fa fa-angle-down"></i></a>
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=캘리액자">액자</a></li>
														<li><a href="./productList?category_name=캘리캔버스">캔버스</a></li>
														<li><a href="./productList?category_name=캘리엽서">엽서</a></li>
														<li><a href="./productList?category_name=캘리키트">캘리키트</a></li>
													</ul>
												</div></li>


											<li><a> <span class="menu-text">그림</span><i
													class="fa fa-angle-down"></i></a>
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=그림액자">액자</a></li>
														<li><a href="./productList?category_name=그림캔버스">캔버스</a></li>
														<li><a href="./productList?category_name=그림엽서">엽서</a></li>
													</ul>
												</div></li>


											<li><a> <span class="menu-text">스탠드</span><i
													class="fa fa-angle-down"></i></a>
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=무드등">무드등</a></li>
													</ul>
												</div></li>

											<li><a> <span class="menu-text">액세사리</span><i
													class="fa fa-angle-down"></i></a>
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=골프공캘리">골프공캘리</a></li>
														<li><a href="./productList?category_name=봉투">봉투</a></li>
													</ul>
												</div></li>

											<c:choose>
												<c:when test="${login.role eq 'R'}">
													<li><a href="./productItem"> <span
															class="menu-text">상품 관리</span></a></li>
												</c:when>
												<c:otherwise>

												</c:otherwise>
											</c:choose>
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

															<a href="./myAccount"> ${login.user_name } 님 </a>


														</div>
														<span><a href="./loginCheck/logout">로그아웃</a></span>
														&nbsp;&nbsp;
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
																			<a href="./cartList">11. Product with video -
																				navy</a>
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
																			<a href="./cartList">1. New and sale badge
																				product - s / red</a>
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
													</c:when>
													<c:otherwise>
														<span><a href="./loginForm">로그인</a></span>
														<span><a href="./memberForm">회원가입</a></span>

													</c:otherwise>
												</c:choose></li> &nbsp;&nbsp;
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

			<!-- off-canvas menu start -->
			<aside class="off-canvas-wrapper" id="mobileMenu">
				<div class="off-canvas-overlay"></div>
				<div class="off-canvas-inner-content">
					<div class="btn-close-off-canvas">
						<i class="fa fa-times"></i>
					</div>
					<div class="off-canvas-inner">

						<!-- <div class="search-box-offcanvas">
							<form>
								<input type="text" placeholder="Search product...">
								<button class="search-btn">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div> -->








						<!-- mobile menu start -->
						<div class="mobile-navigation">

							<!-- mobile menu navigation start -->
							<nav>
								<ul class="mobile-menu">
									<li><a href="./aboutUs"> <span class="menu-text">소개</span></a></li>

									<li><a href="./productItem"> <span class="menu-text">상품
												관리</span></a></li>

									<!-- 참고하기 <li class="menu-item-has-children"><a href="./#">내 정보</a>
										<ul class="dropdown"> -->
									<li class="menu-item-has-children"><a href="./#">캘리그라피</a>
										<ul class="dropdown">
											<li><a href="./productList?category_name=캘리액자">액자</a></li>
											<li><a href="./productList?category_name=캘리캔버스">캔버스</a></li>
											<li><a href="./productList?category_name=캘리엽서">엽서</a></li>
											<li><a href="./productList?category_name=캘리캘리키트">캘리키트</a></li>
										</ul></li>

									<li class="menu-item-has-children"><a href="./#">그림</a>
										<ul class="dropdown">
											<li><a href="./productList?category_name=그림액자">액자</a></li>
											<li><a href="./productList?category_name=그림캔버스">캔버스</a></li>
											<li><a href="./productList?category_name=그림엽서">엽서</a></li>
										</ul></li>


									<li class="menu-item-has-children"><a href="./#">스탠드</a>
										<ul class="dropdown">
											<li><a href="./productList?category_name=무드등">무드등</a></li>
										</ul></li>

									<li class="menu-item-has-children"><a href="./#">액세사리</a>
										<ul class="dropdown">
											<li><a href="./productList?category_name=골프공캘리">골프공캘리</a></li>
											<li><a href="./productList?category_name=봉투">봉투</a></li>
										</ul></li>

									<li><a href="./productItem"> <span class="menu-text">상품
												관리</span></a></li>
								</ul>
							</nav>

							<!-- mobile menu navigation end -->
						</div>
						<!-- mobile menu end -->
						<div class="header-top-settings offcanvas-curreny-lang-support">
							<!-- mobile menu navigation start -->
							<nav>
								<ul class="mobile-menu">
									<li class="menu-item-has-children"><a href="./#">내 정보</a>
										<ul class="dropdown">
											<c:choose>
												<c:when test="${!empty login }">
													<a href="./myAccount">${login.user_name }님&nbsp;&nbsp;
														<!-- 확인용 --> <span><a href="./loginCheck/logout">로그아웃</a></span>
												</c:when>

												<c:otherwise>
													<span><a href="./loginForm">로그인</a></span>
													<span><a href="./memberForm">회원가입</a></span>
												</c:otherwise>
											</c:choose>
										</ul></li>

								</ul>
							</nav>
							<!-- mobile menu navigation end -->
						</div>
						<!-- offcanvas widget area start -->
						<div class="offcanvas-widget-area">
							<div class="top-info-wrap text-left text-black">
								<ul>
									<!-- <li><i class="fa fa-phone"></i> <a
										href="./info@yourdomain.com">(1245) 2456 012</a></li> -->
									<li><i class="fa fa-envelope"></i> <a
										href="./info@yourdomain.com">um.woom@gmail.com</a></li>
								</ul>
							</div>
							<div class="off-canvas-widget-social">
								<a title="Facebook-f" href="./#"><i class="fa fa-facebook-f"></i></a>
								<a title="Instagram" href="https://www.instagram.com/nada_u.m/"><i
									class="fa fa-instagram"></i></a>
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
							<h3 class="title-3">policy</h3>
							<ul>
								<li><a href="./">Home</a></li>
								<li>policy</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Area End Here -->











		<div class="single-product-main-area">
			<div class="container container-default custom-area">

				<div class="row mt-no-text">
					<div class="col-lg-12" >
						<a class="nav-link text-uppercase active" style="background: #1B1B1C; margin-left: auto; margin-right: auto; font-size: 18px; font-family:sans-serif; color: #ffffff; "  id="contact-tab"
							data-bs-toggle="tab" href="#connect-3" role="tab"
							aria-selected="true">교환 및 반품안내</a>




						<div class="tab-content mb-text" id="myTabContent">



							<h4 class="title-3 mb-4">배송안내</h4>
							<p class="desc-content mb-2">
								배송비 : 기본 배송료는 3,000원입니다. <br> 50,000원 이상 구매 시 무료배송입니다.<br>
								상품의 평균 배송일은 입금 확인 후 영업일 기준 3일입니다.<br> 배송 마감 시간에 따라 이미 택배
								발송된 경우 주문취소가 불가능합니다.<br> 주문 취소가 불가능한 경우 이메일로 연락 주시기 바랍니다.
								(이메일 : um.woom@gmail.com )<br> 주문 순으로 순차 배송 되며, 재고가 없을 경우
								고객센터에서 연락드립니다.
							</p>
							<br>

							<h4 class="title-3 mb-4">교환 및 반품안내</h4>
							<p class="desc-content mb-2">
								고객 단순 변심일 경우 교환 비용 왕복 배송비 6,000원 부과됩니다.<br>
							<li>단, 고객 변심의 경우에만 발생하며 부분 반품 시, 남은 금액이 무료배송 조건이 유지되는 경우 반품
								회송 비용(3,000원)만 발생합니다.</li> <br> 교환/반품 신청 기준일: 단순 변심에 의한 상품의
							교환/반품은 수령 후 7일 이내까지만 가능합니다.<br> 상품의 불량이나 오배송일 경우 당사가 택배비를
							부담하며, 수령 후 7일 이내 교환 신청 부탁드립니다.<br> 상품의 내용이 표시·광고의 내용과 다른
							경우에는 상품을 수령한 날부터 30일 이내 교환/환불이 가능합니다.<br> 상품 택(tag) 제거 또는 포장
							개봉으로 상품 가치 훼손 시에는 상품 수령 후 7일 이내라도 교환/반품이 불가능합니다.<br> 구매 후 가격
							변경, 추가 혜택 제공으로 인한 교환/환불은 불가능합니다.<br> 일부 행사 상품은 교환/반품이 불가할 수
							있습니다.
							</p>
							<br>

							<h4 class="title-3 mb-4">환불안내</h4>
							<p class="desc-content mb-2">
								상품 청약철회 가능 기간은 상품 수령일로부터 7일 이내입니다.<br> 반품 신청 후 규정에 따라 환불
								가능하며, 카드 결제로 구매한 경우 시 취소 승인 완료까지 카드사에 따라 최대 7일이 소요될 수 있습니다<br>
							</p>
							<br>

							<h4 class="title-3 mb-4">A/S안내</h4>
							<p class="desc-content mb-2">
								소비자분쟁해결 기준(공정거래위원회 고시)에 따라 피해를 보상받을 수 있습니다.<br> A/S는 이메일로
								연락 주시기 바랍니다. (이메일 : um.woom@gmail.com ) <br>
							</p>



						</div>
					</div>
				</div>
			</div>
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
								<a class="obrien-button primary-btn" href="./contact-us.html">Contact
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
								<p class="desc-content">WOOM is the best parts shop of your
									daily routine. What kind of routine do you need you can get
									here</p>
								<div class="social-links">
									<ul class="d-flex">
										<li><a class="border rounded-circle" href="./#"
											title="Facebook"> <i class="fa fa-facebook-f"></i>
										</a></li>
										<li><a class="border rounded-circle"
											href="https://www.instagram.com/nada_u.m/" title="Instagram">
												<i class="fa fa-instagram"></i>
										</a></li>
										<!-- <li><a class="border rounded-circle" href="./#"
											title="Twitter"> <i class="fa fa-twitter"></i>
										</a></li>
										<li><a class="border rounded-circle" href="./#"
											title="Youtube"> <i class="fa fa-youtube"></i>
										</a></li>
										<li><a class="border rounded-circle" href="./#"
											title="Vimeo"> <i class="fa fa-vimeo"></i>
										</a></li> -->
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
									<c:choose>
										<c:when test="${!empty login }">
											<li><a href="./aboutUs">About</a></li>
											<li><a href="./productList">Shop</a></li>
											<li><a href="./cartList">Cart</a></li>
											<li><a href="./contactUs">Contact</a></li>
										</c:when>

										<c:otherwise>
											<li><a href="./aboutUs">About</a></li>
											<li><a href="./productList">Shop</a></li>
											<li><a href="./contactUs">Contact</a></li>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">Support</h2>
								<ul class="widget-list">
									<li><a href="./contact-us.html">Online Support</a></li>
									<li><a href="./policyForm">Shipping Policy</a></li>
									<li><a href="./policyForm">Return Policy</a></li>
									<li><a href="./policyForm">Privacy Policy</a></li>
									<li><a href="./contact-us.html">Terms of Service</a></li>
								</ul>
							</div>
						</div>
						<div class="col-12 col-sm-6 col-md-6 col-lg-3 col-custom">
							<div class="single-footer-widget">
								<h2 class="widget-title">See Information</h2>
								<div class="widget-body">
									<address>
										서울특별시 송파구 백제고분로 501, 청호빌딩 <br> Email: um.woom@gmail.com
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
								<p>Copyright ⓒ WOOM Foundation. All Rights Reserved.</p>
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