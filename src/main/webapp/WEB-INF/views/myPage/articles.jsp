<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>article</title>
 
    <link rel="stylesheet" href="${cpath}/resources/css/header.css">
    <link rel="stylesheet" href="${cpath}/resources/css/post.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>
<body>

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
    
    <div class='f-line'></div>
    <hr class="hhr">
    <div class="mylist">
        <ul>
            <li>&nbsp<a href="${cpath }/myPage/info">내 정보</a></li>
            <li>
                &nbsp<a href="${cpath }/myPage/articles" style="color: rgb(0, 144, 249)">내 활동</a>
                <ul>
                    <li>&nbsp<a href="${cpath }/myPage/articles">내가 쓴 게시글</a></li>
                    <li>&nbsp<a href="${cpath }/myPage/replies">내가 쓴 댓글</a></li>
                </ul>
            </li>
            <li>&nbsp<a href="${cpath }/myPage/settings">계정 관리</a></li>
        </ul>
    </div>
    
    <div class="s-line"></div>
    <div class="myWrite">
        <table class="table1">
            <tr>
                <th>제목</th>
                <th>작성일</th>
                <th>조회수</th>
                <th>분류</th>
            </tr>
            <c:forEach var="row" items="${myBoardList }">
            <tr class="column">
                <td><a href="${cpath }/articles/${row.idx }"> 
                    ${row.title }
                </a></td>
                <td>${row.write_date }</td>
                <td>${row.view_count }</td>
                <td>
                    <c:choose>
                        <c:when test="${row.type == 100}">자유게시판
                    </c:when>
                        <c:when test="${row.type == '200'}">정보게시판
                    </c:when>
                        <c:when test="${row.type == '300'}">스터디게시판
                    </c:when>
                        <c:when test="${row.type == '400'}">질문게시판
                    </c:when>
                    </c:choose>
                </td>
            </tr>
            </c:forEach>
        </table>

        <ul class="paging">
            <c:if test="${p.prev}">
                <li><a href="${cpath}/myPage/articles?page=${p.begin - 1}">이전</a></li>
            </c:if>

            <c:forEach var="i" begin="${p.begin}" end="${p.end}">
                <li><a href="${cpath}/myPage/articles?page=${i}">${i}</a></li>
            </c:forEach>

            <c:if test="${p.next}">
                <li><a href="${cpath}/myPage/articles?page=${p.end + 1}">다음</a></li>
            </c:if>
        </ul>

        
        <div class="dropdown">
            <button class="dropbtn"> 
                <span class="dropbtn_icon">
                    <c:if test="${param.order != 'view_count'}">
                        최신순
                    </c:if>
                    <c:if test="${param.order == 'view_count'}">
                        조회순
                    </c:if>
                </span>
            </button>
            <div class="dropdown-content">
                <a href="${cpath }/myPage/articles?order=idx">최신순</a>
                <a href="${cpath }/myPage/articles?order=view_count">조회순</a>
            </div>
          </div>

       
      <div class="search_keyword">
        <form>
            <select name="keyword">
                <option value="title">제목</option>
                <option value="writer">작성자</option>
            </select>
    
            <input name="search">
        
            <button class="select_keyword">검색</button>
        </form>
    </div>
    </div>

    <%@ include file="../footer.jsp"%>