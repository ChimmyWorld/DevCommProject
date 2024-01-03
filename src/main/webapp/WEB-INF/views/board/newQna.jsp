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
	<%@include file="../header.jsp" %>

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
        <input name="type" type="hidden" value="400">
		<div class="btn">
			<button class="w-btn w-btn-blue" style="cursor: pointer;">
				등록</button>
			<button class="c-btn c-btn-blue" type="button"
				onclick="history.back()" style="cursor: pointer;">취소</button>
		</div>
	</form>
	
	<%@ include file="../footer.jsp"%>