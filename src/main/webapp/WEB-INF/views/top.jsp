<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- c:if 사용하기위해 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
														<div style="font-size: 15px; line-height: 1.6; font-weight: 600; color: #303030;">

															<a href="./myAccount"> ${login.user_name } 님 </a>


														</div>
														<span><a href="./loginCheck/logout">로그아웃</a></span>
														<span><a href="./faqForm">faq</a></span>
														
														&nbsp;&nbsp;&nbsp;
														
														
														<!-- 장바구니 미니 시작 -->
														
														<li class="minicart-wrap"><a href="./cartList" class="minicart-btn toolbar-btn"> <i class="ion-bag"></i>
																<span class="cart-item_count">${cartList.size()}</span></a>
																
															<div class="cart-item-wrapper dropdown-sidemenu dropdown-hover-2">
																<c:forEach var="cart" items="${cartList}" varStatus="status">
																<div class="single-cart-item">
																	<div class="cart-img">
																		<a href="./productDetails?product_id=${cart.product_id}">
																		<img src="assets/images/${cart.product_img}" alt=""></a>
																	</div>
																	<div class="cart-text">
																		<h5 class="title">
																			<a href="./productDetails?product_id=${cart.product_id}">${cart.product_name}</a>
																			
																		</h5>
																		<div class="cart-text-btn">
																			<div class="cart-qty">
																				<span>${cart.cart_quantity}×</span> <span>${cart.product_price}</span>
																			</div>
																			
																		</div>
																	</div>
																</div>
																</c:forEach>
																
																<!-- 총합 -->
																<div class="cart-price-total d-flex justify-content-between">
																	<div class="cart-links d-flex justify-content-center">
																	<a class="obrien-button white-btn" href="./cartList">장바구니</a> <a class="obrien-button white-btn"
																		href="./loginCheck/orderConfirm">구매하기</a>
																</div>
																</div>
																
															</div>
															
															</li>
															&nbsp;&nbsp;
															
															<!-- 장바구니 미니 끝 -->
														
													</c:when>
													<c:otherwise>
														<span><a href="./loginForm">로그인</a></span>
														<span><a href="./memberForm">회원가입</a></span>
														
														<span><a href="./faqForm">faq</a></span>
														
														
														
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
											<li><a href="./productList?category_name=액자">액자</a></li>
											<li><a href="./productList?category_name=캔버스">캔버스</a></li>
											<li><a href="./productList?category_name=엽서">엽서</a></li>
											<li><a href="./productList?category_name=캘리키트">캘리키트</a></li>
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