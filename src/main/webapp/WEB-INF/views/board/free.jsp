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

    <div>
        <h1 class="title1">자유게시판<img class="title1img" src="${cpath }/assetImg/board1.png"></h1>
        </div>

        <div class="write">
            <button class="board-btn board-btn-blue" type="button" onclick="location.href='${cpath }/free/new';" style="cursor: pointer;">
                작성하기
            </button>
            <form action="">
            <div class="dropdown">
                <button class="dropbtn"> 
                    <span class="dropbtn_icon">
                        <c:if test="${param.order == 'idx' || empty param.order}">
                            최신순
                        </c:if>
                        <c:if test="${param.order == 'view_count'}">
                            조회순
                        </c:if>
                        <c:if test="${param.order == 'reply_count'}">
                            댓글순
                        </c:if>
                        <c:if test="${param.order == 'recommend_score'}">
                            추천순
                        </c:if>
                    </span>
                </button>
                <div class="dropdown-content">
                    <a href="${cpath }/free?order=idx">최신순</a>
                    <a href="${cpath }/free?order=view_count">조회순</a>
                    <a href="${cpath }/free?order=reply_count">댓글순</a>
                    <a href="${cpath }/free?order=recommend_score">추천순</a>
                </div>
              </div>
            </form>
        </div>
        <hr>
       
        <c:forEach var="row" items="${freeList }">   
        <table class="table">
            <tr class="column">
                <th class="column1">
                    <c:if test="${row.profile_img == 'default.jpg'}">
                    <img src="${cpath}/profileImg/default.jpg" class="profile" width="20px" height="20px">
                    </c:if>
                    <c:if test="${row.profile_img != 'default.jpg'}">
                    <img src="${cpath}/profileImg/${row.u_idx}/${row.profile_img}" class="profile" width="20px" height="20px">
                    </c:if>
                    ${row.writer }&nbsp;${row.write_date }&nbsp;
                </th>
                <th>&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
                <th class="column2"><img src="${cpath }/assetImg/eye1.png" width="20px" height="20px">&nbsp;${row.view_count }</th>
                <th class="column2"><img src="${cpath }/assetImg/up.jpg" width="20px" height="20px">&nbsp;${row.recommend_score }</th>
                <th class="column2"><img src="${cpath }/assetImg/comment.jpeg" width="20px" height="20px">&nbsp;${row.reply_count }</th>
            </tr>
        </table>
        <div class="contents"><a href="${cpath }/articles/${row.idx }">
        ${row.title }
        </a></div>
        <th>
            <td><hr class="hr-14"></td>
        </th>
        </c:forEach>
          
    <div class="search_drop">
        <form>
            <select>
                <option value="title">제목</option>
                <option value="writer">작성자</option>
                <option value="contents">댓글</option>
            </select>
    </div>
    <div class="search">
        <input name="search" type="text" placeholder="검색어 입력">
    </div>
    <button class="search_btn" style="cursor: pointer;">검색</button>
    </form>

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

    <%@ include file="../footer.jsp" %>