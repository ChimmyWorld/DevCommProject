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
    <%@ include file="../header.jsp"%>

    <div>
        <h1 class="title1">스터디게시판<img class="title1img" src="${cpath }/assetImg/board4.jpg"></h1>
        </div>

        <div class="write">
            <button class="board-btn board-btn-blue" type="button" onclick="location.href='${cpath }/study/new';" style="cursor: pointer;">
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
                        <a href="${cpath }/study?order=idx">최신순</a>
                        <a href="${cpath }/study?order=view_count">조회순</a>
                        <a href="${cpath }/study?order=reply_count">댓글순</a>
                        <a href="${cpath }/study?order=recommend_score">추천순</a>
                    </div>
                  </div>
                </form>
            </div>
        <hr>
       
        <c:forEach var="row" items="${studyList }">
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
                <li>&nbsp<a href="${cpath}/study?page=${p.begin - 1}">이전</a></li>
            </c:if>
            <c:forEach var="i" begin="${p.begin}" end="${p.end}">
                <li>&nbsp<a href="${cpath}/study?page=${i}">${i}</a></li>
            </c:forEach>
            <c:if test="${p.next}">
                <li>&nbsp<a href="${cpath}/study?page=${p.end + 1}">다음</a></li>
            </c:if>
        </ul>
    </div>
    
    <%@ include file="../footer.jsp" %>