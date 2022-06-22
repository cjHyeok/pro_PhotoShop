<!doctype html>
<html class="no-js" lang="en">

<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 인코딩 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>WOOM 에 오신걸 환영합니다.   ->  WOOM !</title>
    <meta name="robots" content="no/, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	
	$(document).ready(
			function() {
				// 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
				var key = getCookie("key");
				$("#user_id").val(key);
				console.log("쿠키 key " + key);

				// 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
				if ($("#user_id").val() != "") {
					$("#checkId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
				}

				$("#checkId").change(function() { // 체크박스에 변화가 있다면,
					if ($("#checkId").is(":checked")) { // ID 저장하기 체크했을 때,
						setCookie("key", $("#user_id").val(), 7); // 7일 동안 쿠키 보관
					} else { // ID 저장하기 체크 해제 시,
						deleteCookie("key");
					}
				});

				// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
				$("#user_id").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
					if ($("#checkId").is(":checked")) { // ID 저장하기를 체크한 상태라면,
						setCookie("key", $("#user_id").val(), 7); // 7일 동안 쿠키 보관
						console.log("set 쿠키 userid " + $("#user_id").val());
					}
				});

				// 쿠키 저장하기 
				// setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
				function setCookie(cookieName, value, exdays) {
					var exdate = new Date();
					exdate.setDate(exdate.getDate() + exdays);
					var cookieValue = escape(value)
							+ ((exdays == null) ? "" : "; expires="
									+ exdate.toGMTString());
					document.cookie = cookieName + "=" + cookieValue;
				}

				// 쿠키 삭제
				function deleteCookie(cookieName) {
					var expireDate = new Date();
					expireDate.setDate(expireDate.getDate() - 1);
					document.cookie = cookieName + "= " + "; expires="
							+ expireDate.toGMTString();
				}

				// 쿠키 가져오기
				function getCookie(cookieName) {
					cookieName = cookieName + '=';
					var cookieData = document.cookie;
					var start = cookieData.indexOf(cookieName);
					var cookieValue = '';
					if (start != -1) { // 쿠키가 존재하면
						start += cookieName.length;
						
						var end = cookieData.indexOf(';', start);
						if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
							end = cookieData.length;
						console.log("end위치  : " + end);
						cookieValue = cookieData.substring(start, end);
					}
					return unescape(cookieValue);
				}

			});
</script>
<body>
<%-- <c:if test="${!empty mesg }"> <!-- login 실패시 -->
	<script>
		alert('${mesg}');
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
                            <h3 class="title-3">로그인</h3>
                            <ul>
                                <li><a href="./">Home</a></li>
                                <li>로그인</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End Here -->
        <!-- Login Area Start Here -->
        <div class="login-register-area mt-no-text mb-no-text" style="max-width:100%;">
            <div class="container container-default-2 custom-area">
                <div class="row" >
                    <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-custom">
                        <div class="login-register-wrapper" >
                            <div class="section-content text-center mb-5">
                                <h2 class="title-4 mb-2">로그인</h2>
                                <!-- <p class="desc-content">Please login using account detail bellow.</p> -->
                            </div>
                            <form action="login" method="post">
                                <div class="single-input-item mb-3">
                                    <input id="user_id" name="user_id" type="text" placeholder="아이디를 입력해주세요" style="width: 455px; max-width:100%;"  ><!-- value="haban" -->
                                </div>
                                <div class="single-input-item mb-3">
                                    <input id="user_pw" name="user_pw" type="password" placeholder="비밀번호를 입력해주세요" style="width: 455px; max-width:100%;" ><!-- value="12341234" -->
                                </div><!-- value="hoban@naver.com"value="12341234" -->
                                <div class="single-input-item mb-3">
                                    <div class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                          <div class="remember-meta mb-3">
                                        	<div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" name="checkId" id="checkId" style="max-width:100%;">
                                                <label class="custom-control-label" for="checkId">아이디 기억하기</label>
                          					</div>
                                         </div>

                                        
                                    </div>
                                </div>
                                <!-- <div class="single-input-item mb-3">
                                    <button class="btn obrien-button-2 primary-color">로그인</button>
                                </div> -->
                                <div class="single-input-item">
                                <button class="btn obrien-button-2 primary-color" style="width: 455px; max-width:100%;">로그인</button>
                                    <br>
                                    <hr>
                                <ul style="text-align: center;">
                                	<span><a>아이디 찾기</a></span>&ensp;&ensp;|&ensp;&ensp;
                                	<span><a>비밀번호 찾기</a></span>&ensp;&ensp;|&ensp;&ensp;
                                	<span><a href="./memberForm" >회원가입</a></span>
                                </ul>
                                <!-- <a href="./memberForm" >회원가입</a> -->
                                      
                                    
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
                                <a class="obrien-button primary-btn" href="./contactUs">Contact now</a>
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