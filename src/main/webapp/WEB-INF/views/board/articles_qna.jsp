<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>contents2</title>

    <link rel="stylesheet" href="${cpath}/resources/css/header.css">
    <link rel="stylesheet" href="${cpath}/resources/css/qnacontents.css">
    <link rel="stylesheet" href="${cpath}/resources/css/footer.css">
</head>

<body>
    <%@include file="../header.jsp" %>

    <div class="info">
            <h1 class="title">Q&A<img class="title2img" src="${cpath }/assetImg/contents2.png"></h1>
            <table class="recommendtable">
                <tr>
                    <th><button class="recommend ${recommend.isCheck == 1 ? 'good' : ''}">∧</button></th>
                </tr>
                <tr>    
                    <th class="recommendcnt"></th>
                </tr>
                <tr>    
                    <th><button class="not-recommend ${recommend.isCheck == 2 ? 'bad' : ''}">∨</button></th>
                </tr>
            </table>
            <div class="hr-sect">Q&A</div>
            <div class="profile">
                <c:if test="${row.profile_img == 'default.jpg'}">
				<img src="${cpath}/profileImg/default.jpg" class="profile">
				</c:if>
				<c:if test="${row.profile_img != 'default.jpg'}">
				<img src="${cpath}/profileImg/${row.u_idx}/${row.profile_img}" class="profile">
				</c:if>
            </div>
            <div class="contentusersinfo">  
                <ul>
                    <li>
                        <h4 class="rowInt" data-idx="${row.idx }">${row.writer }</h4>
                    </li>
                    <li>
                        <h5>${row.write_date } / ${row.view_count }</h5>
                    </li>
                </ul>
                <c:if test="${user.nick == row.writer }">
                <div class="dropdown_modify">
                    <a href="#">
                      <h2>...</h2>
                    </a>
                    <c:if test=""></c:if>
                    <div class="dropdown_modifymenu">
                        <a href="${cpath }/articles/${row.idx }/edit">
                       <div>수정하기</div>
                      </a>
                      <a href="${cpath }/articles/${row.idx }/delete">
                        <div>삭제하기</div>
                      </a>
                    </div>
                    </div>
                   </c:if>
            </div>
            <div class="pertitle">
            <h1>${row.title}</h1>
        </div>
            <div class="writecontents">
                <c:if test="${not empty row.article_img}">
                <img src="${cpath}/boardImg/${row.idx}/${row.article_img}" width="100%">
                </c:if>
                <pre>${row.contents }
                </pre>
            </div>
</div>
           
            <div class="hr"></div>
            <br>
            
            <div id="form-commentInfo">
                <div id="comment-count">댓글 <span id="count">${reply }개</span></div>
                <form method="POST">
                    <c:if test="${row.type == 100 }">
                        <input name="type" type="hidden" value="101">
                    </c:if>
                    <c:if test="${row.type == 200 }">
                        <input name="type" type="hidden" value="201">
                    </c:if>
                    <c:if test="${row.type == 300 }">
                        <input name="type" type="hidden" value="301">
                    </c:if>
                    <c:if test="${row.type == 400 }">
                        <input name="type" type="hidden" value="401">
                    </c:if>
            
                    <input name="writer" type="hidden" value="${user.nick }">

                    <input id="comment-input" name="contents" placeholder="바른말을 사용합시다" required>
                    <button class="s-btn s-btn-blue">등록</button>
                </form>
            </div>

        <c:forEach var="re" items="${replys }">
        <div class="wirter_profile">
            <div class="profile">
                <c:if test="${re.profile_img == 'default.jpg'}">
                <img src="${cpath}/profileImg/default.jpg" class="profile">
                </c:if>
                <c:if test="${re.profile_img != 'default.jpg'}">
                <img src="${cpath}/profileImg/${re.u_idx}/${re.profile_img}" class="profile">
                </c:if>
            </div>
            <div class="contentsinfo">
                <ul>
                    <li>
                        <h4>${re.writer }</h4>
                    </li>
                    <li>
                        <h5>${re.write_date }</h5>
                    </li>
                </ul>
                <div id="commentRow_${re.idx}" class="commentRow">
                <pre class="commentContent" >
	${re.contents }
                </pre>
                <c:if test="${user.nick == re.writer }">
                <div class="dropdown_rply">
                    <a href="#">
                        <h2>...</h2>
                    </a>
                    <div class="dropdown_menu">
                        <a onclick="editComment(${re.idx})">
                        <div>수정하기</div>
	                    </a>
	                    <a href="${cpath }/reply/${re.idx }/delete">
	                        <div>삭제하기</div>
	                    </a>
                    </div>
                </div>
                </c:if>
                </div>
                <div class="editForm" id="editForm_${re.idx}" style="display: none">
                    <form onsubmit="saveComment(event, ${re.idx}); return false;">
                        <textarea class="editTextArea replytext" cols="30" rows="10">${re.contents}</textarea>
                        <br>
                        <div class="modify_btn">
                            <div><button class="modify_cancle" type="button" onclick="cancelEdit(${re.idx})">취소</button></div>
                            <div><button class="modify_rply modyfiy_rply-blue" type="submit">수정하기</button></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        </c:forEach>

        <script type="text/javascript" src="${cpath }/resources/js/recommend.js"></script>
        <script type="text/javascript" src="${cpath }/resources/js/replyEdit.js"></script>

        <%@ include file="../footer.jsp" %>