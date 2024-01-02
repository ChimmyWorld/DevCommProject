<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home.html</title>
   <link rel="stylesheet" href="${cpath}/resources/css/header.css">
   <link rel="stylesheet" href="${cpath}/resources/css/home.css">
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

<h1 class="title1"><a href="${cpath }/free">자유게시판<img src="${cpath }/assetImg/home1.png"></a></h1>
<table class="table1">
    <c:forEach var="row" items="${freePreview }">
    <tr class="column">
        <th>${row.writer }
            <c:if test="${row.profile_img == 'default.jpg'}">
            <img src="${cpath}/profileImg/default.jpg" class="profile" width="20px" height="20px">
            </c:if>
            <c:if test="${row.profile_img != 'default.jpg'}">
            <img src="${cpath}/profileImg/${row.u_idx}/${row.profile_img}" class="profile" width="20px" height="20px">
            </c:if>
             | &nbsp;
        </th>
        <th>${row.write_date }&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
        <th>
            <img src="${cpath }/assetImg/eye1.png" width="20px" height="20px">${row.view_count } 
            <img src="${cpath }/assetImg/up.jpg" width="20px" height="20px">${row.recommend_score } 
            <img src="${cpath }/assetImg/comment.jpeg" width="20px" height="20px">${row.reply_count }
        </th>
    </tr>
    <tr>
        <td class="contents" colspan="4"><a href="${cpath }/articles/${row.idx }">${row.title }</a></td>
    </tr>
    <th>
        <td><hr class="hr-14"></td>
    </th>
    </c:forEach>
</table>
</div>

<div class="info">
<h1 class="title2"><a href="${cpath }/qna">Q&A<img src="${cpath }/assetImg/home2.png"></a></h1>
<table class="table2">
    <c:forEach var="row" items="${qnaPreview }">
    <tr class="column">
        <th>${row.writer }
            <c:if test="${row.profile_img == 'default.jpg'}">
            <img src="${cpath}/profileImg/default.jpg" class="profile" width="20px" height="20px">
            </c:if>
            <c:if test="${row.profile_img != 'default.jpg'}">
            <img src="${cpath}/profileImg/${row.u_idx}/${row.profile_img}" class="profile" width="20px" height="20px">
            </c:if>
             | &nbsp;
        </th>
        <th>${row.write_date }&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
        <th>
            <img src="${cpath }/assetImg/eye1.png" width="20px" height="20px">${row.view_count } 
            <img src="${cpath }/assetImg/up.jpg" width="20px" height="20px">${row.recommend_score } 
            <img src="${cpath }/assetImg/comment.jpeg" width="20px" height="20px">${row.reply_count }
        </th>
    </tr>
    <tr>
        <td class="contents" colspan="4"><a href="${cpath }/qna/${row.idx }">${row.title }</a></td>
    </tr>
    <th>
        <td><hr class="hr-14"></td>
    </th>
    </c:forEach>
</table>
</div>

<div class="info">
<h1 class="title3"><a href="${cpath }/info">팁/정보게시판<img src="${cpath }/assetImg/home3.png" ></a></h1>
<table class="table3">
    <c:forEach var="row" items="${infoPreview }">
    <tr class="column">
        <th>${row.writer }
            <c:if test="${row.profile_img == 'default.jpg'}">
            <img src="${cpath}/profileImg/default.jpg" class="profile" width="20px" height="20px">
            </c:if>
            <c:if test="${row.profile_img != 'default.jpg'}">
            <img src="${cpath}/profileImg/${row.u_idx}/${row.profile_img}" class="profile" width="20px" height="20px">
            </c:if>
                | &nbsp;
        </th>
        <th>${row.write_date }&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
        <th>
            <img src="${cpath }/assetImg/eye1.png" width="20px" height="20px">${row.view_count } 
            <img src="${cpath }/assetImg/up.jpg" width="20px" height="20px">${row.recommend_score } 
            <img src="${cpath }/assetImg/comment.jpeg" width="20px" height="20px">${row.reply_count }
        </th>
    </tr>
    <tr>
        <td class="contents" colspan="4"><a href="${cpath }/articles/${row.idx }">${row.title }</a></td>
    </tr>
    <th>
        <td><hr class="hr-14"></td>
    </th>
    </c:forEach>
</table>
</div>

<div class="info">
<h1 class="title4"><a href="${cpath }/study">스터디게시판<img src="${cpath }/assetImg/home4.jpg"></a></h1>
<table class="table4">
    <c:forEach var="row" items="${studyPreview }">
    <tr class="column">
        <th>${row.writer }
            <c:if test="${row.profile_img == 'default.jpg'}">
            <img src="${cpath}/profileImg/default.jpg" class="profile" width="20px" height="20px">
            </c:if>
            <c:if test="${row.profile_img != 'default.jpg'}">
            <img src="${cpath}/profileImg/${row.u_idx}/${row.profile_img}" class="profile" width="20px" height="20px">
            </c:if>
                | &nbsp;
        </th>
        <th>${row.write_date }&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</th>
        <th>
            <img src="${cpath }/assetImg/eye1.png" width="20px" height="20px">${row.view_count } 
            <img src="${cpath }/assetImg/up.jpg" width="20px" height="20px">${row.recommend_score } 
            <img src="${cpath }/assetImg/comment.jpeg" width="20px" height="20px">${row.reply_count }
        </th>
    </tr>
    <tr>
        <td class="contents" colspan="4"><a href="${cpath }/articles/${row.idx }">${row.title }</a></td>
    </tr>
    <th>
        <td><hr class="hr-14"></td>
    </th>
    </c:forEach>
</table>

<%@ include file="footer.jsp" %>
