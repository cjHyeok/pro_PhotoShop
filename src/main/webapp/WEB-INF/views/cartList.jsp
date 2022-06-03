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
<style>
#orderConfirm{
margin:auto;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".pro-remove").on("click", function() {
					console.log("삭제버튼 클릭 ");
					var cart_id = $(this).attr("data-num");
					var xxx = $(this);
					$.ajax({
						url : "loginCheck/cartDelete",
						type : "get",
						dataType : "text",
						data : {
							cart_id : cart_id
						},
						success : function(data, status, xhr) {
							console.log("success");
							location.reload();//성공하면 자동 새로고침으로 지워주기
							//dom삭제 
							xxx.parents().filter("tr").remove();
							totalXXX(); //총합 다시 구하기 
						},
						error : function(xhr, status, error) {
							console.log(error);
						}
					});
				});//end event

				/* $("#up").on("click", function() {
					var count = $("#cart_quantity").val();
					console.log(count);
					
					$("#cart_quantity").val(parseInt(count) + 1);
				});

				$("#down").on("click", function() {
					var count = $("#cart_quantity").val();
					if (count != 1) {
						$("#cart_quantity").val(parseInt(count) - 1);
					}
				}); */
				
				function numberWithCommas(x) {
				    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				}
			

				//수정버튼이벤트 처리 
				$(".updateBtn").on("click", function() {
							console.log("수정 값 업데이트===");
							var cart_id = $(this).attr("data-num");
							var cart_quantity = $("#cartQuantity" + cart_id)
									.val();
							var product_price = $(this).attr("data-price");
							console.log(cart_id, cart_quantity, product_price);
							
							
							$.ajax({
								url : "loginCheck/cartUpdate",
								type : "get",
								dataType : "text",
								data : {
									cart_id : cart_id,
									cart_quantity : cart_quantity
								},
								success : function(data, status, xhr) {

									var total = parseInt(cart_quantity)
											* parseInt(product_price);
																		
									$("#sum" + cart_id).text(numberWithCommas(total));
									totalXXX(); /// 총합 다시 구하기 
									//location.reload();
								},
								error : function(xhr, status, error) {
									console.log(error);
								}
							});
						});

				function totalXXX() { //총합을 구하는 함수 
					var totalSum = 0;
					$(".sum").each(function(idx, data) {//idx, element
						
						numberStr = $(data).text(); //,붙어있는 상태
						const number = numberStr.split(',').join(""); //,제거하고 조인에서 숫자 붙이고
						totalSum += parseInt(number);
					    console.log($(data).text());
					});
					
					console.log(totalSum);
					
					$("#subTotal").text(numberWithCommas(totalSum));
					
					// 20,000 미만일 경우 배송료 2,000 
					// 20,000 이상일경우 배송료 0 
					if(totalSum == 0)  //0일때부터 먼저 처리
						$("#shipping").text("0"); 
					else if( totalSum < 20000)
						$("#shipping").text("2,000");
					else
						$("#shipping").text("0");
					
					
					shippingStr = $("#shipping").text();
					const number = shippingStr.split(',').join("");
					totalSum += parseInt(number); 
					
					$("#totalSum").text(numberWithCommas(totalSum));
					
					if(totalSum == 0){
						$("#cartTotalSummary").text("");
						$("#cartBody").text("");
						$("#cartBody").text("장바구니에 담은 상품이 없습니다.");
					}
				}
					
					
				
				
				$(function() {//화면이 불러지면 
					totalXXX();//총합 구하기
				});
				
			
				$("#orderConfirm").on("click", function() {

					location.href = "loginCheck/orderConfirm";
				})
			
				
				$(document).ready(function(){
				    $("#btnAdd").click(function(){
				        location.href="./write.do";
				    });
				});
			
			});
</script>



<body>


<%-- 	<c:if test="${!empty mesg }">
		<script>
			//session.removeAttribute("mesg");
			alert("${mesg} 상품을 장바구니에 담았습니다.");
		</script>
	</c:if> --%>

	<div class="home-wrapper home-3">
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
								<div class="col-lg-8 col-xl-7 position-static d-none d-lg-block col-custom">
									<nav class="main-nav d-flex justify-content-center">
										<ul class="nav">
											<li><a href="./aboutUs"> <span class="menu-text">소개</span></a></li>
											
											<li><a> <span class="menu-text">캘리그라피</span><i class="fa fa-angle-down"></i></a> 
												<div class="menu-colum">
													<ul class="dropdown-submenu dropdown-hover">
														<li><a href="./productList?category_name=캘리액자">액자</a></li>
														<li><a href="./productList?category_name=캘리캔버스">캔버스</a></li>
														<li><a href="./productList?category_name=캘리엽서">엽서</a></li>
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
											
											<c:choose>
											<c:when test="${login.role eq 'R'}">
											<li><a href="./productItem"> <span class="menu-text">상품 관리</span></a></li>
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
														
														<a href="./myAccount">
															${login.user_name } 님
															</a>
															
															
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
									
									<li><a href="./productItem"> <span class="menu-text">상품 관리</span></a></li>
									
									<!-- 참고하기 <li class="menu-item-has-children"><a href="./#">내 정보</a>
										<ul class="dropdown"> -->
									<li class="menu-item-has-children"><a href="./#">캘리그라피</a> 
										<ul class="dropdown">
											<li><a href="./productList?category_name=캘리액자">액자</a></li>
											<li><a href="./productList?category_name=캘리캔버스">캔버스</a></li>
											<li><a href="./productList?category_name=캘리엽서">엽서</a></li>
											<li><a href="./productList?category_name=캘리캘리키트">캘리키트</a></li> 
										</ul>
									</li>
									
									<li class="menu-item-has-children"><a href="./#">그림</a> 
                                    	<ul class="dropdown">
                                        	<li><a href="./productList?category_name=그림액자">액자</a></li>
                                            <li><a href="./productList?category_name=그림캔버스">캔버스</a></li>
                                            <li><a href="./productList?category_name=그림엽서">엽서</a></li>
                                        </ul>
                                    </li>   
                                            
                                            
									<li class="menu-item-has-children"><a href="./#">스탠드</a> 
                                    	<ul class="dropdown">
                                        	<li><a href="./productList?category_name=무드등">무드등</a></li>
                                        </ul>
                                    </li> 

									<li class="menu-item-has-children"><a href="./#">액세사리</a> 
                                    	<ul class="dropdown">
                                    		<li><a href="./productList?category_name=골프공캘리">골프공캘리</a></li>
                                    		<li><a href="./productList?category_name=봉투">봉투</a></li>
                                    	</ul>
                                    </li>
                                            
                                    <li><a href="./productItem"> <span class="menu-text">상품 관리</span></a></li>
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
													<a href="./myAccount">${login.user_name }님&nbsp;&nbsp;  <!-- 확인용 -->
													<span><a href="./loginCheck/logout">로그아웃</a></span>
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
								<a title="Instagram" href="https://www.instagram.com/nada_u.m/"><i class="fa fa-instagram"></i></a>
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
								<li><a href="./">Home</a></li>
								<li>Cart</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Area End Here -->
		<!-- cart main wrapper start -->
		<div class="cart-main-wrapper mt-no-text mb-no-text">
			<div class="container container-default-2 custom-area">
				<div class="row">
					<div class="col-lg-12">
						<!-- Cart Table Area -->
						<div class="cart-table table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th class="pro-thumbnail">상품 사진</th>
										<th class="pro-title">상품 이름</th>
										<th class="pro-price">가격</th>
										<th class="pro-quantity">수량</th>
										<th class="pro-subtotal">총합</th>
										<th class="pro-remove">삭제</th>
									</tr>
								</thead>
								<tbody>
									
									<c:forEach var="cart" items="${cartList}" varStatus="status">
										<tr>
											<td class="pro-thumbnail"><a href="./#"><img
													class="img-fluid"
													src="assets/images/${cart.product_img}" alt="Product" /></a></td>
											<td class="pro-title"><a href="./#">${cart.product_name}</td>
											<td class="pro-price"><span><fmt:formatNumber
														value="${cart.product_price}" /></span></td>
											<td class="pro-quantity">
												<div class="quantity">

													<div class="cart-plus-minus">
														<input class="cart-plus-minus-box" name=cartQuantity
															id="cartQuantity${cart.cart_id}"
															value="${cart.cart_quantity}" type="text">
														<div id="down">-</div>
														<div id="up">+</div>
													</div>

												</div>
											</td>


<%-- <fmt:formatNumber value="${cart.product_price}" /> --%>
											<td class="pro-subtotal"><span class="sum"
												id="sum${cart.cart_id}"> <fmt:formatNumber value="${cart.product_price * cart.cart_quantity}"/>
											</span> &nbsp; <input type="button" value="수정" class="updateBtn"
												data-num="${cart.cart_id}"
												data-price="${cart.product_price}" /></td>


											<td class="pro-remove" data-num="${cart.cart_id}"><i class="ion-trash-b"></i></td>
										</tr>

									</c:forEach>
									
								</tbody>


							</table>
							<br>
							<br>
							
							<div>
								
								<br>
									<h5><p style="text-align: center;" id="cartBody"></p></h5>
								<br>
								
							</div>
						</div>
						<!-- Cart Update Option -->
							<!-- <div class="cart-update-option d-block d-md-flex justify-content-between">
							
						<div class="apply-coupon-wrapper">
								                                <form action="#" method="post" class=" d-block d-md-flex">
                                    <input type="text" placeholder="Enter Your Coupon Code" required />
                                    <button class="btn obrien-button primary-btn">Apply Coupon</button>
                                </form> 
							</div>
							 <div class="cart-update mt-sm-16">
                                <a href="./#" class="btn obrien-button primary-btn">Update Cart</a>
                            </div>
						</div> -->
					</div>
				</div>
				
				
				<div class="row">
					<div class="col-lg-5 ml-auto">
						<!-- Cart Calculation Area -->
						<div class="cart-calculator-wrapper" id="cartTotalSummary">
							<div class="cart-calculate-items">
								<h3>장바구니</h3>
								<div class="table-responsive">
									<table class="table">
										<tr>
											<td>상품 금액</td>
											<td class="total-amount"><span id="subTotal"></span></td>
											<!--  id="totalSum" 두개 동시에 안들어옴-->
										</tr>
										<tr>
											<td>배송비</td>
											<td id="shipping"></td>
										</tr>
										<tr class="total">
											<td>합계</td>
											<td class="total-amount" id="totalSum"></td>
										</tr>
									</table>
								</div>
							</div>
							
							<button id="orderConfirm" 
								class="btn obrien-button primary-btn d-block">구매하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- cart main wrapper end -->
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
								<p class="desc-content">WOOM is the best parts shop of your daily routine. What kind of routine do you need you can get here  </p>
								<div class="social-links">
									<ul class="d-flex">
										<li><a class="border rounded-circle" href="./#"
											title="Facebook"> <i class="fa fa-facebook-f"></i>
										</a></li>
										<li><a class="border rounded-circle" href="https://www.instagram.com/nada_u.m/"
											title="Instagram"> <i class="fa fa-instagram"></i>
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
										서울특별시 송파구 백제고분로 501, 청호빌딩 <br>
										Email: um.woom@gmail.com
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
									Copyright ⓒ WOOM Foundation. All Rights Reserved.
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