<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<c:set var="row" value="${map['row'] }" />
<c:set var="msg" value="${map['msg'] }" />
<c:set var="user" value="${map['user'] }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="${cpath}/resources/css/success.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>
<body>
    <header class="loginheader">
	    <div>
	        <img src="${cpath }/assetImg/Acclogo.png" onclick="location.href='${cpath}/'" style="cursor: pointer;">
	    </div>
	    <div>
	        <h4>계정 찾기</h4>
	    </div>
	    <div class="headerinfo">
	        <ul>
	            <li><h6>해당 비밀번호로 로그인 후 비밀번호 변경을 권장 합니다.</h6></li>
	        </ul>
	    </div>
	</header>
	<div class="hr-sect">비밀번호 </div>
	<div class="temporarypas">
	    <c:if test="${row == 0 }">
	    <ul>
	        <li>${msg}</li>
	    </ul>
	    </c:if>
	    <c:if test="${row == 1 }">
	    <ul>
	        <li>회원님의 임시 비밀번호는</li>
	        <li><div>${msg}</div></li>
	        <li>입니다.</li>
	    </ul>
	    </c:if>
	</div>
	   
	    
	<c:if test="${row == 0 }">
	    <button class="w-btn w-btn-blue" type="button" onclick="history.back()" style="cursor: pointer;">뒤로가기</button>
	</c:if>
	<c:if test="${row == 1 }">
	<button class="w-btn w-btn-blue" type="button" onclick="location.href='${cpath}/login'" style="cursor: pointer;">
	    로그인
	</button>
	</c:if>
	   
	<%@ include file="../footer.jsp" %>