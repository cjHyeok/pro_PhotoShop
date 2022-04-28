<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="xxx" value="${mDTO}" />

<c:set var="user_id" value="${xxx.user_id}" />
<c:set var="user_name" value="${xxx.user_name}" />
<c:set var="post" value="${xxx.post}" />
<c:set var="address" value="${xxx.address}" />
<c:set var="email" value="${xxx.email}" />
<c:set var="phone" value="${xxx.phone}" />
<c:set var="totalSum" value="${xxx.total_price}" />



<table width="70%" cellspacing="0" cellpadding="0">

	<tr>
		<td height="30">
	</tr>

	<tr>
		<td><b>주문완료</b></td>
	</tr>

	<tr>
		<td height="30">
	</tr>

	<tr>
		<td align="center"><b>주문해주셔서 감사합니다.</b></td>
	</tr>

	<tr>
		<td height="7">
	</tr>

	<tr>
		<td class="td_default" align="center"><b>${user_id}</b> 님의 주문이
			안전하게 처리되었습니다.</td>
	</tr>

	<tr>
		<td height="40">
	</tr>

	<tr>
		<td class="td_default"><b>상품 및 배송정보</b></td>
	</tr>

	<tr>
		<td height="15">
	</tr>

	<tr>
		<td>
			<table width="100%" border="1" style="border-collapse: collapse" bordercolor="#CCCCCC">
				<tr>
					<td class="td_default" width="150" height="35">받으시는 분</td>
					<td class="td_default" height="35">${user_name}</td>
				</tr>
				<tr>
					<td class="td_default" height="35">주소</td>
					<td class="td_default" height="35">(${post})<br>
						${address}
					</td>
				</tr>

				<tr>
					<td class="td_default" height="35">휴대전화</td>
					<td class="td_default" height="35">
						${phone}</td>
				</tr>
			</table>
		</td>
	</tr>


	<tr>
		<td height="20">
	</tr>

	<tr>
		<td>
			<table width="100%" border="1" style="border-collapse: collapse" bordercolor="#CCCCCC">
				<tr>
					<td width="250" class="td_default" height="35" align="center"><strong>상품명</strong></td>
					<td width="100" class="td_default" height="35" align="center"><strong>판매가</strong></td>
					<td class="td_default" width="50" height="35" align="center"><strong>수량</strong></td>
					<td class="td_default" width="100" height="35" align="center"><strong>합계</strong></td>
				</tr>


				<!--  변수 선언 -->
				<c:set var="totalSum" value="0" />
				<c:forEach var="xxxc" items="${cList}" varStatus="status">
					<!-- 누적 -->
					<c:set var="totalSum"
						value="${totalSum + xxxc.product_price * xxxc.cart_quantity }" />
						
					<tr>
						<td height="35" class="td_default"><span class="a_default">${xxxc.product_id}</span></td>
						<td height="35" class="td_default" align="center"><span id="price1">${xxxc.product_price}</span>원</td>
						<td height="35" class="td_default" align="center"><span id="num1">${xxxc.cart_quantity}</span>개</td>
						<td height="35" class="td_default" align="center"><span>${xxxc.product_price * xxxc.cart_quantity}</span>원
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
			<table width="100%" border="1" style="border-collapse: collapse" bordercolor="#CCCCCC">
				<tr>
					<td class="td_default" width="150" height="35">결제금액</td>
					<td class="td_default" height="35" align='right'>${totalSum}원
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
		<td class="td_default" align="center"><a class="a_default" href="/">메인으로 이동</a></td>
	</tr>

	<tr>
		<td height="30">
	</tr>

</table>
