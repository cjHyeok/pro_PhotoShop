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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function() {

	history.pushState(null, null, location.href); //뒤로가기 방지
	
	window.onpopstate = function(event) {
		history.go(1);
		this.handleGoback();
	};
	
	function phone_format(num){
		return num.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]{4})/,"$1-$2-$3");
	}
	
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
<c:set var="phone1" value="${fn:substring(xxx.phone,0,3)}" /> <!-- (시작배열,길이) -->
<c:set var="phone2" value="${fn:substring(xxx.phone,3,7)}" />
<c:set var="phone3" value="${fn:substring(xxx.phone,7,11)}" />



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
		
		
		
<table width="70%" style="margin-left: auto; margin-right: auto; " cellspacing="0" cellpadding="0">

	<tr>
		<td height="30">
	</tr>



	<tr>
		<td height="30">
	</tr>

	<tr>
		<td align="center"><b><h5>주문해주셔서 감사합니다.<h5/></b></td>
	</tr>

	<tr>
		<td height="7">
	</tr>

	<tr>
		<td class="td_default" align="center"><b>${user_name}</b> 님의 주문이
			안전하게 처리되었습니다.</td>
			
	</tr>
	
	<tr>
		<td height="40">
		<hr>
	</tr>

	<tr>
		<td class="td_default"><b>상품 및 배송정보</b></td>
	</tr>

	<tr>
		<td height="15">
	</tr>

	<tr>
		<td>
			<table width="100%" border="1" style="border-collapse: collapse;background: #efedee;" bordercolor="#CCCCCC">
				<tr>
					<td class="td_default" width="150" height="35">받으시는 분</td>
					<td class="td_default" height="35">${user_name}</td>
				</tr>
				<tr>
					<td class="td_default" height="35">주소</td>
					<td class="td_default" height="35">${address1}&nbsp${address_detail}
					</td>
				</tr>

				<tr>
					<td class="td_default" height="35">휴대전화</td>
					<td class="td_default" height="35">
						${phone1}-${phone2}-${phone3}</td>
				</tr>
			</table>
		</td>
	</tr>


	<tr>
		<td height="20">
	</tr>

	<tr>
		<td>
			<table width="100%" border="1" style="border-collapse: collapse; background: #efedee;" bordercolor="#CCCCCC">
				<tr>
					<td width="100" class="td_default" height="35" align="center"><strong></strong></td>
					<td width="250" class="td_default" height="35" align="center"><strong>상품명</strong></td>
					<td width="100" class="td_default" height="35" align="center"><strong>판매가</strong></td>
					<td class="td_default" width="50" height="35" align="center"><strong>수량</strong></td>
					<td class="td_default" width="100" height="35" align="center"><strong>합계</strong></td>
				</tr>


				<!--  변수 선언 -->
				<c:set var="totalSum" value="0" />
				<c:forEach var="xxxc" items="${cList}" varStatus="status">
					<!-- 누적 -->
					<c:set var="totalSum" value="${totalSum + xxxc.product_price * xxxc.cart_quantity }" />
						
					<tr>
						<td height="45" class="td_default" align="center"><span><a><img style="width: 60px;" src="assets/images/${xxxc.product_img}"/></a></span></td>
						<td height="45" class="td_default" align="center"><span>${xxxc.product_name}</span></td>
						<td height="45" class="td_default" align="center"><span><fmt:formatNumber value="${xxxc.product_price}"/></span>원</td>
						<td height="45" class="td_default" align="center"><span>${xxxc.cart_quantity}</span>개</td>
						<td height="45" class="td_default" align="center"><span><fmt:formatNumber value="${xxxc.product_price * xxxc.cart_quantity}"/></span>원
						</td>
					</tr>


				</c:forEach>
			</table>
		</td>
	</tr>

	<tr>
		<td height="40">
	</tr>

	<tr>
		<td class="td_default"><b>결제정보</b></td>
	</tr>

	<tr>
		<td height="15">
	</tr>

	<tr>
		<td>
			<table width="100%" border="1" style="border-collapse: collapse; background: #efedee;" bordercolor="#CCCCCC">
				<tr>
					<td class="td_default" width="150" height="35">결제금액</td>
					<td class="td_default" height="35"><fmt:formatNumber value="${totalSum}"/>원
					</td>
				</tr>
				<tr>
					<td class="td_default" width="150" height="35">결제수단</td>
					<td class="td_default" height="35" align='right'>
						<%-- <span>${xxx.payMethod}</span> --%>
					</td>
				</tr>
			</table>
		</td>
	</tr>

	<tr>
		<td height="40">
	</tr>



	<tr>
		<td height="40">
	</tr>

	<tr>
		<td class="td_default" align="center"><a class="a_default" href="./">메인으로 이동</a></td>
	</tr>

	<tr>
		<td height="30">
	</tr>

</table>
		
		
		
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