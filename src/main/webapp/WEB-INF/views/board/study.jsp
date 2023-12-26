<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>study.jsp</title>
</head>
<body>
	<h1>스터디게시판</h1>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${studyList }">
			<tr>
				<td><a href="${cpath }/articles/${row.idx }"> ${row.title }
				</a></td>
				<td>${row.writer }</td>
				<td>${row.write_date }</td>
				<td>${row.view_count }</td>
			</tr>
		</c:forEach>
	</table>

	<c:if test="${not empty user }">
		<a href="${cpath }/study/new">글쓰기</a>
	</c:if>

	<ul>
		<c:if test="${p.prev}">
			<li><a href="${cpath}/study?page=${p.begin - 1}">이전</a></li>
		</c:if>

		<c:forEach var="i" begin="${p.begin}" end="${p.end}">
			<li><a href="${cpath}/study?page=${i}">${i}</a></li>
		</c:forEach>

		<c:if test="${p.next}">
			<li><a href="${cpath}/study?page=${p.end + 1}">다음</a></li>
		</c:if>
	</ul>

	<ul>
		<li><a href="${cpath }/study?order=idx">최신순</a></li>
		<li><a href="${cpath }/study?order=view_count">조회순</a></li>
		<li><a href="${cpath }/study">댓글순(미구현)</a></li>
	</ul>
	
	<div>
		<form>
			<select name="keyword">
				<option value="title">제목</option>
				<option value="writer">작성자</option>
				<option value="title">댓글(미구현)</option>
			</select>
	
			<input name="search">
		
			<button>검색</button>
		</form>
	</div>

</body>
</html>