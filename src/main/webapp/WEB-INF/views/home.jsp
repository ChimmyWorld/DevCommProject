<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${cpath }/resources/css/header.css">
</head>
<body>
<header>
    <div class="logo">
    <img src="/Home/img/okky.png" height="80px" onclick="location.href='${cpath}/'" style="cursor: pointer;">
</div>
<nav class="menu">
    <ul>
        <li>&nbsp<a href="${cpath }/free">자유게시판</a></li>&emsp;
        <li>&nbsp<a href="${cpath }/qna">Q&A</a></li>&emsp;
        <li>&nbsp<a href="${cpath }/info">팁/정보게시판</a></li>&emsp;
        <li>&nbsp<a href="${cpath }/study">스터디게시판</a></li>
    </ul>
</nav>
<c:if test="${empty user }">
<div class="wn-btn">
<button class="w-btn w-btn-blue" type="button" onclick="location.href='${cpath}/login';" style="cursor: pointer;">
    로그인
</button>
<button class="n-btn n-btn-blue" type="button" onclick="location.href='${cpath}/signUp';" style="cursor: pointer;">
    회원가입
</button>
</div>
</c:if>
<c:if test="${not empty user }">
<div class="dropdown_user">
    <a href="#">
        <c:if test="${user.profile_img == 'default.jpg'}">
        <img src="${cpath}/profileImg/default.jpg">
        </c:if>
        <c:if test="${user.profile_img != 'default.jpg'}">
        <img src="${cpath}/profileImg/${user.idx}/${user.profile_img}">
        </c:if>
    </a>
    <div class="dropdown_list">
        <a href="${cpath }/myPage/info">
            <div><img src="/Home/img/defaultprofile.jpg" >
            프로필</div>
        </a>
        <a href="${cpath }/myPage/settings">
            <div><img src="/Home/img/settiing.jpg" >계정관리</div>
        </a>
        <a href="${cpath}/logout">
            <div><img src   ="/Home/img/logout.jpg">
                로그아웃</div>
        </a>
    </div>
</div>
</c:if>
</header>
<div class="hr"></div>

	<h3>자유 게시판</h3>
	<a href="${cpath }/free">더보기</a>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${freePreview }">
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
	
	<h3>팁/정보 게시판</h3>
	<a href="${cpath }/info">더보기</a>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${infoPreview }">
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
	
	<h3>스터디</h3>
	<a href="${cpath }/study">더보기</a>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${studyPreview }">
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
	
	<h3>QnA 게시판</h3>
	<a href="${cpath }/qna">더보기</a>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="row" items="${qnaPreview }">
		<tr>
			<td><a href="${cpath }/qna/${row.idx }">
			${row.title }
			</a></td>
			<td>${row.writer }</td>
			<td>${row.write_date }</td>
			<td>${row.view_count }</td>
		</tr>
		</c:forEach>
	</table>
	

</body>
</html>