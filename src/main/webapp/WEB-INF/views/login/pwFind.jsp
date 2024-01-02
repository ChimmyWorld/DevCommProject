<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>

    <link rel="stylesheet" href="${cpath}/resources/css/findPw.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>
<body>
    <header class="loginheader">
    <div>
        <img src="${cpath }/assetImg/Acclogo.png" onclick="location.href='${cpath}/'" style="cursor: pointer;">
    </div>
<div>
    <h4>비밀번호 찾기</h4>
</div>
<div class="headerinfo">
<ul>
    <li><h6>회원 가입시 입력하신 이메일 주소를 입력하시면,</h6></li>
    <li><h6>해당 이메일로 아이디 및 비밀번호 변경 링크를 보내드립니다.</h6></li>
</ul>
</div>
    </header>
    <div class="hr-sect">아이디로 비밀번호 찾기</div>

    <div class="login">
        <form method="POST">
            <label for="userid"><h5 class="loginchar">아이디</h5></label>
            <p><li><input id="userid" name="userid" placeholder="ID" required></li></p>
            <label for="email"><h5 class="loginchar">이메일</h5></label>
            <p><li><input id="email" name="email" type="email" placeholder="Email" required></li></p>
         
            <button class="w-btn w-btn-blue" style="cursor: pointer;">이메일로 찾기</button>
            <button class="w-btn w-btn-blue" type="button" onclick="history.back()" style="cursor: pointer;">취소</button>
        </form>
    </div>
	<%@ include file="../footer.jsp" %>