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
        <img src="${cpath }/assetImg/DEVCOMM-logo.png" width="300px" onclick="location.href='${cpath}/'" style="cursor: pointer;">
    </div>
<div>
    <h4>비밀번호 찾기</h4>
</div>
<div class="headerinfo">
<ul>
    <li><h6>회원가입시 등록한 정보를 입력해주시면 임시 비밀번호를 발급해드립니다.</h6></li>
    <li><h6>이후 마이페이지에서 원하는 비밀번호로 꼭 변경해주세요!</h6></li>
</ul>
</div>
    </header>
    <div class="hr-sect">아이디로 비밀번호 찾기</div>

    <div class="login">
        <form method="POST">
            <label for="userid"><h5 class="loginchar">아이디</h5></label>
            <p><li><input id="userid" name="userid" required></li></p>
            <label for="email"><h5 class="loginchar">이메일</h5></label>
            <p><li><input id="email" name="email" type="email" required></li></p>
         
            <button class="w-btn w-btn-blue" style="cursor: pointer;">비밀번호 찾기</button>
            <button class="w-btn w-btn-blue" type="button" onclick="history.back()" style="cursor: pointer;">취소</button>
        </form>
    </div>
	<%@ include file="../footer.jsp" %>