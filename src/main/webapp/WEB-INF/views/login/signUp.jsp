<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>

<link rel="stylesheet" href="${cpath }/resources/css/newAcc.css">
<link rel="stylesheet" href="${cpath }/resources/css/atag.css">
<link rel="stylesheet" href="${cpath }/resources/css/footer.css">
</head>
<body>
    <header class="loginheader">
        <div>
            <img src="/Home/img/Acclogo.png" onclick="location.href='${cpath}/'" style="cursor: pointer;">
        </div>
        <div>
            <h4>OKKY에 오신것을 환영합니다.</h4>
        </div>
        <div>
            <h6 class="mainmsg">OKKY는 소프트웨어 개발자를 위한 지식공유 플랫폼입니다.</h6>
        </div>
    </header>
    <div class="hr-sect">OKKY 아이디로 로그인</div>

    <div class="login">
        <form method="POST">
           <label for="userid"><h5 class="loginchar">아이디</h5></label>
           <p><li><input id="userid" name="userid" placeholder="ID" required></li></p>
           <h6></h6>
           <label for="userpw"><h5 class="loginchar">비밀번호</h5></label>
           <p><li><input id="userpw" class="pwd1" name="userpw" type="password" placeholder="PW" required></li></p>
           <h6></h6>
           <label for="pwcheck"><h5 class="loginchar">비밀번호 체크</h5></label>
           <p><li><input id="pwcheck" class="pwd2" name="pwcheck" type="password" placeholder="PW" required></li></p>
           <h6></h6>
           <label for="nick"><h5 class="loginchar">닉네임</h5></label>
           <p><li><input id="nick" name="nick" placeholder="Nick" required></li></p>
           <h6></h6>
           <label for="email"><h5 class="loginchar">이메일</h5></label>
           <p><li><input id="email" name="email" type="email" placeholder="Email" required></li></p>
           <h6></h6>
           <button class="w-btn w-btn-blue" style="cursor: pointer;">회원가입</button>
        </form>
    </div>    
    <div class="accfind"><h5><a href="${cpath}/findId">계정찾기</a></h5></div>
    <div class="singUp">
        <ul>
            <li><h5>이미 회원이신가요?</h5></li>
            <li><h5><a href="${cpath}/login">로그인</a></h5></li>
        </ul>
    </div>

    <script type="text/javascript" src="${cpath }/resources/js/pwCheck.js"></script>
	<script type="text/javascript" src="${cpath }/resources/js/idCheck.js"></script>
	<script type="text/javascript" src="${cpath }/resources/js/nickCheck.js"></script>
	<script type="text/javascript" src="${cpath }/resources/js/emailCheck.js"></script>
    
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