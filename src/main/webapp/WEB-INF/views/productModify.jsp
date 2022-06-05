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
<script type="text/javascript">

	$(document).ready(function() {
		
		var product_cid =$("#product_cid").val();  //2,, 히든 값으로 해준 product_category_id를 변수로 만들어준후
		/* 
		var product_category_id = $("#product_category_id").val();
		console.log("product_category_id" + product_category_id);
		 */
		$("#product_category_id").val(product_cid).prop("selected", true);//3,, 변수값을 폼에서 만들어준 var product_category_id를 써서 값을 가져와서 셀렉트 하도록 만들어줌
		
		
		 
		 
		$("#product_cate_num").on("change", function() {
			var product_cate_num = $(this).val();
			$("#product_category_id").val(product_cate_num);
		});
		
		
		$("form").on("submit", function(event) {

			var product_id = $("#product_id").val(); 
			var product_category_id = $("#product_category_id").val(); 
			var product_name = $("#product_name").val();
			var product_price = $("#product_price").val();
			var product_quantity = $("#product_quantity").val();
			var product_description_summary = $("#product_description_summary").val();
			var product_description = $("#product_description").val();
			var product_sales_state = $("#product_sales_state").val();
			var product_img = $("#product_img").val();
			var product_sub_img_1 = $("#product_sub_img_1").val();
			var product_sub_img_2 = $("#product_sub_img_2").val();
			var product_sub_img_3 = $("#product_sub_img_3").val();
			var product_sub_img_4 = $("#product_sub_img_4").val(); 
			
			console.log("product_category_id =" + product_category_id);
 			
			if (product_id.length < 8) {
				alert("상품 번호를 8자리 이상 입력해주세요")
				$("#product_id").focus();
				event.preventDefault();
			} 
			else if (product_category_id.length < 1) {
				alert("카테고리 번호를 입력해주세요")
				$("#product_category_id").focus();
				event.preventDefault();
			
			} else if (product_name.length < 1) {
				alert("상품 이름을 입력해주세요")
				$("#product_name").focus();
				event.preventDefault();
			
			} else if (product_price.length < 1) {
				alert("상품 가격을 입력해주세요")
				$("#product_price").focus();
				event.preventDefault();
			
			} else if (product_quantity < 1) {
				alert("상품 수량을 입력해주세요")
				$("#product_quantity").focus();
				event.preventDefault();
			
			} else if (product_description_summary.length < 1) {
				alert("간단한 상품 설명 입력해주세요")
				$("#product_description_summary").focus();
				event.preventDefault();
			
			} else if (product_description.length < 1) {
				alert("자세한 상품 설명을 입력해주세요")
				$("#product_description").focus();
				event.preventDefault();
			
			} else if (product_sales_state.length < 1) {
				alert("상품 할인 상태를 입력해주세요")
				$("#product_sales_state").focus();
				event.preventDefault();
			
			} else if (product_img.length < 1) {
				alert("상품 메인 이미지를 넣어주세요")
				$("#product_img").focus();
				event.preventDefault();
			
			}  
	});
		
		

		$("#modify_Btn").on("click", function() {

		location.href = "/productItem";
		});
	
		
		
});
</script>
<body>


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
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
 <!-- Login Area Start Here -->
        <div class="login-register-area mt-no-text mb-no-text">
            <div class="container container-default-2 custom-area">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-custom">
                        <div class="login-register-wrapper">
                            <div class="section-content text-center mb-5">
                                <h2 class="title-4 mb-2">상품 수정</h2>
                                
                            </div>
                            <form action="loginCheck/ModifyUpdate" method="post">
                            
                            	<div class="single-input-item mb-3">
                                    <input id="product_id" name="product_id" type="text" value="${productModify.product_id}" readonly/>
                                </div>
                           
                                <div class="single-input-item mb-3"> <!-- 봄 여름 가을 겨울 -->
                                
                                    <select id="product_category_id" name="product_category_id">
            							<c:forEach var="category_list" items="${category_List}" varStatus="status">
            								<option value="${category_list.product_category_id}">${category_list.category_name}</option>
            							</c:forEach>
                                    </select>
                                </div>


                                <div class="single-input-item mb-3">
                                	<input id="product_cid" name="product_cid" type="hidden" value="${productModify.product_category_id}"> <!-- 1,, mapper productdetail 확인후, input박스안에서 product_category_id 를 히든타입으로 id name 둘다 새로 만들어준후 script에서   -->
                                    <input id="product_name" name="product_name" type="text" value="${productModify.product_name}"> 
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_price" name="product_price" type="text" value="${productModify.product_price}">
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_quantity" name="product_quantity" type="text" value="${productModify.product_quantity}">
                                </div>
                                
                                <div class="single-input-item mb-3">
                                    <textarea rows="3" cols="48" id="product_description_summary" name="product_description_summary" type="text">${productModify.product_description_summary}</textarea>
                                
                                </div>                              
                                
                                <div class="single-input-item mb-3">
                                    <textarea rows="4" cols="48" id="product_description" name="product_description" type="text">${productModify.product_description}</textarea>
                                </div>
                                
                                <div class="single-input-item mb-3">
                                    <input id="product_sales_state" name="product_sales_state" type="text" value="${productModify.product_sales_state}">
                                </div>
                         
                                
                                
                                
                                
                                <div class="single-input-item mb-3">
                                    <input id="product_img" name="product_img" type="text" value="${productModify.product_img}"><!-- <span type="button">등록</span> -->
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_sub_img_1" name="product_sub_img_1" type="text" value="${productModify.product_sub_img_1}">
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_sub_img_2" name="product_sub_img_2" type="text" value="${productModify.product_sub_img_2}">
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_sub_img_3" name="product_sub_img_3" type="text" value="${productModify.product_sub_img_3}">
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="product_sub_img_4" name="product_sub_img_4" type="text" value="${productModify.product_sub_img_4}">
                                </div>
                                
                                <div class="single-input-item mb-3">
                                    <div class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                        <div class="remember-meta mb-3">
                                            <!-- <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="rememberMe">
                                                <label class="custom-control-label" for="rememberMe">Subscribe Our Newsletter</label>
                                            </div> -->
                                        </div>
                                    </div>
                                </div>
                                <div class="single-input-item mb-3">
                                    
                                    <button class="btn obrien-button-2 primary-color" id="modify_Btn" onclick="location.href='productItem'" >상품 수정</button> 
                                    <!-- <input type="button" class="btn obrien-button-2 primary-color" onclick="return /productItem()">상품 수정</button> -->
                                    
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


