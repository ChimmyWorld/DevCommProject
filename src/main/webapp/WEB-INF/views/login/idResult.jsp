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
    <title>Document</title>
    <link rel="stylesheet" href="${cpath}/resources/css/changeSuccessful.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">

</head>
<body>
    <header>
        <div class="checkimg"><img src="${cpath }/assetImg/check.png" width="200px"></div>
        <div class="singUPmessage">
            <c:if test="${user != null }">
            <ul>
                <li><h1>${user}</h1></li>
                <h1>님</h1>
            </ul>
            </c:if>
            <h4>${msg }</h4>
        </div>
   
    <c:if test="${row == 0 }">
		<button class="w-btn w-btn-blue" type="button" onclick="history.back()" style="cursor: pointer;">뒤로가기</button>
	</c:if>
    <c:if test="${row == 1 }">
    <button class="w-btn w-btn-blue" type="button" onclick="location.href='${cpath}/login'" style="cursor: pointer;">
        로그인
    </button>
    </c:if>
</header>
<%@ include file="../footer.jsp" %>