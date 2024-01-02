<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<c:set var="row" value="${map['row'] }" />
<c:set var="msg" value="${map['msg'] }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${cpath}/resources/css/atag.css">
    <link rel="stylesheet" href="${cpath}/resources/css/singUpSuccessful.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>
<body>
    <header>
        <div class="successimg"><img src="${cpath }/assetImg/success.png" width="150px"></div>
        <div class="singUPmessage">
            <h1>환영합니다!</h1>
            <ul>
                <li><h1>${msg}</h1></li>
                <h1>님</h1>
            </ul>
        </div>
   
        <c:if test="${row == 1 }">
            <button class="w-btn w-btn-blue" type="button" onclick="location.href='${cpath}/login';" style="cursor: pointer;">
                로그인
            </button>
        </c:if>
    </header>
	<%@ include file="../footer.jsp" %>
    