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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="./assets/images/icon1.png">
       <!--Bootstrap Js--> <!-- 이걸로 버전 맞췄음 -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script> 
<!-- <link href="./https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
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
    
    
        <style>
        .btnBox{
                margin: 10em 0;
                text-align: center;
         }
                #btn_popup{
                    border: #555555 solid 1px;
                    border-radius: 40px;
                    color: #000000;
                    padding: 18px 28px;
                    text-decoration: none;
                    font-size: 1rem;
                    font-weight: 600;
                }
                .btn_popup:hover{
                    border: #fdd000 solid 2px;
                    background-color: #fdd000;
                    border-radius: 40px;
                    color: #000000;
                    padding: 18px 28px;
                    text-decoration: none;
                    font-size: 1rem;
                    font-weight: 600;
                }
    </style>

</head>


<script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
		
	$("form").on("submit", function(event) {
				var password1 = $("#memberPw").val();
				var passwordUp1 = $("#memberPw1").val();
				var passwordUp2 = $("#memberPw2").val();
				
				
				console.log("password1" + password1);
				
			 	if (password1.length < 3) {
					alert("현재 비밀번호를 입력해주세요")
					$("#memberPw").focus();
					event.preventDefault();
				
				} 
				 
				
			 	else if (passwordUp1.length < 3) {
					alert("변경하실 비밀번호를 입력해주세요")
					$("#memberPw1").focus();
					console.log("passwordUp1" + passwordUp1);
					
					event.preventDefault();
					
			 	}
				else if (passwordUp2 !== passwordUp1) {
					alert("변경 비밀번호를 다시 확인해주세요")
					$("#memberPw2").focus();
					console.log("passwordUp2" + passwordUp2);
					event.preventDefault();
				
				} 
				
		});
	
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
	});
	
	function phone_format(num){ //핸드폰번호
		return num.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]{4})/,"$1-$2-$3");
	}
	
	
	
	$("#myPageModify").on("click", function() {

		location.href = "myPage";
	})
	
	
	});
	</script>



<body>

<c:set var="phone1" value="${fn:substring(login.phone,0,3)}" /> <!-- (시작배열,길이) -->
<c:set var="phone2" value="${fn:substring(login.phone,3,7)}" />
<c:set var="phone3" value="${fn:substring(login.phone,7,11)}" />


<%-- 	<c:if test="${!empty mesg }">
		<script>
			//session.removeAttribute("mesg");
			alert("${mesg}.");
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
                            <h3 class="title-3">My Account</h3>
                            <ul>
                                <li><a href="./index.html">Home</a></li>
                                <li>My Account</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End Here -->
        <!-- my account wrapper start -->
        <div class="my-account-wrapper mt-no-text mb-no-text">
            <div class="container container-default-2 custom-area">
                <div class="row">
                    <div class="col-lg-12 col-custom">
                        <!-- My Account Page Start -->
                        <div class="myaccount-page-wrapper">
                            <!-- My Account Tab Menu Start -->
                            <div class="row">
                                <div class="col-lg-3 col-md-4 col-custom">
                                    <div class="myaccount-tab-menu nav" role="tablist">
                                        <a href="#account-info" data-bs-toggle="tab"><i class="fa fa-user"></i>회원정보</a>
                                        <a href="#orders" data-bs-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                                            주문내역확인/배송조회</a>
                                        <a href="#download" data-bs-toggle="tab"><i class="fa fa-heart" aria-hidden="true"></i>
                                            찜리스트</a>
                                     
                                        
                                        <a href="#product-review" data-bs-toggle="tab"><i class="fa fa-star" aria-hidden="true"></i>나의 상품후기</a>
                                        <a href="./loginCheck/logout"><i class="fa fa-sign-out"></i>로그아웃</a>
                                    </div>
                                </div>
                                <!-- My Account Tab Menu End -->

                                <!-- My Account Tab Content Start -->
                                <div class="col-lg-9 col-md-8 col-custom">
                                    <div class="tab-content" id="myaccountContent">
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                            <div class="myaccount-content">
                                                <div class="myaccount-content">
                                                <h3>회원정보</h3>
                                                <div class="account-details-form">
                                              
                                                
                                                
                                                <p>이름 : ${login.user_name}</p>

                                                   
                                                  <p>이름 : ${login.post}</p>
                                                    <p>주소 : ${login.address1}<br>
                                                    <p>지번 : ${login.address2}<br>
                                                    상세 주소 : ${login.address_detail}</p>
                                                    
                                                    <p>이메일 : ${login.email}</p>
                                                    <p>전화번호: <%-- ${login.phone} --%>${phone1}-${phone2}-${phone3}</p>
                                               <br>
                                               <button id="myPageModify" style ="text-decoration: underline;">회원정보 수정하기</button>
                                                </div>
                                            </div></div>
                                        </div>
                                        <!-- Single Tab Content End -->
                                        
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="account-info" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>회원정보</h3>
                                                <div class="account-details-form">
                                            
                                                <address>
                                                
                                                    <p>이름 : ${login.user_name}</p>
                                                    <p><strong></strong></p>
                                                    <p>주소 : ${login.address1}<br>
                                                    <p>지번 : ${login.address2}<br>
                                                    상세 주소 : ${login.address_detail}</p>
                                                    <p>이메일 : ${login.email}</p>
                                                    <p>전화번호: <%-- ${login.phone} --%>${phone1}-${phone2}-${phone3}</p>
                                                </address>
                                               
                                                </div>
                                            </div>
                                        </div> <!-- Single Tab Content End -->
                                        
                                        
                                        
                                        
                                        <!-- Single Tab Content Start -->
                                        <c:set var="OrderNum" value= "1" />
                                        <c:set var="Step" value= "1" />

                                        
                                        <div class="tab-pane fade" id="orders" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>주문내역확인/배송조회</h3>
                                                <div class="myaccount-table table-responsive text-center"> 
                                                        
                                                        <c:forEach var="order" items="${orderList}" varStatus="status"> 
                                            
	                                                            <table class="table table-bordered">
	                                                            
	                                                        <thead class="thead-light">
	                                                            <tr>
	                                                            <th>order id</th>
	                                                           		<th>상품이미지</th>
	                                                            	<th>주문날짜</th>
	                                                                <th>상품이름</th>
	                                                                <th>주문상태</th>
	                                                                <th>수량</th>
	                                                            </tr>
	                                                        </thead>
                                                      
                                                        
                                                        
                                                        
                                                        
                                                            <tr>
                                                            	<td>${order.order_id}</td>
                                                                <td><a href="./productDetails?product_id=${order.product_img}"><img class="img-fluid" style="width: 200px; height:200px; object-fit: cover;"
																	src="assets/images/${order.product_img}" alt="Product" /></a></td>
                                                                <td><fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd  hh:mm:ss" value="${order.order_date}"/><c:out value="${dateTempParse}"/></td>
                                                                <td>${order.product_name}</td>
                                                                
                                                                
          														<c:choose> 
																	<c:when test="${order.order_state eq 'payment_waiting'}">
																		<td>결제대기</td>
																	</c:when>
																	

																	<c:when test="${order.order_state eq 'payment_completed'}">
																		<td>결제완료</td>
																	</c:when>


																	<c:when test="${order.order_state eq 'delivery_preparation'}">
																		<td>배송준비중</td>
																	</c:when>


																	<c:when test="${order.order_state eq 'delivery_inprogress'}">
																		<td>배송중</td>
																	</c:when>
																	
																	<c:when test="${order.order_state eq 'delivery_completed'}">
																		<td>배송완료</td>
																	</c:when>

																	<c:otherwise> 
																		<td>.</td>
																	</c:otherwise>
																</c:choose> 
                                                                
                                                                
                                                                
                                                                <td>${order.order_quantity}</td>
                                                                
                                                            </tr>
                                                            
                                                           
                                                    <%-- 
                                                    		<c:set var="Step" value= "${Step + 1}"  />
                                                        	<c:set var="OrderNum" value= "${order.order_id}"  />  --%>
                                                            
                                                            </table>
                                                            </c:forEach>
                                                        
                                                    
                                                    
                                                    
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="download" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>찜리스트</h3>
                                                <br>
                                               <div class="wishlist-table table-responsive">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
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
											<td class="pro-title"><a href="./productDetails?product_id=${wish.product_id}">${wish.product_name}</td>
											<td class="pro-price"><span><fmt:formatNumber
														value="${wish.product_price}" /></span></td>

											
											 <td class="pro-cart"><a href ="./loginCheck/wishCartadd?product_id=${wish.product_id}">
											 <span class="iconify" data-icon="ion:cart" data-width="30" data-height="30"></span></a></td> 

										

											<td class="pro-remove" data-num="${wish.wish_id}"><span class="iconify" data-icon="ei:trash" data-width="30" data-height="30"></span></a></td>
										</tr>

									</c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <!-- <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                           <div class="myaccount-content">
                                                <h3>찜리스트</h3>
                                                <br>
                                                <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                            </div>
                                        </div> -->
                                        <!-- Single Tab Content End -->


                                        
                                        <!-- Single Tab Content Start 리뷰-->
                                        
                                        <div class="tab-pane fade" id="product-review" role="tabpanel">
                                           <div class="myaccount-content">
                                                <h3>나의 상품후기</h3>
                                                <br>
                                                <div class="myaccount-table table-responsive text-center">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>상품이미지</th>
                                                                <th>구매 일</th>
                                                                <th>비고</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="Review" items="${productReview}" varStatus="status">
                                                       		
                                                            <tr>
                                                                <td class="pro-thumbnail"><img src="assets/images/${Review.product_img}" class="img-fluid" style="width: 100px;"></td>
                                                                <td>
                                                                	<p><fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${Review.order_date}"/><c:out value="${dateTempParse}"/>
                                                                	<p>${Review.product_name}</p>
                                                                </td>
                                                                <td>
                                                                <p><a href="javascript:void(0);" onclick="window.open('./reviewWrite?product_id=${Review.product_id}&order_id=${Review.order_id}', '_blank', 'top=0, left=0, width=50px, height=50px, menubar=no, toolbar=no, location=no, directories=no, status=no, scrollbars=no, copyhistory=no, resizable=no');" 
                                                                class="btn obrien-button-2 primary-color rounded-0">리뷰쓰기</a></p>
                                                                
                                                                 ~ <fmt:formatDate var="dateTempParse" pattern="yy-MM-dd" value="${Review.writeday}"/><c:out value="${dateTempParse}"/>까지</td>

                                                            </tr>
                                                            
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                        
                                        <!-- Single Tab Con
                                        tent End -->
                                    </div>
                                </div> <!-- My Account Tab Content End -->
                            </div>
                        </div> <!-- My Account Page End -->
                    </div>
                </div>
            </div>
        </div>
        <!-- my account wrapper end -->
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
                                <a class="obrien-button primary-btn" href="./contact-us.html">Contact now</a>
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