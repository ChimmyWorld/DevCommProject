<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myPage</title>
    <link rel="stylesheet" href="${cpath}/resources/css/myPage.css">
    <link rel="stylesheet" href="${cpath}/resources/css/header.css">
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
            <li>&nbsp<a href="${cpath }/myPage/info" style="color: rgb(0, 144, 249)">내 정보</a></li>
            <li>&nbsp<a href="${cpath }/myPage/articles">내 활동</a></li>
            <li>&nbsp<a href="${cpath }/myPage/settings">계정 관리</a></li>
        </ul>
    </div>

    <div class="login">
        <li><h3>닉네임</h3></li>
        <li><h5>${user.nick }</h5></li>
        <li><h3>이메일</h3></li>
        <li><h5>${user.email }</h5></li>
        <li><h3>가입일자</h3></li>
        <li><h5>${user.join_date }</h5></li>
        <c:if test="${user.profile_img == 'default.jpg'}">
            <img class="changeimg" src="${cpath}/profileImg/default.jpg">
        </c:if>
        <c:if test="${user.profile_img != 'default.jpg'}">
            <img class="changeimg" src="${cpath}/profileImg/${user.idx}/${user.profile_img}">
        </c:if>
       
        <form method="POST" enctype="multipart/form-data">
            <input name="upload" type="file" accept="image/*">
            <input name="idx" type="hidden" value="${user.idx }">
            <button class="r-btn r-btn-blue">변경</button>
            <button class="setDefault setDefault-blue" type="button">삭제</button>
        </form>
    </div>

    <script type="text/javascript" src="${cpath }/resources/js/setDefault.js"></script>
  
    <%@ include file="../footer.jsp" %>