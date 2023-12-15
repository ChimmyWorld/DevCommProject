<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><a href="${cpath }/">Home</a></h1>
	<hr>
	
	<form method="POST">
		<p><input name="userid" placeholder="ID" required></p>
		<p><input name="userpw" type="password" placeholder="PW" required></p>
		<p><input name="pwcheck" type="password" placeholder="PW" required></p>
		<p><input name="nick" placeholder="Nick" required></p>
		<p><input name="email" type="email" placeholder="Email" required></p>
		
		<button>signUp</button>
	</form>
</body>
</html>