<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 인코딩 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    // 상품 등록 유효성검사
    
    $("#addBtn").click(function(){
        var product_name = $("#product_name").val();
        var product_price = $("#product_price").val();
        var product_description = $("#product_description").val();
        var product_photo = $("#product_photo").val();

        if(product_name == "") {
            alert("상품명을 입력해주세요");
            product_name.foucs();
        } else if (product_price == "") {
            alert("상품 가격을 입력해주세요");
            productPrice.focus();
        } else if (product_description == "") {
            alert("상품 설명을 입력해주세요");
            product_description.focus();
        } else if (product_photo == "") {
            alert("상품 사진을 입력해주세요");
            product_photo.focus();
        }
        // 상품 정보 전송
        document.productForm.action = "${path}/shop/product/insert.do";
        document.productForm.submit();
    });
    // 상품 목록이동
    $("#listBtn").click(function(){
        location.href='${path}/shop/product/list.do';
    });
});
</script>
<h2>상품 등록</h2>
<form id="productForm" name="productForm" enctype="multipart/form-data" method="post">
    <table border="1">
        <tr>
            <td>상품명</td>
            <td><input type="text" name="product_name" id="product_name"></td>
        </tr>
        <tr>
            <td>가격</td>
            <td><input type="text" name="product_price" id="product_price"></td>
        </tr>
        <tr>
            <td>상품설명</td>
            <td><textarea rows="5" cols="60" name="product_description" id="product_description"></textarea></td>
        </tr>
        <tr>
            <td>상품이미지</td>
            <td><input type="file" name="product_photo" id="product_photo"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="button" value="등록" id="addBtn">
                <input type="button" value="목록" id="listBtn">
            </td>
        </tr>
    </table>
</form>