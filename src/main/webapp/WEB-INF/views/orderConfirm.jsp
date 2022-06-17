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



<!-- <meta property="og:title" content="woom 쇼핑몰 " />
<meta property="og:image" content="%PUBLIC_URL%/icon.png" /> -->
<!-- 메타 태그
https://iancoding.tistory.com/231
https://parkjh7764.tistory.com/57 -->









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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from the above) -->

<!-- <link rel="stylesheet" href="./assets/css/vendor/vendor.min.css">
    <link rel="stylesheet" href="./assets/css/plugins/plugins.min.css"> -->

<!-- Main Style CSS (Please use minify version for better website load performance) -->
<link rel="stylesheet" href="./assets/css/style.css">
<!-- <link rel="stylesheet" href="./assets/css/style.min.css"> -->
</head>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
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

<script type="text/javascript">  /* 주문하기 체크 안 되어있으면 안 넘어가도록 */
$(document).ready(function() {
	 var IMP = window.IMP; // 생략 가능
	 IMP.init("imp09182599"); // 예: imp00000000

	$("form").on("submit", function(event) {
		
		var exc_username = $("#send_user_name").val();
		var exc_post = $("#send_post").val();
		var exc_address1 = $("#send_address1").val();
		//var exc_address2 = $("#send_address2").val();
		var exc_address_detail = $("#send_address_detail").val();
		var exc_phone = $("#send_phone").val();
		
		if (exc_username.length < 3) {
			alert("이름를 입력해주세요")
			$("#send_user_name").focus();
			//event.preventDefault();
			return false;
		
		} else if (exc_post.length < 1) {
			alert("우편번호을 입력해주세요")
			$("#send_post").focus();
			//event.preventDefault();
			return false;
		
		} else if (exc_address1.length < 1) {
			alert("주소를 입력해주세요")
			$("#send_address1").focus();
			//event.preventDefault();
			return false;
		
		} else if (exc_address_detail.length < 1) {
			alert("상세 주소를 입력해주세요")
			$("#send_address_detail").focus();
			//event.preventDefault();
			return false;
		
		} else if (exc_phone.length < 1) {
			alert("전화번호를 입력해주세요")
			$("#send_phone").focus();
			//event.preventDefault();
			return false;
		
		} 
		
		
		
		var check = $('input:checkbox[name="rememberMe"]').is(":checked");
		
		if (check != true){
			alert("구매 동의를 체크해주세요");
			//event.preventDefault();
			return false;
		}
		console.log("11111" );
		
		
		var orderId = document.getElementById('orderId').value;
		
		if(orderId.length > 0) {
			requestPay(); //결제 함수실행
			console.log("orderId length ==" + orderId)
		}else{
			createorderId();
			console.log("createorderId ==")
		} 
		 
		event.preventDefault();
		console.log("222222");
		
	});
	 
 
	function createorderId(){
		 var params = jQuery("#orderConfirmForm").serialize();
		 var total = document.getElementById('totalSum').value;  
		 const number = total.split(',').join(""); //,제거하고 조인에서 숫자 붙이고
		$.ajax({
			url : "orderCreate",
			type : "POST",
			async: false,
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
			dataType : "text", 
			data : jQuery("#orderConfirmForm").serialize(),
			success : function(data, status, xhr) {  
			   
			   console.log("data orderConfirm ajax == " + data); 
			   document.getElementById('orderId').value = data;
			   
			   requestPay(); //결제 함수실행
			   
			},
			error : function(xhr, status, error) {
				console.log(error); 
				event.preventDefault();
			}
		});		
		
	} 
	
	function requestPay() {
	      // IMP.request_pay(param, callback) 결제창 호출
	     
	      // 1. 정보 GET 
	      // 2. order 생성 후 ORDER ID get
	      // 3. orderid 로 merchant_uid 생성한다.  
	      
		  var username = document.getElementById('send_user_name').value;
	      var tel = document.getElementById('send_phone').value;
	      var addr = document.getElementById('send_address1').value + " " +  document.getElementById('send_address2').value;
	      var post = document.getElementById('send_post').value;
	      console.log(username,tel,addr,post); 
	      
	      
	      var products_name = document.getElementById('products_name').value;
	      console.log("products_name  : " + products_name); 
	      
	      
	      var orderId = document.getElementById('orderId').value;
	      console.log("var orderId" + orderId); 
	     
	      //var product_name = ${"#pNum"}.val();
	      var total = document.getElementById('totalSum').value;  
		  const number = total.split(',').join(""); //,제거하고 조인에서 숫자 붙이고 
		  console.log(number);
		  
		  //alert("number"+number);
		   
		  console.log(products_name);
	      
  	      IMP.request_pay({ // param
	          pg: "html5_inicis",
	          pay_method: "card",
	          merchant_uid: "ORDWOOM-"+orderId,  ///////
	          name: products_name,
	          amount: number,
	          buyer_name: username,
	          buyer_tel: tel,
	          buyer_addr: addr,
	          buyer_postcode: post,
	          m_redirect_url: "http://um-woom.shop/goods/orderDone?order_id=" + orderId
	          /* 모바일일 경우 m_redirect_url로 빠짐 */
	      }, function (rsp) { // callback  
	    	 
	          if (rsp.success) { 
	        	  
	        	  $.ajax({
	        		  url: "payments/complete",
					  method: "GET",
					  async: false,
					  dataType : "text", 
					  //headers: { "Content-Type": "application/json" },
					  data: {
						  imp_uid: rsp.imp_uid,
						  merchant_uid: rsp.merchant_uid
					  }, 
	      			  success : function(data, status, xhr) {  
	      			   
		      			  console.log("Done data " + data);
						  // 가맹점 서버 결제 API 성공시 로직
						  if(data == "success"){ 
						  	console.log("success");  
							window.location = "./orderDone?order_id=" + orderId; 
						 }
	      			},
	      			error : function(xhr, status, error) {
	      				console.log(error); 
	      				event.preventDefault();
	      			}
	      		});		
 
	             
	          } else { 
	              // 결제 실패 시 로직, 
	              console.log(rsp.error_msg); 
	              event.preventDefault();
	          }
	      });   
	    }
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	    
	    var total = parseInt(xxx.product_price) * parseInt(xxx.cart_quantity);
	    
	    $("#totalSum").text(numberWithCommas(total));
	} 
	
	
});
</script>
<body>

<c:set var="products_name" value="${cList.get(0).product_name}" />

<!-- 한가지 주문하기 누를 때 c:when 아닐시 기존 카트리스트 --> 
	<form name="orderConfirmForm" id="orderConfirmForm" method="POST" action="">

		<jsp:include page="top.jsp" flush="true"></jsp:include>

		<!-- Breadcrumb Area Start Here -->
		<div class="breadcrumbs-area position-relative">
			<div class="container">
				<div class="row">
					<div class="col-12 text-center">
						<div class="breadcrumb-content position-relative section-content">
							<h3 class="title-3">Checkout</h3>
							<ul>
								<li><a href="./">Home</a></li>
								<li>Checkout</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumb Area End Here -->
		<!-- Checkout Area Start Here -->
		<div class="checkout-area">
			<div class="container container-default-2 custom-container">
				<div class="row"></div>




				<div class="row">
					<div class="col-lg-6 col-12">

						<div class="checkbox-form">
							<h3>주문서작성/결제</h3>
							<div class="row">

								<div class="col-md-6">
									<div class="checkout-form-list">
										<label> 이름 <span class="required" style="color: red;">*</span></label> 
										<input placeholder="" type="text" id="send_user_name" name="send_user_name"
											value="${mDTO.user_name}">
									</div>
								</div>




								<div class="col-md-10">
									<div class="checkout-form-list">
										<input type="text" name="send_post" id="send_post" placeholder="우편번호" style="width: 140px; height:40px; text-align:center;"  value="${mDTO.post}"> 
										
										<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 변경"><br>
											
										<input type="text" name="send_address1" id="send_address1"
											placeholder="도로명주소" value="${mDTO.address1}"> 
											<input type="hidden" name="send_address2" id="send_address2" placeholder="지번주소" value="${mDTO.address2}"> <span id="guide" style="color: #999"></span> <br>
									</div>
								</div>
								<div class="col-md-12">
									<div class="checkout-form-list">
										<label>상세주소 <span class="required" style="color: red;">*</span></label> <input
											placeholder="상세주소를 입력해주세요" type="text" id="send_address_detail" name="send_address_detail"
											value="${mDTO.address_detail}">
									</div>
								</div>

								<div class="col-md-6">
									<div class="checkout-form-list">
										<label>전화번호 <span class="required" style="color: red;">*</span></label> <input
											type="text" id="send_phone" name="send_phone" value="${mDTO.phone}">
									</div>

								</div>

							</div>

						</div>

					</div>
					<div class="col-lg-6 col-12">
						<div class="your-order">
							<h3>주문상세내역</h3>
							<div class="your-order-table table-responsive">
								<table class="table">
									<thead>
										<tr>

											<th class="cart-product-name"><strong>상품/옵션정보</strong></th>
											<th class="cart-product-total"><strong>합계</strong></th>

										</tr>
									</thead>
									<tbody>
										<c:forEach var="xxx" items="${cList}">
											<input type="hidden" name="num" value="${xxx.product_id}">
											<tr class="cart_item">
												<c:set var="totalSum"
													value="${totalSum + xxx.product_price*xxx.cart_quantity }" />


												<td class="cart-product-name" id="pNum">${xxx.product_name}<strong
													class="product-quantity" id="cQuantity">× ${xxx.cart_quantity}</strong></td>
												<td class="cart-product-total text-center"><span
													class="amount" id="sum" class="sum"><fmt:formatNumber value="${xxx.product_price*xxx.cart_quantity }"/></span></td>
											</tr>
										</c:forEach>
									</tbody>
									<tfoot>
										<tr class="cart-subtotal">
											<th>배송비</th>
											<td class="text-center" id="shipping"><span
												class="amount"><fmt:formatNumber  value="${shipping}"/></span></td>
										</tr>
										<tr class="total">
											<th>총 합계</th>
											<input type="hidden" id="shipping" name="shipping" value="${shipping}">
											<input type="hidden" id="orderId" name="orderId" value="">
											<input type="hidden" id="totalSum" name="totalSum" value="${total}">
											<input type="hidden" id="products_name"   value="${products_name}">
											
											<!-- hidden input으로 만들어주고 위에 변수 만든 후 success 안 if문 -->
											<%-- <c:choose> 
												<c:when test="${DirectOrder eq 'true'}">
													<input type="hidden" id="DirectOrder" name="DirectOrder" value="true">
												</c:when>
												
												<c:otherwise> 
													 <input type="hidden" id="DirectOrder" name="DirectOrder" value="false">
												</c:otherwise>
											</c:choose>  --%>
											
											<td class="text-center"><strong><span
													><fmt:formatNumber value="${total}"/></span></strong></td>

											
										</tr>
									</tfoot>
								</table>
							</div>
							<div class="payment-method">
								<div class="payment-accordion">
									<div id="accordion">

										<div class="card">
											<div class="card-header" id="#payment-3">
												<h5 class="panel-title mb-2">
													<a href="./cartList" class="collapsed"
														data-bs-toggle="collapse" data-bs-target="#collapseThree"
														aria-expanded="false" aria-controls="collapseThree">
														장바구니 가기 </a>
												</h5>
												<br>
											</div>
											<div id="collapseThree" class="collapse"
												data-parent="#accordion">
												<div class="card-body mb-2 mt-2"></div>
											</div>
										</div>
									</div>
									<br>
									
									<div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input" style="color: acc"
											id="rememberMe" name="rememberMe"> <label class="custom-control-label"
											for="rememberMe">(필수) 구매하실 상품의 결제정보를 확인하였으며, 구매진행에
											동의합니다.</label>
									</div>
									<br>
									<div>
										<!-- <input value="주문하기" type="button"> -->
										<button class="btn obrien-button-3 black-button" style="width: 450px; margin: auto;">주문하기</button>
									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>













	<!-- Checkout Area End Here -->
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

	<!-- JS
============================================ -->

	

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
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
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
							document.getElementById('send_post').value = data.zonecode; //5자리 새우편번호 사용
							document.getElementById('send_address1').value = fullRoadAddr;
							document.getElementById('send_address2').value = data.jibunAddress;

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