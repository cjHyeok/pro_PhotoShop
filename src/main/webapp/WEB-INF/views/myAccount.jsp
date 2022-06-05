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
	
	
	
	});
	</script>



<body>

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
                                        <a href="#dashboad" class="active" data-bs-toggle="tab"><i class="fa fa-dashboard"></i>
                                            Dashboard</a>
                                        <a href="#orders" data-bs-toggle="tab"><i class="fa fa-cart-arrow-down"></i>
                                            Orders</a>
                                        <a href="#download" data-bs-toggle="tab"><i class="fa fa-cloud-download"></i>
                                            Download</a>
                                        <a href="#payment-method" data-bs-toggle="tab"><i class="fa fa-credit-card"></i>
                                            Payment
                                            Method</a>
                                        <a href="#address-edit" data-bs-toggle="tab"><i class="fa fa-map-marker"></i>
                                            address</a>
                                        <a href="#account-info" data-bs-toggle="tab"><i class="fa fa-user"></i> Account
                                            Details</a>
                                        <a href="#product-review" data-bs-toggle="tab"><i class="fa fa-star" aria-hidden="true"></i> Product Review</a>
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
                                                <h3>Dashboard</h3>
                                                <div class="welcome">
                                                    <p>Hello, <strong>${login.user_id}</strong> (If Not <strong>${login.user_id} !</strong><a href="./login-register.html" class="logout"> Logout</a>)</p>
                                                </div>
                                                <p class="mb-0">From your account dashboard. you can easily check & view your recent orders, manage your shipping and billing addresses and edit your password and account details.</p>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="orders" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Orders</h3>
                                                <div class="myaccount-table table-responsive text-center">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>Order</th>
                                                                <th>Date</th>
                                                                <th>Status</th>
                                                                <th>Total</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <c:forEach var="order" items="${orderList}" varStatus="status">
                                                       		
                                                            <tr>
                                                                <td>${order.rnum}</td>
                                                                <td><fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${order.order_date}"/><c:out value="${dateTempParse}"/></td>
                                                                <td>${order.order_state}</td>
                                                                <td>${order.total_price}</td>
                                                                <td><a href="./cart.html" class="btn obrien-button-2 primary-color rounded-0">View</a></td>
                                                            </tr>
                                                            
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="download" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Downloads</h3>
                                                <div class="myaccount-table table-responsive text-center">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>Product</th>
                                                                <th>Date</th>
                                                                <th>Expire</th>
                                                                <th>Download</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Haven - Free Real Estate PSD Template</td>
                                                                <td>Aug 22, 2018</td>
                                                                <td>Yes</td>
                                                                <td><a href="./#" class="btn obrien-button-2 primary-color rounded-0"><i class="fa fa-cloud-download mr-2"></i>Download File</a></td>
                                                            </tr>
                                                            <tr>
                                                                <td>HasTech - Profolio Business Template</td>
                                                                <td>Sep 12, 2018</td>
                                                                <td>Never</td>
                                                                <td><a href="./#" class="btn obrien-button-2 primary-color rounded-0"><i class="fa fa-cloud-download mr-2"></i>Download File</a></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Payment Method</h3>
                                                <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Billing Address</h3>
                                                <address>
                                                    <p><strong>Alex Aya</strong></p>
                                                    <p>1355 Market St, Suite 900 <br>
                                                    San Francisco, CA 94103</p>
                                                    <p>Mobile: (123) 456-7890</p>
                                                </address>
                                                <a href="./#" class="btn obrien-button-2 primary-color rounded-0"><i class="fa fa-edit mr-2"></i>Edit Address</a>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade" id="account-info" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h3>Account Details</h3>
                                                <div class="account-details-form">
                                                    <form action="memberUpdate" method="post" id="pwUpdate">
                                                    <input type="hidden" id="user_id" name="user_id" value="${login.user_id}">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-custom">
                                                                <div class="single-input-item mb-3">
                                                                    <label for="first-name" class="required mb-1">이름</label>
                                                                    <input type="text" id="user_name" name="user_name" placeholder="이름를 입력해주세요" value="${login.user_name}" />
                                                                </div>
                                                            </div>
                                                            
                                                        </div>
                                                        <div class="single-input-item mb-3">
                                                            <label for="display-name" class="required mb-1">전화번호</label>
                                                            <input type="text" id="phone" name="phone" placeholder="전화번호를 입력해주세요" value="${login.phone}" />
                                                        </div>
                                                        <%-- <div class="single-input-item mb-3">
                                                            <label for="email" class="required mb-1">이메일 주소</label>
                                                            <input type="email" id="email" placeholder="이메일 주소를 입력해주세요" value="${login.email}" />
                                                        </div> --%>
                                                        <fieldset>
                                                            <legend>Password change</legend>
                                                            <div class="single-input-item mb-3">
                                                                <label for="current-pwd" class="required mb-1">현재 비밀번호</label>
                                                                <input type="password" id="memberPw" name="memberPw" placeholder="Current Password" />
                                                            </div>  
                                                            <div class="row">
                                                                <div class="col-lg-6 col-custom">
                                                                    <div class="single-input-item mb-3">
                                                                        <label for="new-pwd" class="required mb-1">변경 비밀번호</label>
                                                                        <input type="password" id="memberPw1" name="memberPw1" placeholder="New Password" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6 col-custom">
                                                                    <div class="single-input-item mb-3">
                                                                        <label for="confirm-pwd" class="required mb-1">변경 비밀번호 확인</label>
                                                                        <input type="password" id="memberPw2" name="user_pw" placeholder="Confirm Password" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </fieldset>
                                                        <div class="single-input-item single-item-button">
                                                            <button class="btn obrien-button primary-btn" >저장하기</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div> <!-- Single Tab Content End -->
                                        <!-- Single Tab Content Start 리뷰-->
                                        
                                        <div class="tab-pane fade" id="product-review" role="tabpanel">
                                            <div class="product-review-content">
                                                <h3>상품 리뷰</h3>
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
                                                                <td><a href="javascript:void(0);" onclick="window.open('./reviewWrite?product_id=${Review.product_id}&order_id=${Review.order_id}', '_blank', 'top=0, left=0, width=50px, height=50px, menubar=no, toolbar=no, location=no, directories=no, status=no, scrollbars=no, copyhistory=no, resizable=no');" 
                                                                class="btn obrien-button-2 primary-color rounded-0">리뷰쓰기</a><br>
                                                                <p>~ ${Review.writeday} 까지</p></td>
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