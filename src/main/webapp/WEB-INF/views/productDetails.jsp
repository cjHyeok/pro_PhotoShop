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
<!--Bootstrap Js-->
<!-- 이걸로 버전 맞췄음 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
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


<style type="text/css">
.cartSelect {
	cursor: pointer;
}

.cartPopupLayer {
	position: absolute;
	display: none;
	background-color: #ffffff;
	border: solid 2px #d0d0d0;
	width: 270px;
	height: 140px;
	padding: 20px;
}

.cartPopupLayer div {
	position: absolute;
	top: 5px;
	right: 5px
}
</style>




</head>




<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%
	String user_name = (String) session.getAttribute("user_name");/* 	이거는 로그인쪽에서 가져옴 */
pageContext.setAttribute("CRCN", "\r\n");
pageContext.setAttribute("BR", "<br/>");
%>
<script type="text/javascript">
	$(function() {

		/* $("#cart").on("click", function() {
			 var count = $("#cart_quantity").val();
			console.log(count); 
			$("form").attr("action", "loginCheck/cartAdd")

		}) */

		/*$("#wish").on("click", function() {

			$("form").attr("action", "loginCheck/wishAdd")

		})*/

		$("#DirectOrder").on("click", function() {

			$("form").attr("action", "loginCheck/DirectOrder")

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

		$("#btnComment")
				.click(
						function() {

							console.log("btnComment");

							$
									.ajax({
										url : 'reviewWriteAdd',
										type : 'post',
										data : {
											//review_id:'${review_id}', 
											product_id : "${productDetails.product_id}",

											user_name : '${login.user_name }',

											review_content : document
													.getElementById("review_content").value,

										},
										dataType : "text",
										success : function(data, status, xhr) {
											console.log("data==", data);
											document
													.getElementById("reviewList").value = ""; //div 클래스 쪽 (<div class="pro_review mb-5" id="reviewList">여기서 가져옴)리뷰 리스트 내용 지우기.
											document
													.getElementById("review_content").value = ""; //리뷰 내용 적는 곳 ajax 성공했을 때 지우기

											$("#reviewList").html(data); //리뷰 retData 하나하나 넣어주는 부분 (controller확인)

										},
										error : function(xhr, status, error) {
										}
									});//end ajax	 
						});

		function closeLayer(obj) {
			$(obj).parent().parent().hide();
		}

		$("#cartLinkBtn").on("click", function() {
			console.log("cartLinkBtn");
			location.href = "cartList";

			console.log("cartLinkBtn####################");
			return true;

		});

		/* 클릭 클릭시 클릭을 클릭한 위치 근처에 레이어가 나타난다. */
		$('.cartSelect').click(function(e) {
			var sWidth = window.innerWidth;
			var sHeight = window.innerHeight;

			console.log("sWidth =,   sHeight=" + sWidth, sHeight);

			var oWidth = $('.cartPopupLayer').width();
			var oHeight = $('.cartPopupLayer').height();

			console.log("oWidth =, oHeight=" + oWidth, oHeight);
			// 레이어가 나타날 위치를 셋팅한다.
			var divLeft = e.clientX + 10;
			var divTop = e.clientY + 5;

			console.log("divLeft , divTop=" + divLeft, divTop);

			// 레이어가 화면 크기를 벗어나면 위치를 바꾸어 배치한다.
			//if( divLeft + oWidth > sWidth ) divLeft -= oWidth;
			//if( divTop + oHeight > sHeight ) divTop -= oHeight;

			// 레이어 위치를 바꾸었더니 상단기준점(0,0) 밖으로 벗어난다면 상단기준점(0,0)에 배치하자.
			if (divLeft < 0)
				divLeft = 0;
			if (divTop < 0)
				divTop = 0;

			divTop = 50;
			divLeft = 150;

			$('.cartPopupLayer').css({
				"top" : divTop,
				"left" : divLeft,
				"position" : "absolute"
			}).show();
		});

		$("#cart").on("click", function() {
			console.log("카트 담기 버튼 클릭 ");
			var params = jQuery("#productDetailsForm").serialize();
			$.ajax({
				url : "loginCheck/cartAdd",
				type : "POST",
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
		        dataType: 'html',
				data : params, //form 안 데이터
				success : function(data, status, xhr) {
					console.log("success " + data);
					
				 	
					var divTop = 50;
					var divLeft = 150;

					$('.cartPopupLayer').css({
						"top" : divTop,
						"left" : divLeft,
						"position" : "absolute"
					}).show();
		
				},
				error : function(xhr, status, error) {
					console.log(error);
					console.log("fail");
				}
			});
		});
		
		
		$("#wish").on("click", function() {
			console.log("위시리스트 담기 버튼 클릭 ");
			var params = jQuery("#productDetailsForm").serialize();
			$.ajax({
				url : "loginCheck/wishAdd",
				type : "POST",
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
		        dataType: 'html',
				data : params, //form 안 데이터
				success : function(data, status, xhr) {
					console.log("success " + data);
				
				},
				error : function(xhr, status, error) {
					console.log(error);
					console.log("fail");
				}
			});
		});
	});
</script>






<body>
	<form name="productDetailsForm" id="productDetailsForm" method="post" action="">
		<input type="hidden" name="product_img" id="product_img"
			value="${productDetails.product_img}"> <input type="hidden"
			name="product_name" value="${productDetails.product_name}"> <input
			type="hidden" name="product_price"
			value="${productDetails.product_price}"> <input type="hidden"
			name="product_description_summary"
			value="${productDetails.product_description_summary}"> <input
			type="hidden" name="product_id" value="${productDetails.product_id}">
		<input type="hidden" name="cart_id" value="${productDetails.cart_id}">









		<div class="shop-wrapper">
			<!-- Header Area Start Here -->
			<jsp:include page="top.jsp" flush="true"></jsp:include>
			<!-- Breadcrumb Area Start Here -->
			<div class="breadcrumbs-area position-relative">
				<div class="container">
					<div class="row">
						<div class="col-12 text-center">
							<div class="breadcrumb-content position-relative section-content">
								<h3 class="title-3">Product Details</h3>
								<ul>
									<li><a href="./">Home</a></li>
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

									<c:set var="sub_img_1"
										value="${productDetails.product_sub_img_1}" scope="session" />
									<c:set var="sub_img_2"
										value="${productDetails.product_sub_img_2}" scope="session" />
									<c:set var="sub_img_3"
										value="${productDetails.product_sub_img_3}" scope="session" />
									<c:set var="sub_img_4"
										value="${productDetails.product_sub_img_4}" scope="session" />


									<div class="single-image border">
										<!-- <a href="./assets/images/product/large-size/1.jpg"> -->
										<!-- <img src="assets/images/product/large-size/1.jpg" alt="Product"> -->

										<a href="./assets/images/${productDetails.product_img}"> <img
											src="assets/images/${productDetails.product_img}"
											alt="Product">
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



									<div class="single-thumb border">
										<c:if test="${not empty sub_img_1}">
											<img src="assets/images/${productDetails.product_sub_img_1}"
												alt="Product Thumnail">
										</c:if>
									</div>

									<div class="single-thumb border">
										<c:if test="${not empty sub_img_2}">
											<img src="assets/images/${productDetails.product_sub_img_2}"
												alt="Product Thumnail">
										</c:if>
									</div>

									<div class="single-thumb border">
										<c:if test="${not empty sub_img_3}">
											<img src="assets/images/${productDetails.product_sub_img_3}"
												alt="Product Thumnail">
										</c:if>
									</div>

									<div class="single-thumb border">
										<c:if test="${not empty sub_img_4}">
											<img src="assets/images/${productDetails.product_sub_img_4}"
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

								<c:set var="product_description_summary"
									value="${productDetails.product_description_summary}"></c:set>
								<p class="desc-content mb-5">${fn:replace(product_description_summary, CRCN, BR)}

								</p>
								<div class="quantity-with_btn mb-4">
									<div class="quantity" name="div_quantity" id="div_quantity"
										onclick="click">
										<div class="cart-plus-minus">
											<input class="cart-plus-minus-box" name="cart_quantity"
												value="1" id="cart_quantity" type="text">
											<div id="down">-</div>
											<div id="up">+</div>
										</div>
									</div>
									<div class="add-to_cart">
										<a class="btn obrien-button primary-btn" id="cart">Add
											to cart</a>

								<!-- 		<a class="cartSelect">클릭1</a> -->

										<div class="cartPopupLayer">
											<div>
												<span onClick="closeLayer(this)"
													style="cursor: pointer; font-size: 1.5em" title="닫기">X</span>
											</div>
											상품이 장바구니에 담겼습니다. <br> 바로 확인하시겠습니까? <br> <br>

											&ensp;&ensp;&ensp;&ensp;
											<button class="btn btn-primary btn-xs"
												style="background-color: #e0e0e0; border: none; box-shadow: none; color: black; font-size: 12px; width: 60px;">취소</button>
											&ensp;<span><button id="cartLinkBtn"
													class="btn btn-primary btn-xs"
													style="background-color: #1B1B1C; font-size: 12px; border: none; box-shadow: none; width: 60px;">확인</button></span>

											</br>

										</div>

										<button
											class="btn obrien-button-2 treansparent-color pt-0 pb-0"
											id="wish">Add to wishlist</button>

									</div>
								</div>
								<div class="buy-button mb-5">
									<button class="btn obrien-button-3 black-button"
										id="DirectOrder">구매하기</button>
								</div>
								<div class="social-share mb-4">
									<span>Share :</span> <a href="#"><i
										class="fa fa-facebook-square facebook-color"></i></a> <a href="#"><i
										class="fa fa-twitter-square twitter-color"></i></a>
									<!-- </a> -->
								</div>
								<!-- <div class="payment">
								<a href="./#"><img class="border"
									src="assets/images/payment/img-payment.png" alt="Payment"></a>
							</div> -->
							</div>
						</div>
					</div>
	</form>
	<!--  <상품 상세파트 리뷰위 > -->












	<div class="row mt-no-text">
		<div class="col-lg-12">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item"><a class="nav-link active text-uppercase"
					id="home-tab" data-bs-toggle="tab" href="#connect-1" role="tab"
					aria-selected="true">상품정보</a></li>
				<li class="nav-item"><a class="nav-link text-uppercase"
					id="profile-tab" data-bs-toggle="tab" href="#connect-2" role="tab"
					aria-selected="false">상품후기 <c:if test="${ReviewCount > 0}">
									( ${ReviewCount} )
								</c:if>

				</a></li>
				<li class="nav-item"><a class="nav-link text-uppercase"
					id="contact-tab" data-bs-toggle="tab" href="#connect-3" role="tab"
					aria-selected="false">교환 및 반품안내</a></li>

			</ul>
			<div class="tab-content mb-text" id="myTabContent">
				<div class="tab-pane fade show active" id="connect-1"
					role="tabpanel" aria-labelledby="home-tab">
					<div class="desc-content">
						<c:set var="product_description"
							value="${productDetails.product_description}"></c:set>
						<p class="mb-3">${fn:replace(product_description, CRCN, BR)}</p>
					</div>
				</div>
				<div class="tab-pane fade" id="connect-2" role="tabpanel"
					aria-labelledby="profile-tab">
					<!-- Start Single Content -->







					<c:choose>
						<c:when test="${ReviewCount eq 0}">
										등록된 상품평이 없습니다.
										
									</c:when>

						<c:otherwise>

							<table>
								<c:forEach var="rlist" items="${ReviewList}" varStatus="status">
									<div class="review_details">
										<div class="review_info mb-2">
											<div class="product-rating mb-2">
												<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
													class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i
													class="fa fa-star-o"></i>
											</div>

											<h5>${rlist.user_name}
												&ensp;<span> <fmt:formatDate var="dateTempParse"
														pattern="yyyy-MM-dd" value="${rlist.review_date}" /> <c:out
														value="${dateTempParse}" /></span>
											</h5>
										</div>
										<p style="font-size: 1px;">${rlist.product_name}</p>
										<br>
										<p>${rlist.review_content}</p>
									</div>
									<br>
								</c:forEach>
							</table>
						</c:otherwise>
					</c:choose>















					<!-- End Single Content -->
				</div>
				<div class="tab-pane fade" id="connect-3" role="tabpanel"
					aria-labelledby="contact-tab">
					<div class="shipping-policy">
						<h4 class="title-3 mb-4">배송안내</h4>
						<p class="desc-content mb-2">
							배송비 : 기본 배송료는 3,000원입니다. <br> 50,000원 이상 구매 시 무료배송입니다.<br>
							상품의 평균 배송일은 입금 확인 후 영업일 기준 3일입니다.<br> 배송 마감 시간에 따라 이미 택배 발송된
							경우 주문취소가 불가능합니다.<br> 주문 취소가 불가능한 경우 이메일로 연락 주시기 바랍니다. (이메일 :
							um.woom@gmail.com )<br> 주문 순으로 순차 배송 되며, 재고가 없을 경우 고객센터에서
							연락드립니다.
						</p>
						<br>
						<!-- <ul class="policy-list mb-2">
										<li>1-2 business days (Typically by end of day)</li>
										<li><a href="./#">30 days money back guaranty</a></li>
										<li>24/7 live support</li>
										<li>odio dignissim qui blandit praesent</li>
										<li>luptatum zzril delenit augue duis dolore</li>
										<li>te feugait nulla facilisi.</li>
									</ul> -->
						<h4 class="title-3 mb-4">교환 및 반품안내</h4>
						<p class="desc-content mb-2">
							고객 단순 변심일 경우 교환 비용 왕복 배송비 6,000원 부과됩니다.<br>
						<li>단, 고객 변심의 경우에만 발생하며 부분 반품 시, 남은 금액이 무료배송 조건이 유지되는 경우 반품
							회송 비용(3,000원)만 발생합니다.</li> <br> 교환/반품 신청 기준일: 단순 변심에 의한 상품의
						교환/반품은 수령 후 7일 이내까지만 가능합니다.<br> 상품의 불량이나 오배송일 경우 당사가 택배비를
						부담하며, 수령 후 7일 이내 교환 신청 부탁드립니다.<br> 상품의 내용이 표시·광고의 내용과 다른 경우에는
						상품을 수령한 날부터 30일 이내 교환/환불이 가능합니다.<br> 상품 택(tag) 제거 또는 포장 개봉으로
						상품 가치 훼손 시에는 상품 수령 후 7일 이내라도 교환/반품이 불가능합니다.<br> 구매 후 가격 변경,
						추가 혜택 제공으로 인한 교환/환불은 불가능합니다.<br> 일부 행사 상품은 교환/반품이 불가할 수 있습니다.
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
							소비자분쟁해결 기준(공정거래위원회 고시)에 따라 피해를 보상받을 수 있습니다.<br> A/S는 이메일로 연락
							주시기 바랍니다. (이메일 : um.woom@gmail.com ) <br>
						</p>
					</div>
				</div>
				<div class="tab-pane fade" id="connect-4" role="tabpanel"
					aria-labelledby="review-tab">
					<div class="size-tab table-responsive-lg"></div>
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
							<h1 class="title">Need Help</h1>
							<p class="desc-content">Email: um.woom@gmail.com</p>
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
	<jsp:include page="support.jsp" flush="true"></jsp:include>
	<!-- Footer Area End Here -->
	</div>



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