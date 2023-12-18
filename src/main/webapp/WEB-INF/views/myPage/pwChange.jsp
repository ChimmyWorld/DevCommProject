<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
p {
	margin: 16px 0 0 0;
}
h6 {
	margin: 0;
}
</style>
</head>
<body>
	<h1><a href="${cpath }/">Home</a></h1>
	<hr>

	<form method="POST">
		<p><input class="expw" name="userpw" type="password" required></p>
		<h6></h6>
		<p><input class="pwd1" name="newpw" type="password" placeholder="newPW" required></p>
		<h6></h6>
		<p><input class="pwd2" name="newpwCheck" type="password" required></p>
		<h6></h6>
		<input name="idx" type="hidden" value="${user.idx }">
		<p></p>
		<button>PW 찾기</button>
	</form>
	
	<script>
		let pw = '${user.userpw}';
		let expw = document.getElementsByClassName('expw')[0];
		let pwd1 = document.getElementsByClassName('pwd1')[0];
		let pwd2 = document.getElementsByClassName('pwd2')[0];
		
		let h6 = document.getElementsByTagName('h6');
		
		expw.onblur = () => {
			if(pw != expw.value) {
				h6[0].innerHTML = '등록한 패스워드와 일치하지 않습니다';
				h6[0].style.color = 'red';
				
				expw.value = '';
				expw.focus();
			}
			else {
				h6[0].innerHTML = '';
			}
		}
		
		pwd2.onblur = () => {
			if(pwd1.value != pwd2.value) {
				h6[2].innerHTML = '입력값이 일치하지 않습니다';
				h6[2].style.color = 'red';
				
				pwd1.focus();
				pwd2.value = '';
			}
			else {
				h6[2].innerHTML = '';
			}
		}
	</script>
</body>
</html>