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
	
	<ul>
		<li><a href="${cpath }/myPage/info">* 내 정보</a></li>
		<li><a href="${cpath }/myPage/articles">내 활동</a></li>
		<li><a href="${cpath }/myPage/settings">계정관리</a></li>
	</ul>
	
	<table>
		<tr>
			<th>닉네임</th>
			<td>${user.nick }</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${user.email }</td>
		</tr>
		<tr>
			<th>가입일자</th>
			<td>${user.join_date }</td>
		</tr>
	</table>
</body>
</html>