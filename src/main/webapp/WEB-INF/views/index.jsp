<!doctype html>
<html class="no-js" lang="en">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 인코딩 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dto.CartDTO" %>


<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge"> 
<title>WOOM 에 오신걸 환영합니다. -> WOOM !</title>

<meta property="og:image"   content="http://um-woom.shop/goods/assets/images/logo/logo.png" />
<meta property="og:title"   content="Woom!" />
<meta property="og:description"   content="WOOM에 오신걸 환영합니다." />

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

<!-- Main Style CSS (Please use minify version for better website load performance) -->
<link rel="stylesheet" href="./assets/css/style.css">
<!-- <link rel="stylesheet" href="./assets/css/style.min.css"> -->
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

<%


List<CartDTO> cList = (List<CartDTO>)session.getAttribute("cartList"); 

String cListSize = "";
if( cList != null) {
	System.out.println("A12312clist ===" + cList); 
	cListSize = Integer.toString(cList.size());   
}

%>


$(document).ready(function() {

	// "", null, undefined, 이상한 숫자, 빈 Object, 빈 Array도 검사
	function isEmpty(data) {
	    if(typeof(data) === 'object') {
	        if(!data) {
	            return true;
	        }
	        else if(JSON.stringify(data) === '{}' || JSON.stringify(data) === '[]') {
	            return true;
	        }
	        return false;
	    }
	    else if(typeof(data) === 'string') {
	        if(!data.trim()) {
	            return true;
	        }
	        return false;
	    }
	    else if(typeof(data) === 'undefined') {
	        return true;
	    }
	    else if(isNaN(data) === true) {
	        return true;
	    }
	    else if( data == 'null') {
	        return true;
	    }
	    else {
	        return false;
	    }
	}	
	
	
	$(".cart").on("click", function() {
		console.log("카트 담기 버튼 클릭 ");
		
		var user_id = '<%=(String)session.getAttribute("user_id")%>';
		

		console.log("user_id #wish "+user_id);
		console.log("user_id length "+user_id.length);
		
		if( user_id == 'null' || isEmpty(user_id) ) {
		//if (user_id == "" || user_id === undefined || user_id == null){
			alert("로그인 해주세요");
			return;
		}
		
		console.log("user_id length "+user_id.length);
		
		var product_id= $(this).attr("data-num");
		
		$.ajax({
			url : "loginCheck/cartAddDirect",
			type : "POST",
			dataType: 'text',
			data : {
				product_id : product_id
			},
			success : function(data, status, xhr) {
				console.log("success " + data); 
				 $("#miniCart").html(data); 
			},
			error : function(xhr, status, error) {
				console.log(error);
				console.log("fail");
			}
		});
	});
		
		
	$(".wishLike").on("click", function() {
		
		 var user_id = '<%=(String)session.getAttribute("user_id")%>';
		 console.log("user_id #wish "+user_id);
		
		 if( user_id == 'null' || isEmpty(user_id) ) {
			alert("로그인 해주세요");
			return;
		}
		
		console.log("위시리스트 담기 버튼 클릭 ");
		//var params = jQuery("#productListForm").serialize();
		var product_id= $(this).attr("data-num");
		//console.log("params" + params);
		console.log("product_id"+ product_id);
		
		$.ajax({
			url : "loginCheck/wishAdd",
			type : "POST",
			//contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
	        dataType: 'text',
			data : {
				//params : params,
				product_id : product_id      //form 안 데이터
			},
			success : function(data, status, xhr) {
				console.log("success " + data); // wishCount, wish_my  유무
				
				var wishdata = data;
				var after_wishdata = wishdata.split(',');
				
				$("#wishCount"+ product_id).text("좋아요 " + after_wishdata[0] + "개");
				
				if(after_wishdata[1] == '0'){
					$("#wish_my"+ product_id).html('<i class="fa fa-heart-o" aria-hidden="true" style="color: red;"></i>');
				}else{
					$("#wish_my"+ product_id).html('<i class="fa fa-heart" aria-hidden="true" style="color: red;"></i>');
				}
				
				console.log("위시리스트 담기 버튼 클릭2 완료 ");
				
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
<%-- 	<c:if test="${!empty success }">
		<!-- 회원가입성공메세지 -->
		<script>
			alert('${success}');
		</script>
	</c:if> --%>






	<div class="home-wrapper home-3">
		<!-- Header Area Start Here -->
		<jsp:include page="top.jsp" flush="true"></jsp:include>
		<!-- Header Area End Here -->
		<!-- Begin Slider Area One -->
		<div class="slider-area" >
			<div class="obrien-slider arrow-style"
				data-slick-options='{
        "slidesToShow": 1,
        "slidesToScroll": 1,
        "infinite": true,
        "arrows": true,
        "dots": true,
        "autoplay" : true,
        "fade" : true,
        "autoplaySpeed" : 7000,
        "pauseOnHover" : false,
        "pauseOnFocus" : false
        }'
				data-slick-responsive='[
        {"breakpoint":992, "settings": {
        "slidesToShow": 1,
        "arrows": false,
        "dots": true
        }}
        ]'>
				<div
					class="slide-item slide-1 bg-position slide-bg-2 animation-style-01"
					>
					<div class="slider-content">
						<h4 class="slider-small-title">Organic Products</h4>
						<h2 class="slider-large-title">Life with Beauty</h2>
						<div class="slider-btn">
							<a class="obrien-button black-btn" href="./productList">Shop
								Now</a>
						</div>
					</div>
				</div>
				<div
					class="slide-item slide-4 bg-position slide-bg-2 animation-style-01"
					>
					<div class="slider-content">
						<h4 class="slider-small-title">Cold process organic</h4>
						<h2 class="slider-large-title">Superior skin care</h2>
						<div class="slider-btn">
							<a class="obrien-button black-btn" href="./productList">Shop
								Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>




		<!-- BEST  Area End Here -->


		<!-- Product Area Start Here -->
		<div class="product-area mt-text mb-text-p">
			<div class="container container-default custom-area">
				<div class="row">
					<div class="col-lg-5 m-auto text-center col-custom">
						<!-- <div class="section-content"> -->
						<h2 class="title-1 text-uppercase">Best Sellers</h2>
						<div class="desc-content"></div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 product-wrapper col-custom">
					<div class="product-slider"
						data-slick-options='{
                        "slidesToShow": 4,
                        "slidesToScroll": 1,
                        "infinite": true,
                        "arrows": false,
                        "dots": false
                        }'
						data-slick-responsive='[
                        {"breakpoint": 1200, "settings": {
                        "slidesToShow": 3
                        }},
                        {"breakpoint": 992, "settings": {
                        "slidesToShow": 2
                        }},
                        {"breakpoint": 576, "settings": {
                        "slidesToShow": 1
                        }}
                        ]'>



					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Product Area End Here -->







	<!-- Slider Area One End Here -->
	<!-- MAIN ProductLIST Area Start Here -->
	<div class="product-area mt-text mb-no-text">


		<!-- <h2 class="title-1 text-uppercase">Best Sellers</h2>  -->


		<!-- 			<div class="container container-default custom-area">
				<div class="row">
					<div class="col-lg-5 col-custom m-auto text-center">
						<div class="section-content">
							<h2 class="title-1 text-uppercase">Featured Products</h2>
							<div class="desc-content">
								<p>All best seller product are now available for you and
									your can buy this product from here any time any where so sop
									now</p>
							</div>
						</div>
					</div>
				</div> -->

		<!-- productlist-=------------------------------------ -->

		<div class="row shop_wrapper grid_4" style="padding: 0px 100px 0px 100px;">
			<c:forEach var="dto" items="${productList}" varStatus="status">
			
				<div class="col-lg-3 col-md-6 col-sm-6 col-custom product-area">
					<div class="single-product position-relative">
						<div class="product-image">
							<a class="d-block"
								href="./productDetails?product_id=${dto.product_id}&user_id=${login.user_id}"> <img
								src="assets/images/${dto.product_img}" alt=""
								class="product-image-1 w-100"> <%-- <img src="assets/images/${dto.product_img}_on.jpg" alt="" class="product-image-2 position-absolute w-100"> --%>
							</a>
						</div>
						<div class="product-content">
							<div class="product-rating mb-3">
                            <button id="wishLike" data-num="${dto.product_id}" class="wishLike" type="button">
                            	<div id="wish_my${dto.product_id}">
	                               <c:if test="${dto.wish_my eq 0}">
										<i class="fa fa-heart-o" aria-hidden="true" style="color: red;"></i>
									</c:if>	
									
									<c:if test="${dto.wish_my eq 1}">
										<i class="fa fa-heart" aria-hidden="true" style="color: red;"></i>
									</c:if>		
								</div>
							</button>
									
									<div id="wishCount${dto.product_id}">
									좋아요 ${dto.wish_count}개<br>
									</div>
                            </div>
                           					 <!-- </div> -->
											
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
											<a class="cart" data-num="${dto.product_id}" title="장바구니 담기"> <i class="ion-bag"></i></a>  
											<a href="./productDetails?product_id=${dto.product_id}" data-bs-toggle="modal" title="상품 상세보기"><i class="ion-eye"></i></a>
											
										</div>
					</div>
				</div>
				</c:forEach>
					<tr>
						<td height="10"></td>
					</tr>
			</div>
			

		</div>



	</div>
	<!-- MAIN productlist END------------------------------------ -->
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

	<!-- Modal Area Start Here -->
	

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