<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>


<script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		window.resizeTo(700, 1000); //팝업창 가로, 세로 사이즈 조정  [모바일 확인필요]

		

	});
</script>


<body>
<div style="padding: 20px; text-align: center;">
	<form action="reviewWriteAction" method="post">
	<input type="hidden" name="product_id" value="${productDetails.product_id}">
	<input type="hidden" name="order_id" value="${order_id}">  <!-- map에서 직접넘김 -->
	<input type="hidden" name="user_name" value="${login.user_name}">
		
		
		
		
		
	
		<div class="single-product-main-area" style="table-layout: fixed">
			<div>
				<div class="row" style=" padding-bottom: 140px; ">
					<div class="single-image border" style="float: left; padding-left: 70px;">
						<img src="assets/images/${productDetails.product_img}" style="width: 210px; text-align: center;" alt="Product">
					</div>	
					
					<div> 
						<div class="product-head mb-3"  style="display: table-cell; padding-left: 140px;vertical-align: center;">
							<h2 class="product-title" style="text-align: left;" >${productDetails.product_name}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="col-lg-7 col-custom" >
			
			<div>
<hr style= "font-size: 20px; border-top-width: 20px; border-style: hidden;" >       
			<strong>상품에 대해 평가를 해주세요</strong>
<hr style="background-color:blue; border-bottom-color: #d8d8d8;">
			 	<!-- <input name="review_like" type="text"> -->
					<div class="product-rating">
                    	<span class="iconify" data-icon="ant-design:star-filled" style="color: gray;" data-width="30" data-height="30"></span>
                    	<span class="iconify" data-icon="ant-design:star-filled" style="color: gray;" data-width="30" data-height="30"></span>
                    	<span class="iconify" data-icon="ant-design:star-filled" style="color: gray;" data-width="30" data-height="30"></span>
                    	<span class="iconify" data-icon="ant-design:star-filled" style="color: gray;" data-width="30" data-height="30"></span>
                    	<span class="iconify" data-icon="ant-design:star-filled" style="color: gray;" data-width="30" data-height="30"></span>
                    </div>                       
<hr>
<br>
				<div style="">
					<strong>구매 후기를 남겨주세요	</strong>
				</div>
<br>
				<textarea name="review_content" rows="10" cols="80"></textarea>
<br>	
			<div>
					<button style="margin:auto; border-color: grey; border-radius: 2px; width: 80px;" onclick="window.close();">취소</button><span><button style=" width: 80px; background-color: #e98c81">등록</button></span>
				</div>
			</div>
			
		</div>
		
	</form>
</div>
</body>
</html>