<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><!-- c:if 사용하기위해 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!-- <script type="text/javascript">
function onopen()
{
var url =
"http://www.ftc.go.kr/bizCommPop.do?wrkr_no="+frm1.wrkr_no.value;
window.open(url, "bizCommPop", "width=750, height=700;");
}
</script> -->

<footer class="footer-area">
		<div class="footer-widget-area">
			<div class="container container-default custom-area">
				<div class="row">
					<div class="col-12 col-sm-12 col-md-12 col-lg-3 col-custom">
						<div class="single-footer-widget m-0">
							<div class="footer-logo">
								<a href="./"> <img src="assets/images/logo/footer.png"
									alt="Logo Image">
								</a>
							</div>
							<p class="desc-content">WOOM is the best parts shop of your
								daily routine. What kind of routine do you need you can get here
							</p>
							<div class="social-links">
								<ul class="d-flex">
									<li><a class="border rounded-circle" href="./#"
										title="Facebook"> <i class="fa fa-facebook-f"></i>
									</a></li>
									<li><a class="border rounded-circle"
										href="https://www.instagram.com/nada_u.m/" title="Instagram">
											<i class="fa fa-instagram"></i>
									</a></li>
									<!-- <li><a class="border rounded-circle" href="./#"
											title="Twitter"> <i class="fa fa-twitter"></i>
										</a></li>
										<li><a class="border rounded-circle" href="./#"
											title="Youtube"> <i class="fa fa-youtube"></i>
										</a></li>
										<li><a class="border rounded-circle" href="./#"
											title="Vimeo"> <i class="fa fa-vimeo"></i>
										</a></li> -->
								</ul>
							</div>
						</div>
					</div>
					<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
						<div class="single-footer-widget">
							<h2 class="widget-title">Information</h2>
							<ul class="widget-list">
								<li><a href="./aboutUs">Our Company</a></li>
								<li><a href="./contactUs">Contact Us</a></li>
								<li><a href="./aboutUs">Our Services</a></li>
								<li><a href="./aboutUs">Why We?</a></li>
								<li><a href="./aboutUs">Careers</a></li>
							</ul>
						</div>
					</div>
					<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
						<div class="single-footer-widget">
							<h2 class="widget-title">Quicklink</h2>
							<ul class="widget-list">
								<c:choose>
									<c:when test="${!empty login }">
										<li><a href="./aboutUs">About</a></li>
										<li><a href="./productList">Shop</a></li>
										<li><a href="./cartList">Cart</a></li>
										<li><a href="./contactUs">Contact</a></li>
									</c:when>

									<c:otherwise>
										<li><a href="./aboutUs">About</a></li>
										<li><a href="./productList">Shop</a></li>
										<li><a href="./contactUs">Contact</a></li>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
					<div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom">
						<div class="single-footer-widget">
							<h2 class="widget-title">Support</h2>
							<ul class="widget-list">
								<li><a href="./contactUs">Online Support</a></li>
								<li><a href="./policyForm">Shipping Policy</a></li>
								<li><a href="./policyForm">Return Policy</a></li>
								<li><a href="./policyForm">Privacy Policy</a></li>
								<li><a href="./contactUs">Terms of Service</a></li>
								<li><a href="./contactUs">이용약관</a></li>
								<li><a href="./contactUs">개인정보처리방침</a></li>
							</ul>
						</div>
					</div>
					<div class="col-12 col-sm-6 col-md-6 col-lg-3 col-custom">
						<div class="single-footer-widget">
							<h2 class="widget-title">See Information</h2>
							<div class="widget-body">
								<address>
									(주)루트브릭스    |    대표자 : 양선희    |    서울특별시<br> 
									송파구 백제고분로 501, 14층 09호 <br>(방이동, 청호빌딩)<br>
사업자등록번호 393-81-00667  <br>
통신판매업신고번호 : 2018-서울송파-2112 <br>
대표 전화번호 : 070-4256-9459
<form name="frm1">
<!-- <input name="wrkr_no" type="hidden"/> -->
<!-- <input type="button" value="사업자정보 확인" onclick="onopen();"/> -->

<a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=3938100667" class="widget-list" target="_blank">사업자등록정보확인</a>
</form>
								</address>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-copyright-area">
			<div class="container custom-area">
				<div class="row">
					<div class="col-12 text-center col-custom">
						<div class="copyright-content">
							<p>Copyright ⓒ WOOM Foundation. All Rights Reserved.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>