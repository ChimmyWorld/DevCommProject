<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
</head>
<body>

<h1>글작성</h1>

<form method="POST">
	<p><input name="title" placeholder="제목" required><p>
	<p><input name="contents" placeholder="내용" required></p>
	<button>작성</button>
	
	<input name="type" type="hidden" value="300">
	
</form>
</body>
</html>