<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>board1</title>

    <link rel="stylesheet" href="${cpath}/resources/css/header.css">
    <link rel="stylesheet" href="${cpath}/resources/css/board.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
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

    <div>
        <h1 class="title1">자유게시판</h1>
    </div>

    <div class="write">
        <button class="board-btn board-btn-blue" type="button" onclick="location.href='${cpath }/free/new';" style="cursor: pointer;">
            작성하기
        </button>
        <form action="">
            <div class="board_drop">
                <ul>
                    <li><a href="${cpath }/free?order=idx">최신순</a></li>
                    <li><a href="${cpath }/free?order=view_count">조회순</a></li>
                    <li><a href="${cpath }/free?order=reply_count">댓글순</a></li>
                    <li><a href="${cpath }/free?order=recommend_score">추천순</a></li>
                </ul>
            </div>
        </form>
    </div>
    <hr>
       
    <table class="table">
        <c:forEach var="row" items="${freeList }">
        <tr class="column">
            <th class="nickname">${row.writer }&nbsp;
                <c:if test="${row.profile_img == 'default.jpg'}">
                <img src="${cpath}/profileImg/default.jpg" class="profile" width="20px" height="20px">
                </c:if>
                <c:if test="${row.profile_img != 'default.jpg'}">
                <img src="${cpath}/profileImg/${row.u_idx}/${row.profile_img}" class="profile" width="20px" height="20px">
                </c:if> |&nbsp;
            </th>
            <th>${row.write_date }&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
            <th>추천수 |&nbsp;</th>
            <th><img src="/Home/img/comment.jpeg" width="20px" height="20px">&nbsp;10</th>
        </tr>
        <tr>
            <td class="contents" colspan="4"><a href="${cpath }/articles/${row.idx }">
            	${row.title }
            </a></td>
        </tr>
        <th>
            <td><hr class="hr-14"></td>
        </th>
        </c:forEach>
    </table>

    <div class="search_drop search">
        <form>
            <select>
                <option value="title">제목</option>
                <option value="writer">작성자</option>
                <option value="contents">댓글</option>
            </select>
        
            <input name="search" type="text" placeholder="검색어 입력">
            <button>검색</button>
        </form>
    </div>

    <div class="page">
        <ul>
            <c:if test="${p.prev}">
                <li>&nbsp<a href="${cpath}/free?page=${p.begin - 1}">이전</a></li>
            </c:if>
            <c:forEach var="i" begin="${p.begin}" end="${p.end}">
                <li>&nbsp<a href="${cpath}/free?page=${i}">${i}</a></li>
            </c:forEach>
            <c:if test="${p.next}">
                <li>&nbsp<a href="${cpath}/free?page=${p.end + 1}">다음</a></li>
            </c:if>
        </ul>
    </div>
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
    