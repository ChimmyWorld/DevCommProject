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

<link rel="stylesheet" href="${cpath }/resources/css/newAcc.css">
<link rel="stylesheet" href="${cpath }/resources/css/atag.css">
<link rel="stylesheet" href="${cpath }/resources/css/footer.css">
</head>
<body>
    <header class="loginheader">
        <div>
            <img src="${cpath }/assetImg/DEVCOMM-logo.png" width="300px" onclick="location.href='${cpath}/'" style="cursor: pointer;">
        </div>
        <div>
            <h4>DEVHUB에 오신것을 환영합니다.</h4>
        </div>
        <div>
            <h6 class="mainmsg">DEVHUB는 개발자를 위한 정보공유 커뮤니티입니다.</h6>
        </div>
    </header>
    <div class="hr-sect">DEVHUB 아이디로 로그인</div>

    <div class="login">
        <form method="POST">
           <label for="userid"><h5 class="loginchar">아이디</h5></label>
           <p><li><input id="userid" name="userid" required></li></p>
           <h6></h6>
           <label for="userpw"><h5 class="loginchar">비밀번호</h5></label>
           <p><li><input id="userpw" class="pwd1" name="userpw" type="password" required></li></p>
           <h6></h6>
           <label for="pwcheck"><h5 class="loginchar">비밀번호 체크</h5></label>
           <p><li><input id="pwcheck" class="pwd2" name="pwcheck" type="password"  required></li></p>
           <h6></h6>
           <label for="nick"><h5 class="loginchar">닉네임</h5></label>
           <p><li><input id="nick" name="nick" required></li></p>
           <h6></h6>
           <label for="email"><h5 class="loginchar">이메일</h5></label>
           <p><li><input id="email" name="email" type="email" required></li></p>
           <h6></h6>
           <button class="w-btn w-btn-blue" style="cursor: pointer;">회원가입</button>
        </form>
    </div>    
    <div class="accfind"><h5><a href="${cpath}/findId">계정찾기</a></h5></div>
    <div class="singUp">
        <ul>
            <li><h5>이미 회원이신가요?</h5></li>
            <li><h5><a href="${cpath}/login">로그인</a></h5></li>
        </ul>
    </div>

    <script type="text/javascript" src="${cpath }/resources/js/pwCheck.js"></script>
	<script type="text/javascript" src="${cpath }/resources/js/idCheck.js"></script>
	<script type="text/javascript" src="${cpath }/resources/js/nickCheck.js"></script>
	<script type="text/javascript" src="${cpath }/resources/js/emailCheck.js"></script>
    
    <%@ include file="../footer.jsp" %>