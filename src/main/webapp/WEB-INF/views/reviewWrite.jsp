<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		window.resizeTo(700, 1000); //팝업창 가로, 세로 사이즈 조정  [모바일 확인필요]

		

	});
</script>


<body>

	<form action="reviewWriteAction" method="post">
	<input type="hidden" name="product_id" value="${productDetails.product_id}">
	<input type="hidden" name="order_id" value="${order_id}">  <!-- map에서 직접넘김 -->
	<input type="hidden" name="user_name" value="${login.user_name}">
		<div class="single-product-main-area">
			<div class="container container-default custom-area">
				<div class="row">
					<div class="single-image border">
						<img src="assets/images/${productDetails.product_img}"
							style="width: 100px;" alt="Product">
					</div>
				</div>
			</div>

			<div class="col-lg-7 col-custom">
				<div class="product-summery position-relative">
					<div class="product-head mb-3">
						<h2 class="product-title">${productDetails.product_name}</h2>
					</div>
				</div>
			</div>
			
			상품은 만족하셨나요

			<input name="review_like" type="text">
			
			선택하세요
			<br>
			어떤 점이 좋았나요	
			<br>
			<textarea name="review_content" rows="10" cols="70"></textarea>
			<br>	
			<div>
			<button onclick="window.close();">취소</button><span><button>등록</button></span>
			</div>
		</div>
	</form>
</body>
</html>