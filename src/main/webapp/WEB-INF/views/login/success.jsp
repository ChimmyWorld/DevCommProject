<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<c:set var="row" value="${map['row'] }" />
<c:set var="msg" value="${map['msg'] }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><a href="${cpath }/">Home</a></h1>
	<hr>
	
	<h4>${msg }</h4>
	
	<c:if test="${row == 0 }">
		<button onclick="history.back()">뒤로가기</button>
	</c:if>
	<c:if test="${row == 1 }">
		<button onclick="location.href='${cpath}/login'">로그인</button>
	</c:if>
</body>
</html>