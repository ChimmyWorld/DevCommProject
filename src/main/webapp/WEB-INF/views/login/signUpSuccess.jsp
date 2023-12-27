<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<c:set var="row" value="${map['row'] }" />
<c:set var="msg" value="${map['msg'] }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${cpath}/resources/css/atag.css">
    <link rel="stylesheet" href="${cpath}/resources/css/singUpSuccessful.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>
<body>
    <header>
        <div class="successimg"><img src="/Home/img/success.png" width="150px"></div>
        <div class="singUPmessage">
            <h1>환영합니다!</h1>
            <ul>
                <li><h1>${msg}</h1></li>
                <h1>님</h1>
            </ul>
        </div>
   
        <div class="infomessage">
            <ul>
                <li><h6>계정으로 회원가입이 성공적으로 완료되었습니다</h6></li>
                <li><h6>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
                    사용한 이메일을 확인 해 주세요</h6></li>
            </ul>
        </div>
        <c:if test="${row == 1 }">
            <button class="w-btn w-btn-blue" type="button" onclick="location.href='${cpath}/login';" style="cursor: pointer;">
                로그인
            </button>
        </c:if>
    </header>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

    <footer>
        <article>
            <div><img src="/Home/img/okky.png"width="150px" height="100px"></div>
        </article>
        <article class="cominfo">
            <ul>
                <h6><li>상호명: (주)오키코리아 | 대표명: 노상범, 장기진</li></h6>
                <h6><li>사업자등록번호: 592-87-02037 | 통신판매업신고번호: 제 2022-서울강남-04742호 | 직업정보 제공사업 신고번호: J1200020230009</li></h6>
                <h6><li>주소: 서울 강남구 봉은사로 303 TGL경복빌딩 502호 (06103) | 고객센터 : info@okky.kr (영업시간 평일 10:00~17:00) 주말 · 공휴일 휴무</li></h6>
                <h6><li>© 2023 (주)오키코리아, Inc. All rights reserved.</li></h6>
            </ul>
        </article>
        <article>
            <div><img src="/Home/img/spon.png"width="150px" height="100px"></div>
        </article>
    </footer>
    </body>
    </html>
    