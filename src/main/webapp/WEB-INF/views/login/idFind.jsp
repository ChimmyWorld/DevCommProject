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
    <link rel="stylesheet" href="${cpath}/resources/css/findId.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>
<body>
    <header class="loginheader">
        <div>
            <img src="${cpath }/assetImg/DEVCOMM-logo.png" width="300px" onclick="location.href='${cpath}/'" style="cursor: pointer;">
        </div>
        <div>
            <h4>계정 찾기</h4>
        </div>
        <div class="headerinfo">
            <ul>
                <li><h6>회원가입시 입력하신 이메일 주소를 입력하시면 등록된 아이디를 알려드립니다.</h6></li><br>
            </ul>
        </div>
    </header>
    <div class="hr-sect">이메일로 아이디 찾기</div>

    <div class="login findIdBtn">
        <form method="POST">
            <label for="email"><h5 class="loginchar">이메일 주소</h5></label>
            <p><li><input id="email" type="email" name="email" required></li></p>
         
            <button class="w-btn w-btn-blue" style="cursor: pointer;">계정찾기</button>
            <button class="w-btn w-btn-blue" type="button" onclick="history.back()" style="cursor: pointer;">취소</button>
        </form>
    </div>
    <%@ include file="../footer.jsp" %>