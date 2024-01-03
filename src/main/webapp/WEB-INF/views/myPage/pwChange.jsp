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
    <link rel="stylesheet" href="${cpath}/resources/css/accChage.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
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
    <div class="login">
        <form method="POST">
            <h6></h6>
            <label for="expw"><h5 class="loginchar">현재 비밀번호</h5></label>
            <p><li><input id="expw" class="expw" name="userpw" type="password" required></li></p>
            <h6></h6>
            <label for="pwd1"><h5 class="loginchar">새 비밀번호</h5></label>
            <p><li><input id="pwd1" class="pwd1" name="newpw" type="password" required></li></p>
            <h6></h6>
            <label for="pwd2"><h5 class="loginchar">비밀번호 재 확인</h5></label>
            <p><li><input id="pwd2" class="pwd2" name="newpwCheck" type="password" required></li></p>
            <h6></h6>
            <input name="idx" type="hidden" value="${user.idx }">
		    <input name="jsfind" type="hidden" value="${user.userpw }">
			<button class="a-btn a-btn-blue" type="submit" style="cursor: pointer;">변경</button>
		</form>
    </div>
    

    <script type="text/javascript" src="${cpath }/resources/js/pwCheck.js"></script>
	<script type="text/javascript" src="${cpath }/resources/js/comparePW.js"></script>
	
    <%@ include file="../footer.jsp" %>