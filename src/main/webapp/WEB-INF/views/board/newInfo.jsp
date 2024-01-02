<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${cpath }/resources/css/header.css">
<link rel="stylesheet" href="${cpath }/resources/css/write.css">
<link rel="stylesheet" href="${cpath }/resources/css/footer.css">

</head>


<body>
	<header>
        <div class="logo">
            <img src="${cpath }/assetImg/okky.png" height="80px" onclick="location.href='${cpath}/'" style="cursor: pointer;">
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
        <button class="q-btn q-btn-blue" type="button" onclick="location.href='${cpath}/login';" style="cursor: pointer;">
            로그인
        </button>
        <button class="n-btn n-btn-blue" type="button" onclick="location.href='${cpath}/signUp';" style="cursor: pointer;">
            회원가입
        </button>
        </c:if>
        <c:if test="${not empty user }">
        <div class="dropdown_user">
            <a>
                <c:if test="${user.profile_img == 'default.jpg'}">
                <img src="${cpath}/profileImg/default.jpg">
                </c:if>
                <c:if test="${user.profile_img != 'default.jpg'}">
                <img src="${cpath}/profileImg/${user.idx}/${user.profile_img}">
                </c:if>
            </a>
            <div class="dropdown_list">
                <a href="${cpath }/myPage/info">
                    <div><img src="${cpath }/assetImg/defaultprofile.jpg">프로필</div>
                </a>
                <a href="${cpath }/myPage/settings">
                    <div><img src="${cpath }/assetImg/settiing.jpg">계정관리</div>
                </a>
                <a href="${cpath}/logout">
                    <div><img src="${cpath }/assetImg/logout.jpg">로그아웃</div>
                </a>
            </div>
        </div>
        </c:if>
    </header>
    <div class="hr"></div>

	<form method="POST" enctype="multipart/form-data">
		<div class="title">
			<div class="topictitle">
				<label for="title"><h5>제목</h5></label>
			</div>
			<div class="title">
				<input id="title" name="title" placeholder="제목" required>
			</div>
		</div>
        <h5 class="title_contents">본문</h5>
		<div class="msg">
			<textarea name="contents" placeholder="내용을 작성해 주세요" cols="30"
				rows="10" required></textarea>
		</div>
		<div class="filebtn">
			<input name="upload" type="file" accept="image/*">
		</div>
		<input name="writer" type="hidden" value="${user.nick }">
        <input name="type" type="hidden" value="200">
		<div class="btn">
			<button class="w-btn w-btn-blue" style="cursor: pointer;">
				등록</button>
			<button class="c-btn c-btn-blue" type="button"
				onclick="history.back()" style="cursor: pointer;">취소</button>
		</div>
	</form>
	
	<%@ include file="../footer.jsp"%>