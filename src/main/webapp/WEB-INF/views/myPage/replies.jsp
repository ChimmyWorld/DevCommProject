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
    <%@include file="../header.jsp" %>
    
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
                <th>댓글</th>
                <th>작성일</th>
                <th>분류</th>
            </tr>
            <c:forEach var="row" items="${myReplyList }">
            <tr class="column">
                <td><a href="${cpath }/articles/${row.board_idx }">
                    ${row.contents } 
                </a></td>
                <td>${row.write_date }</td>
                <td>
                    <c:choose>
                        <c:when test="${row.type == 101}">
                            자유게시판
                    </c:when>
                        <c:when test="${row.type == '201'}">
                            정보게시판
                    </c:when>
                        <c:when test="${row.type == '301'}">
                            스터디게시판
                    </c:when>
                        <c:when test="${row.type == '401'}">
                            질문게시판
                    </c:when>
                    </c:choose>
                </td>
            </tr>
            </c:forEach>
        </table>

        <ul class="paging">
            <c:if test="${p.prev}">
                <li><a href="${cpath}/myPage/replies?page=${p.begin - 1}">이전</a></li>
            </c:if>

            <c:forEach var="i" begin="${p.begin}" end="${p.end}">
                <li><a href="${cpath}/myPage/replies?page=${i}">${i}</a></li>
            </c:forEach>

            <c:if test="${p.next}">
                <li><a href="${cpath}/myPage/replies?page=${p.end + 1}">다음</a></li>
            </c:if>
        </ul>

        
        <div class="dropdown">
            <button class="dropbtn"> 
                <span class="dropbtn_icon">
                    최신순
                </span>
            </button>
            <div class="dropdown-content">
                <a href="${cpath }/myPage/replies?order=idx">최신순</a>
            </div>
          </div>

       
      <div class="search_keyword">
        <form>
            <select name="keyword">
                <option value="contents">내용</option>
            </select>
    
            <input name="search">
        
            <button class="select_keyword">검색</button>
        </form>
    </div>
    </div>

    <%@ include file="../footer.jsp"%>