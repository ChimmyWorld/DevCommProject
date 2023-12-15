<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><a href="${cpath }/">Project</a></h1>
	<hr>
	
	<ul>
		<c:if test="${empty user }">
			<li><a href="${cpath }/login">login</a></li>
			<li><a href="${cpath }/signUp">signUp</a></li>
		</c:if>
		<c:if test="${not empty user }">
			<li><a href="${cpath }/logout">logout</a></li>
			<li><a href="${cpath }/myPage/info">myPage</a></li>
		</c:if>
		<li><a href="#">free_board</a></li>
		<li><a href="#">qna_board</a></li>
		<li>${user.nick }</li>
	</ul>
	
</body>
</html>