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
    <header>
	<div class="logo">
	    <img src="${cpath }/assetImg/okky.png" height="80px" onclick="location.href='${cpath}/'" style="cursor: pointer;">
	</div>
	<nav class="menu">
	    <ul>
	        <li>&nbsp<a href="${cpath }/free">자유게시판</a></li>&emsp;
	        <li>&nbsp<a href="${cpath }/qna">Q&A</a></li>&emsp;
	        <li>&nbsp<a href="${cpath }/info">팁/정보게시판</a></li>&emsp;
	        <li>&nbsp<a href="${cpath }/study">스터디게시판</a></li>
	    </ul>
	</nav>
	<c:if test="${empty user }">
	<div class="wn-btn">
	<button class="w-btn w-btn-blue" type="button" onclick="location.href='${cpath}/login';" style="cursor: pointer;">
	    로그인
	</button>
	<button class="n-btn n-btn-blue" type="button" onclick="location.href='${cpath}/signUp';" style="cursor: pointer;">
	    회원가입
	</button>
	</div>
	</c:if>
	<c:if test="${not empty user }">
	<div class="dropdown_user">
	    <a>
	        <c:if test="${user.profile_img == 'default.jpg'}">
	        <img src="${cpath}/profileImg/default.jpg">
	        </c:if>
	        <c:if test="${user.profile_img != 'default.jpg'}">
	        <img src="${cpath}/profileImg/${user.idx}/${user.profile_img}">
	        </c:if>
	    </a>
	    <div class="dropdown_list">
	        <a href="${cpath }/myPage/info">
	            <div><img src="${cpath }/assetImg/defaultprofile.jpg">프로필</div>
	        </a>
	        <a href="${cpath }/myPage/settings">
	            <div><img src="${cpath }/assetImg/settiing.jpg">계정관리</div>
	        </a>
	        <a href="${cpath}/logout">
	            <div><img src="${cpath }/assetImg/logout.jpg">로그아웃</div>
	        </a>
	    </div>
	</div>
	</c:if>
	</header>
	<div class="hr"></div>
    
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