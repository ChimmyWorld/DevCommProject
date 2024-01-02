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
    <link rel="stylesheet" href="${cpath}/resources/css/login.css">
    <link rel="stylesheet" href="${cpath}/resources/css/atag.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>
<body>
<header class="loginheader">
    <div>
        <img src="${cpath }/assetImg/Acclogo.png" height="80px" onclick="location.href='${cpath}/'" style="cursor: pointer;">
    </div>
    <div>
        <h4>OKKY에 오신것을 환영합니다.</h4>
    </div>
    <div>
        <h6 class="mainmsg">OKKY는 소프트웨어 개발자를 위한 지식공유 플랫폼입니다.</h6>
    </div>
</header>
<div class="hr-sect">OKKY 아이디로 로그인</div>
   
<div class="login">
    <form method="POST">
        <label for="userid"><h5 class="loginchar">아이디</h5></label>
        <p><li><input id="userid" name="userid" placeholder="ID" required value="${cookie.userid.value}"></li></p>
        <label for="userpw"><h5 class="loginchar">비밀번호</h5></label>
        <p><li><input id="userpw" name="userpw" type="password" placeholder="Password" required></li></p>
        <div class="check_wrap">
            <input id="check_btn" type="checkbox" name="saveId" value="yes">
            <label for="check_btn"><span>아이디 저장</span></label>
            </div>
        <button class="w-btn w-btn-blue" style="cursor: pointer;">
            로그인
        </button>
    </form>
</div>
<div class="findacc">    
<div class="accfind"><h5><a href="${cpath }/findId">ID찾기</a></h5></div>
<div class="pwfind"><h5><a href="${cpath }/findPw">PW찾기</a></h5></div>
</div>

<div class="singUp">
    <ul>
        <li><h5>아직 회원이 아니신가요?</h5></li>
        <li><h5><a href="${cpath }/signUp">회원가입</a></h5></li>
    </ul>
</div>

<%@ include file="../footer.jsp" %>
