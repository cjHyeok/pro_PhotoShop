<!doctype html>

<html class="no-js" lang="en">



<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 인코딩 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
	<% request.setCharacterEncoding("utf-8");%>

    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>WOOM 에 오신걸 환영합니다.   ->  WOOM !</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
    
    



<!-- <style>
.single-input-item mb-31{
margin:auto;
display:block;
width: 580px;
}
</style> -->

</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	
	$("form").on("submit", function(event) {
		var user_id = $("#user_id").val();
		var user_name = $("#user_name").val();
		var user_pw = $("#user_pw").val();
		var user_pw2 = $("#user_pw2").val();
		var email = $("#email").val();
		var phone = $("#phone").val();
		var result = $("#result").text();
		
		console.log("result =" + result);
		
		if (user_id.length < 3) {
			alert("아이디를 입력해주세요")
			$("#user_id").focus();
			event.preventDefault();
		
		} else if (user_name.length < 1) {
			alert("이름을 입력해주세요")
			$("#user_name").focus();
			event.preventDefault();
		
		} else if (user_pw.length < 8) {
			alert("비밀번호는 8자리 이상 입력해주세요")
			$("#user_pw").focus();
			event.preventDefault();
		
		} else if (user_pw2.length < 8) {
			alert("비밀번호 확인을 입력해주세요")
			$("#user_pw2").focus();
			event.preventDefault();
		
		} else if (user_pw2 !== user_pw) {
			alert("비밀번호가 동일하지않습니다")
			$("#user_pw2").focus();
			event.preventDefault();
		
		} else if (email.length < 1) {
			alert("이메일을 입력해주세요")
			$("#email").focus();
			event.preventDefault();
		
		} else if (phone.length < 8) {
			alert("전화번호를 제대로 입력해주세요")
			$("#phone").focus();
			event.preventDefault();
			
		} else if (phone.length < 8) {
			alert("전화번호를 제대로 입력해주세요")
			$("#phone").focus();
			event.preventDefault();
			
		} else if (phone.length < 8) {
			alert("전화번호를 제대로 입력해주세요")
			$("#phone").focus();
			event.preventDefault();
			
		} else if (phone.length < 8) {
			alert("전화번호를 제대로 입력해주세요")
			$("#phone").focus();
			event.preventDefault();
		
		} else if (phone.length < 1) {
			alert("우편번호를 입력해주세요")
			$("#post").focus();
			event.preventDefault();
		
		} else if (phone.length < 1) {
			alert("상세주소를 입력해주세요")
			$("#address_detail").focus();
			event.preventDefault();
		
		} else {
			if (result == "사용불가") {
				alert("사용가능한 아이디를 넣어주세요")
				$("#user_id").focus();
				event.preventDefault();
			}
		}
	});
	

	
	//아이디 중복검사
 	$("#user_id").on("keyup", function() {   
		$.ajax({
			url : 'idDuplicate',
			type : 'get',
			data : {
				user_id : $("#user_id").val(),
			},
			dataType : "text",
			success : function(data, status, xhr) {
				console.log("success");
				$("#result").text(data);
				console.log("data =" + data);
			},
			error : function(xhr, status, error) {
				
			}
		});
	}); 
	
	//비밀번호 일치 검사
	$("#user_pw2").on("keyup", function() {
		var user_pw = $("#user_pw").val();
		var mesg = "일치하지 않습니다";
		if (user_pw == $(this).val()) {
			mesg = "일치합니다";
		}
		$("#result2").text(mesg);
	});

	
});
</script>


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
                            <h3 class="title-3">Login-Register</h3>
                            <ul>
                                <li><a href="./">Home</a></li>
                                <li>Login-Register</li>
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
                    <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-custom" style="width: 1000">
                        <div class="login-register-wrapper">
                            <div class="section-content text-center mb-5">
                                <h2 class="title-4 mb-2">회원가입</h2>
                                <p class="desc-content">회원가입을 위해 정보를 넣어주세요</p>
                            </div>
                            <form action="memberAdd" method="post">
                                <div class="single-input-item mb-3" style="width: 580px; display: block;">
                                    <input id="user_id" name="user_id" type="text" placeholder="아이디를 입력해주세요"> <p id="result"/>
                                </div>


                                <div class="single-input-item mb-3" style="width: 580px "><!-- height: 100px;   https://dubaiyu.tistory.com/25 -->
                                    <input id="user_name" name="user_name" type="text" placeholder="이름을 입력해주세요"> 
                                </div>
                                <div class="single-input-item mb-3" style="width: 580px">
                                    <input id="user_pw" name="user_pw" type="password" placeholder="비밀번호를 입력해주세요">
                                </div>
                                <div class="single-input-item mb-3" style="width: 580px">
                                    <input id="user_pw2" name="user_pw2" type="password" placeholder="다시 한번 비밀번호를 입력해주세요"> <p id="result2"/>
                                </div>
                                
                                <div class="single-input-item mb-3" style="width: 580px">
                                    <input id="email" name="email" type="email" placeholder="이메일을 입력해주세요">
                                
                                </div>                              
           					    <div class="single-input-item mb-3" >  
           					    <input type="text" name="post" id="sample4_postcode" style="text-align:center; width:161px;" placeholder="우편번호">&nbsp;<span>           
                              	    <input type="button" onclick="sample4_execDaumPostcode()" style="width:275px; margin-left:1em" value="우편번호 찾기"></span>
									<input type="text" name="address1" id="sample4_roadAddress" style="width:465px;" placeholder="도로명주소"> 
									<input type="text" name="address2" id="sample4_jibunAddress" style="width:465px;"placeholder="지번주소"> <span id="guide" style="color: #999"></span> 
									<input id="address_detail" name="address_detail" type="text"style="width:465px;" placeholder="상세주소를 입력해주세요">
								</div>
								<!--  </div>
	                                
	                            <div class="single-input-item mb-3">
                                    <input id="address_detail" name="address_detail" type="text" placeholder="상세주소를 입력해주세요">
                                </div> -->
	
                                <div class="single-input-item mb-3" style="width: 580px">
                                    <input id="phone" name="phone" type="text" placeholder="전화번호를 입력해주세요">
                                </div>

                                
                                <!-- <div class="single-input-item mb-3">
                                    <div class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                        <div class="remember-meta mb-3">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="rememberMe">
                                                <label class="custom-control-label" for="rememberMe">Subscribe Our Newsletter</label>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                                
                                
                                	<!-- <div class="single-input-item mb-31"> -->
                                	<div>
                                	    <button class="btn obrien-button-2 primary-color" style="margin:auto; display:block; width: 150px;">회원가입</button>
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
                                <p class="desc-content">Email: um.woom@gmail.com</p>
                            </div>
                            <div class="support-button d-flex align-items-center">
                                <a class="obrien-button primary-btn" href="./contactUs">Contact now</a>
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
                                    <a href="./">
                                        <img src="assets/images/logo/footer.png" alt="Logo Image">
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('sample4_roadAddress').value = fullRoadAddr;
						document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';

						} else {
							document.getElementById('guide').innerHTML = '';
						}
					}
				}).open();
	}
</script>
</body>

</html>