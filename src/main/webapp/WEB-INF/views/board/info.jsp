<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tip.jsp</title>
</head>
<body>

	<h1>팁게시판</h1>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${infoList }">
		<tr>
			<td><a href="${cpath }/articles/${row.idx }">
			${row.title }
			</a></td>
			<td>${row.writer }</td>
			<td>${row.write_date }</td>
			<td>${row.view_count }</td>
		</tr>
		</c:forEach>
	</table>
	
	<c:if test="${not empty user }">
	<a href="${cpath }/info/new">글쓰기</a>
	</c:if>

</body>
</html>