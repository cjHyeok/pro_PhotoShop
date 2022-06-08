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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script> 
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
                            <h3 class="title-3">FAQ</h3>
                            <ul>
                                <li><a href="./">Home</a></li>
                                <li>FAQ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Area End Here -->
        <!--faq area start-->
        <div class="faq_content_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="faq_content_wrapper">
                            <h4>[FAQ] 자주 묻는 질문 & 답변</h4>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Accordion area-->
        <div class="accordion_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div id="accordion" class="card__accordion">
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingOne">
                                    <button class="btn btn-link" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">배송기간은 얼마나 되나요?<i class="fa fa-plus"></i><i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>작가님의 작품일 경우 상품상세에 해당 배송 가능 일자가 기입되어 있습니다. 작품상세 내용을 참고하세요.<br> 
<br>
상품일 경우 재고가 있는 경우 평일 기준 오후 2시 이전 입금확인에 한해서 당일 출고 됩니다. (주말, 공휴일제외)<br> 
<br>
CJ 대한통운으로 발송되며 배송기간은 결제완료 후 평일 기준 1~3일이 소요됩니다.<br> 
<br>
주말/공휴일/명절 연휴가 포함되거나 주문 폭주 시에는 오후 2시 이전 입금 건이라도 하더라도 순차출고 되어 지연될 수 있다는 점 양해 바랍니다.<br> 
<br>
최대한 빠르고 정확하게 배송해드리도록 노력하겠습니다.<br> 


</p>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingTwo">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        이미 결제 했으나, 배송지를 바꾸고 싶어요.  
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>주문사항 변경은 [결제완료] 및 [상품준비중] 단계일 경우 가능하니, email (um.woom@gmail.com) 로 문의주시면 변경 처리 도와드리겠습니다. <br>
<br>
그러나, [배송중] 단계에서는 이미 출고되어 반송 처리가 필요할 수 있으며, 고객님께 왕복 배송비가 청구 될 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingThree">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                       불량 상품을 배송 받았는데, 다른 상품으로 교환 하고 싶어요.
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>불량/하자 상품을 배송 받으신 경우, 반품 또는 교환이 가능합니다.<br>
<br>
<br>
교환 및 반품 절차입니다.<br><br>

1. 이메일 (um.woom@gmail.com)로 받으신 상품의 사진 및 간단한 설명을 부탁드립니다.<br><br>

2.  이메일 접수 후 확인 후 회신 메일을 드리겠습니다.  불량 상품을 택배 배송 준비를 해주세요.<br><br>
 

※ 불량 상품 교환은 원칙적으로 동일 상품에 한합니다. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingfour">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseeight" aria-expanded="false" aria-controls="collapseeight">
                                        상품 하자로 교환하고 싶어요.
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseeight" class="collapse" aria-labelledby="headingfour" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>구매하신 상품과 다른 상품이 배송되었거나 받으신 상품이 훼손된 경우에는 최대한 빠르게 교환/환불 처리를 도와드리겠습니다.<br><br>

이메일 (um.woom@gmail.com) 로 교환 문의 부탁드립니다.<br><br>

다만, 상품 확인 후 하자가 아닌 경우 배송비를 구매자가 부담하실 수 있습니다.<br><br>

(해당 상품을 확인 후, 배송비 부담여부와 환불처리를 안내드립니다.)<br><br><br><br>

 

※ 이메일 (um.woom@gmail.com) 에 해당 상품의 사진과 자세한 설명을 올려주시면 빠른 교환/환불처리가 가능합니다. </p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingfive">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseseven" aria-expanded="false" aria-controls="collapseseven">
                                        집에 사람이 없어서 상품이 판매자에게 되돌아갔어요. 
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseseven" class="collapse" aria-labelledby="headingfive" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>택배 및 운송장 조회를 통해 확인하신 정보를 해당 택배사에 연락하여 우선 반품 여부를 확인 하신 후,<br><br>

상품이 이미 판매자에게 반송이 된 경우에는 판매자에게 직접 연락하시어 구매의사를 밝히고 재 배송 받으시면 됩니다.<br><br>

이 때 반송된 사유에 따라 운임 비용이 추가로 발생할 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingsix">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
                                        교환/반품할 경우 배송비는 어떻게 부담하나요? 
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsefour" class="collapse" aria-labelledby="headingsix" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>*고객 단순변심으로 인한 반품일 경우 왕복 배송비 6,000원 (초기배송비3,000원 + 반품배송비3,000원)을 고객님께서 부담하셔야 합니다.<br><br>

-또는 이미 초기배송비를 지불하셨다면 반품배송비 3,000원만 부담.<br><br>

상품 불량 또는 오배송으로 인한 반품일 경우 왕복배송비는 WOOM에서 부담입니다.<br><br><br><br>

 

*교환할 경우 배송비는 교환 원인을 제공한 자가 부담하며, 교환 주문건의 최초배송비 또한 교환의 원인을 제공한 자가 부담함을 원칙으로 합니다. <br><br>

즉, 상품 하자가 아닌 고객 변심 사유의 경우에는 고객이 왕복 배송비를 부담하고, 상품 하자 및 판매자 귀책사유에 의한 교환일 경우 WOOM에서 왕복 배송비를 부담하게 됩니다.<br><br>

(상품에 따라 차이가 발생 할 수 있습니다.)<br><br><br><br>

 

※ 이메일 (um.woom@gmail.com) 로  교환 원하시는 상품의 사진 및 설명을 상세히 기입해주시면 빠른 교환이 이루어 집니다. <br><br>

※반품 주소는 [서울특별시 송파구 백제고분로 501, 청호빌딩 409호] 으로 보내주시기 바랍니다. <br><br>

반품 상품 도착은 발송 이후 2~3일 , 반품 수령 이후 3~4일 이내에 환불처리를 도와드리고 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingseven">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapsefive" aria-expanded="false" aria-controls="collapsefive">
                                        교환 및 반품 기준이 궁금해요.
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsefive" class="collapse" aria-labelledby="headingseven" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>상품 교환 및 반품은 상품 수령 후 7일 이내에 신청 하실 수 있습니다.<br><br>

고객 단순변심 및 개인적인 사정으로 인한 교환/반품 택배비는 고객님이 부담합니다. (3,000원 혹은 6,000원)<br><br>

상품 불량 및 오배송 건의 배송비는 무료입니다.<br><br><br><br>

 

*상품 수령 후, 이상이 없을 경우에는 고객님께 착불로 재 발송 됩니다.<br><br>

*상품이 불량일 경우, 상품을 버리지 마시고 신속히 교환 또는 환불 요청해주시기 바랍니다.<br><br>

*환불 시, 상품 및 함께 동봉된 사은품 모두 반품 해주셔야 합니다.<br><br><br><br>

 
<교환/환불이 불가능한 경우><br><br>

*상품의 겉 포장 손상 (상자 안에 들어있는 제품일 경우 상자 구겨짐 및 스티커 손상) 및 제품을 사용한 경우<br><br>

*고객님의 부주의로 파손 및 손상되어 재 판매가 불가한 경우<br><br>

*상품을 분실 한 경우<br><br>

*교환/반품 배송비가 입금되지 않은 경우<br><br>

*배송중이거나 배송준비중일 경우에는 교환/반품이 불가하니,  이메일 (um.woom@gmail.com) 로  문의 바랍니다.</p>
                                    </div>
                                </div>
                            </div>
                           
                            
                            
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingeight">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapsesix" aria-expanded="false" aria-controls="collapsesix">
                                        반품 물품을 수거해 갔는데 환불은 언제 될까요?
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsesix" class="collapse" aria-labelledby="headingeight" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>고객님께서 보내주신 반품 상품이 도착 확인 시까지 약 4~5일 소요 됩니다.<br><br>

최대한 빠른 환불 처리를 도와 드리도록 하겠습니다.<br><br>

(단, 영업일 기준이며 공휴일 및 주말이 있을 경우 교환/반품이 지연되니 양해 부탁드립니다.<br><br>

카드 결제시 각 카드사 승인 취소 일이 7일 이상 소요될 수 있습니다.)</p>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            
                            
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingeight">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapsenine" aria-expanded="false" aria-controls="collapsenine">
                                        주문한 제품을 결제취소하고 싶어요.
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapsenine" class="collapse" aria-labelledby="headingeight" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>배송단계는 [입금대기]-[결제완료]-[배송준비중]-[배송중]-[배송완료]로 처리 됩니다.<br><br>

[결제완료]시 까지는 주문취소가 가능합니다.  이메일 (um.woom@gmail.com) 로 연락 주시기 바랍니다.<br><br>

[배송준비중]부터는 이미 송장이 출력된 상태로 주문취소가 어려우니 양해 부탁드립니다.</p>
                                    </div>
                                </div>
                            </div>
                            
                            
                            
                            
                            <div class="card card_dipult">
                                <div class="card-header card_accor" id="headingeight">
                                    <button class="btn btn-link collapsed" data-bs-toggle="collapse" data-bs-target="#collapseten" aria-expanded="false" aria-controls="collapseten">
                                        카드결제 주문건의 환불이 완료됐다고 하는데 카드취소는 언제되나요? 
                                        <i class="fa fa-plus"></i>
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <div id="collapseten" class="collapse" aria-labelledby="headingeight" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>카드취소는 카드사마다 소요되는 시일이 다르며, 대략 영업일 7일 이상 소요될 수 있습니다.<br><br>

해당 카드사로 문의 해주시면 더욱 정확한 안내를 받으실 수 있습니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Accordion area end-->
        <!--faq area end-->
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

    <!-- Scroll to Top Start -->
    <a class="scroll-to-top" href="./#">
        <i class="ion-chevron-up"></i>
    </a>
    <!-- Scroll to Top End -->

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