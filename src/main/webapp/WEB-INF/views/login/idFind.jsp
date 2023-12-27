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
    <link rel="stylesheet" href="${cpath}/resources/css/findId.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>
<body>
    <header class="loginheader">
        <div>
            <img src="/Home/img/Acclogo.png" onclick="location.href='${cpath}/'" style="cursor: pointer;">
        </div>
        <div>
            <h4>계정 찾기</h4>
        </div>
        <div class="headerinfo">
            <ul>
                <li><h6>회원 가입시 입력하신 이메일 주소를 입력하시면,</h6></li>
                <li><h6>해당 이메일로 아이디 및 비밀번호 변경 링크를 보내드립니다.</h6></li>
            </ul>
        </div>
    </header>
    <div class="hr-sect">이메일로 아이디 찾기</div>

    <div class="login findIdBtn">
        <form method="POST">
            <label for="email"><h5 class="loginchar">이메일 주소</h5></label>
            <p><li><input id="email" type="email" name="email" placeholder="Email" required></li></p>
         
            <button class="w-btn w-btn-blue" style="cursor: pointer;">계정찾기</button>
            <button class="w-btn w-btn-blue" type="button" onclick="history.back()" style="cursor: pointer;">취소</button>
        </form>
    </div>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <footer>
        <article>
            <div><img src="/Home/img/okky.png" width="150px" height="100px"></div>
        </article>
        <article class="cominfo">
            <ul>
                <h6>
                    <li>상호명: (주)오키코리아 | 대표명: 노상범, 장기진</li>
                </h6>
                <h6>
                    <li>사업자등록번호: 592-87-02037 | 통신판매업신고번호: 제 2022-서울강남-04742호 | 직업정보 제공사업 신고번호: J1200020230009
                    </li>
                </h6>
                <h6>
                    <li>주소: 서울 강남구 봉은사로 303 TGL경복빌딩 502호 (06103) | 고객센터 : info@okky.kr (영업시간 평일 10:00~17:00) 주말
                        · 공휴일 휴무</li>
                </h6>
                <h6>
                    <li>© 2023 (주)오키코리아, Inc. All rights reserved.</li>
                </h6>
            </ul>
        </article>
        <article>
            <div><img src="/Home/img/spon.png" width="150px" height="100px"></div>
        </article>
    </footer>
</body>

</html>