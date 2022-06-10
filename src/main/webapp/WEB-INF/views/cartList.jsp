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

<script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
				

				 $(".cart-plus-minus").on("click", function() {   //수량변경 버튼 div
					 
					var cart_id = $(this).attr("data-num"); //카트아이디 값
					var product_price = $(this).attr("data-price"); //상품 가격 값
					
					
					var cart_quantity = $("#cartQuantity" + cart_id).val(); //카트아이디에 해당하는 수량
					
					
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

				
				
				function numberWithCommas(x) {
				    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				}
			

				

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
		<jsp:include page="top.jsp" flush="true"></jsp:include>
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
											<td class="pro-thumbnail"><a href="./productDetails?product_id=${cart.product_id}"><img
													class="img-fluid"
													src="assets/images/${cart.product_img}" alt="Product" /></a></td>
											<td class="pro-title"><a href="./#">${cart.product_name}</td>
											<td class="pro-price"><span><fmt:formatNumber
														value="${cart.product_price}" /></span></td>
											<td class="pro-quantity">
												<div class="quantity">

													<div class="cart-plus-minus" data-num="${cart.cart_id}" data-price="${cart.product_price}" >
														<input class="cart-plus-minus-box" name=cartQuantity
															id="cartQuantity${cart.cart_id}"
															value="${cart.cart_quantity}" type="text"  >
														<div id="down" class="cartQuantityDown">-</div>
														<div id="up" class="cartQuantityUp">+</div>
													</div>
												</div>
											</td>



											<td class="pro-subtotal"><span class="sum" id="sum${cart.cart_id}"> 
											<fmt:formatNumber value="${cart.product_price * cart.cart_quantity}"/></span> &nbsp; 
											


											<td class="pro-remove" data-num="${cart.cart_id}"><span class="iconify" data-icon="ei:trash" data-width="30" data-height="30"></span></td>
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
		<jsp:include page="support.jsp" flush="true"></jsp:include>
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