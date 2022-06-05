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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".pro-remove").on("click", function() {
					console.log("삭제버튼 클릭 ");
					var product_id = $(this).attr("data-num");
					var xxx = $(this);
					$.ajax({
						url : "/loginCheck/ItemDelete",
						type : "get",
						dataType : "text",
						data : {
							product_id : product_id
						},
						success : function(data, status, xhr) {
							console.log("success");
							location.reload();//성공하면 자동 새로고침으로 지워주기
							
							
						},
						error : function(xhr, status, error) {
							console.log(error);
						}
					});
				});
			});
</script>

<body>
<c:set var="xxx" value="${mDTO}" />

<c:set var="user_id" value="${xxx.user_id}" />
<c:set var="user_name" value="${xxx.user_name}" />
<c:set var="post" value="${xxx.post}" />
<c:set var="address1" value="${xxx.address1}" />
<c:set var="address2" value="${xxx.address2}" />
<c:set var="address_detail" value="${xxx.address_detail}" />
<c:set var="phone" value="${xxx.phone}" />



	<div class="contact-wrapper">
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
		
		
		
		
		
		
		
		
		<!-- Wishlist main wrapper start -->
		<div class="wishlist-main-wrapper mt-no-text mb-no-text">
			<div class="container container-default-2 custom-area">
			
			<form id="searchForm">
				<input type="text" id="search">
				<button id="searchBtn">search</button>
			</form>
				<div class="row">
				<a class="obrien-button white-btn" href="./productForm">상품 등록</a>
				
					<div class="col-lg-12">
						<!-- Wishlist Table Area -->
						<div class="wishlist-table table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										
										<th class="pro-Item">상품번호</th>
										<th class="pro-thumbnail">상품 이미지</th>
										<th class="pro-title">상품 이름</th>
										<th class="pro-price">가격</th>
										<th class="pro-state">등록일</th>
										<th class="pro-remove">삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="Item" items="${productItem}" varStatus="status">
										<tr>
											<td class="pro-Item">
												<a href ="./productModify?product_id=${Item.product_id}">${Item.product_id}</a>
											</td>
											
											
											<td class="pro-thumbnail"><a href=""><img
													class="img-fluid"
													src="assets/images/${Item.product_img}" alt="Product" /></a></td>
											
											<td class="pro-title"><a href="./#">${Item.product_name}</td>
											
											<td class="pro-price"><span><fmt:formatNumber
														value="${Item.product_price}" /></span></td>

											
											 <td class="pro-state"><fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${Item.product_register_date}"/><c:out value="${dateTempParse}"/></td>
											 

											
											
											<td class="pro-remove" data-num="${Item.product_id}"><i class="ion-trash-b"></i></a></td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Wishlist main wrapper end -->
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
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