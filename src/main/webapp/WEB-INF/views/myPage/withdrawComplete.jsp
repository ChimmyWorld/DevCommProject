<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${cpath}/resources/css/deleteSuccessful.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">

</head>
<body onload="window_onload()">
    <header>
        <div class="exitimg"><img src="${cpath }/assetImg/door1.PNG"></div>
        <div class="deletemessage">
            <h4>그동안 DEVCOMM과 함께 해주셔서 감사드립니다</h4>
        </div>
    </header>

    <script>
		function window_onload() {
			setTimeout('go_url()', 5000);
		}
		
		function go_url() {
			location.href = '${cpath}/logout';
		}
	</script>
	
<%@ include file="../footer.jsp" %>
