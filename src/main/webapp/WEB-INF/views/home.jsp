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
<h1>홈</h1>

<h1>자유 게시판</h1>
<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${freePreview }">
		<tr>
			<td>${row.title }</td>
			<td>${row.writer }</td>
			<td>${row.write_date }</td>
			<td>${row.view_count }</td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>