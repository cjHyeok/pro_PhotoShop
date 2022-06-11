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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script> 
<!-- <link rel="stylesheet" href="./assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="./assets/css/plugins/plugins.min.css"> -->

<!-- Main Style CSS (Please use minify version for better website load performance) -->
<link rel="stylesheet" href="./assets/css/style.css">
<!-- <link rel="stylesheet" href="./assets/css/style.min.css"> -->
</head>




<script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".pro-remove").on("click", function() {
			console.log("삭제버튼 클릭");
			var wish_id = $(this).attr("data-num");
			var xxx = $(this);
			$.ajax({
				url : "loginCheck/wishDelete",
				type : "get",
				dataType : "text",
				data : {
					wish_id : wish_id
				},
				success : function(data, status, xhr) {
					console.log("success");
					console.log("data"+data);
					console.log("status"+status);

					//dom삭제 
					xxx.parents().filter("tr").remove(); //tr태그 삭제해서 항목 지우기
					if(data == 0){ //size넘긴값 0일때 나오게하려고
						$("#wishBody").text("");
						$("#wishBody").text("위시리스트에 담긴 상품이 없습니다.");
					}

				},
				error : function(xhr, status, error) {
					console.log(error);
				}
			});
		});//end event

	});
</script>



<body>

<%-- 	<c:if test="${!empty mesg }">
		<script>
			//session.removeAttribute("mesg");
			alert("${mesg} 상품을 위시리스트에 담았습니다.");
		</script>
	</c:if> --%>

	
	<div class="contact-wrapper">
		<!-- Header Area Start Here -->
		<jsp:include page="top.jsp" flush="true"></jsp:include>
		<!-- Breadcrumb Area Start Here -->
		<div class="breadcrumbs-area position-relative">
			<div class="container">
				<div class="row">
					<div class="col-12 text-center">
						<div class="breadcrumb-content position-relative section-content">
							<h3 class="title-3">Wishlist</h3>
							<ul>
								<li><a href="./">Home</a></li>
								<li>Wishlist</li>
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
				<div class="row">
					<div class="col-lg-12">
						<!-- Wishlist Table Area -->
						<div class="wishlist-table table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th style=" background-color: #f0edee; border-color: #e1e1e1;">상품 사진</th>
										<th style=" background-color: #f0edee; border-color: #e1e1e1;">상품 이름</th>
										<th style=" background-color: #f0edee; border-color: #e1e1e1;">가격</th>
										<th style=" background-color: #f0edee; border-color: #e1e1e1;">카트에 담기</th>
										<th style=" background-color: #f0edee; border-color: #e1e1e1;">삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="wish" items="${wishList}" varStatus="status">
										<tr>
											<td class="pro-thumbnail"><a href="./productDetails?product_id=${wish.product_id}"><img
													class="img-fluid"
													src="assets/images/${wish.product_img}" alt="Product" /></a></td>
											<td class="pro-title"><a href="./#">${wish.product_name}</td>
											<td class="pro-price"><span><fmt:formatNumber
														value="${wish.product_price}" /></span></td>

											
											 <td class="pro-cart"><a href ="./loginCheck/wishCartadd?product_id=${wish.product_id}">
											 <span class="iconify" data-icon="ion:cart" data-width="30" data-height="30"></span></a></td> 

										

											<td class="pro-remove" data-num="${wish.wish_id}"><span class="iconify" data-icon="ion:trash" data-width="30" data-height="30"></span></a></td>
										</tr>

									</c:forEach>
								</tbody>
							</table>
							
						</div>
							<br>
							<br>
						<div>
							<h5><p style="text-align: center;" id="wishBody"></p></h5>
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