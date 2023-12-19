<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>c
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글</h1>
	<table>
		<tr>
			<th>제목</th>
			<td>${row.title }</td>
		</tr>
		<tr>
			<th>내용</th>
			<c:if test="${not empty row.article_img}">
       		 	<td><img src="${cpath}/boardImg/${row.idx}/${row.article_img}"></td>
    		</c:if>
			<td>${row.contents }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${row.writer }</td>
		</tr>
		<tr>
			<th>조회수</th>
			<td>${row.view_count }</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${row.write_date }</td>
		</tr>
	</table>

	<c:set var="isCheck" value="0"></c:set>

	<div>
		<button class="${isCheck == 1 ? 'good' : ''}">
			추천<br> (${goodCnt })
		</button>
		<button class="${isCheck == 2 ? 'bad' : ''}">
			비추천<br> (${badCnt })
		</button>
	</div>

	<c:if test="${row.writer == user.nick }">
		<a href="${cpath }/articles/${row.idx }/edit"><button>수정</button></a>
		<a href="${cpath }/articles/${row.idx }/delete"><button>삭제</button></a>
	</c:if>

	<form method="POST">
		<c:if test="${row.type == 100 }">
			<input name="type" type="hidden" value="101">
		</c:if>
		<c:if test="${row.type == 200 }">
			<input name="type" type="hidden" value="201">
		</c:if>
		<c:if test="${row.type == 300 }">
			<input name="type" type="hidden" value="301">
		</c:if>
		<c:if test="${row.type == 400 }">
			<input name="type" type="hidden" value="401">
		</c:if>

		<input name="writer" type="hidden" value="${user.nick }">

		<p>
			<textarea name="contents" placeholder="바른말을 사용합시다" required></textarea>
		</p>

		<button>댓글 작성</button>
	</form>

	<h5>댓글 | 총 ${reply }개</h5>
	<hr>

	<table>
		<c:forEach var="re" items="${replys }">
			<tr>
				<td><pre>			
${re.writer } | ${re.write_date }			
${re.contents }
</pre></td>
			<tr>
		</c:forEach>
	</table>

</body>
</html>