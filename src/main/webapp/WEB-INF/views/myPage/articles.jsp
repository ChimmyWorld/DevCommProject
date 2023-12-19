<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>articles.jsp</title>
</head>
<body>
	<h1>
		<a href="${cpath }/">Home</a>
	</h1>

	<ul>
		<li><a href="${cpath }/myPage/info">내 정보</a></li>
		<li><a href="${cpath }/myPage/articles">* 내 활동</a></li>
		<li><a href="${cpath }/myPage/settings">계정관리</a></li>
	</ul>

	<h1>내가 쓴 게시글</h1>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${myBoardList }">
			<tr>
				<td><a href="${cpath }/articles/${row.idx }"> ${row.title }
				</a></td>
				<td>${row.writer }</td>
				<td>${row.write_date }</td>
				<td>${row.view_count }</td>
			</tr>
		</c:forEach>
	</table>



	<h1>내가 쓴 댓글</h1>
	<table>
		<tr>
			<th>댓글</th>
			<th>작성일</th>
		</tr>
		<c:forEach var="row" items="${myReplyList }">
			<tr>
				<td>${row.contents }</td>
				<td>${row.write_date }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>