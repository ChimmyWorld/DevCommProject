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
		<p><input name="userid" placeholder="ID" required></p>
		<h6></h6>
		<p><input class="pwd1" name="userpw" type="password" placeholder="PW" required></p>
		<h6></h6>
		<p><input class="pwd2" name="pwcheck" type="password" placeholder="PW" required></p>
		<h6></h6>
		<p><input name="nick" placeholder="Nick" required></p>
		<h6></h6>
		<p><input name="email" type="email" placeholder="Email" required></p>
		<h6></h6>
		<p></p>
		<button>signUp</button>
	</form>
	
	<script>
		let pwd1 = document.getElementsByClassName('pwd1')[0];
		let pwd2 = document.getElementsByClassName('pwd2')[0];
		
		let h6 = document.getElementsByTagName('h6');
		
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
		
		let userid = document.getElementsByName('userid')[0];
		let nick = document.getElementsByName('nick')[0];
		let email = document.getElementsByName('email')[0];
		
		const url = 'signUp/exist';
		
		userid.onblur = () => {
			fetch(url + 'Id?userid=' + userid.value, {method: 'GET'})
			.then(response => response.json())
			.then(data => {
				if(data.userid != null) {
					h6[0].innerHTML = '이미 사용되고 있는 아이디입니다.';
					h6[0].style.color = 'red';
					
					userid.value = '';
					userid.focus();
				}
				else {
					h6[0].innerHTML = '';
				}
			})
		}
	</script>
	
</body>
</html>