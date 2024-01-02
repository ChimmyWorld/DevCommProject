<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myPage</title>

    <link rel="stylesheet" href="${cpath}/resources/css/header.css">
    <link rel="stylesheet" href="${cpath}/resources/css/withdraw.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
    
</head>
<body>
</head>
<body>
    <%@include file="../header.jsp" %>
    
    <div class='f-line'></div>
    <hr class="hhr">
    <div class="mylist">
        <ul>
            <li>&nbsp<a href="${cpath }/myPage/info">내 정보</a></li>
            <li>&nbsp<a href="${cpath }/myPage/articles">내 활동</a></li>
            <li>&nbsp<a href="${cpath }/myPage/settings" style="color: rgb(0, 144, 249)">계정 관리</a></li>
        </ul>
    </div>
    
    <div class="s-line"></div>
    <div class="checkmsg"><h3>계정을 탈퇴 하시겠습니까?</h3></div>
    <div class="container">
        <form method="POST">
        	<button class="delete-btn delete-btn-blue" type="button" onclick="history.back()" style="cursor: pointer;">
	           	 취소
	        </button>
            <input name="idx" type="hidden" value="${user.idx }">
            <button class="delete-btn delete-btn-blue" style="cursor: pointer;">
               	 회원탈퇴
            </button>
        </form>
</div>

<%@ include file="../footer.jsp" %>