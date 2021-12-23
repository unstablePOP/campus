<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<title>CampUs-정보공유게시판</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<style>
    	<link rel="stylesheet" href="../include/board.css">
    	<link rel="stylesheet" href="../include/table.css">
        #arrange {
            padding-left:60%;
        }
    </style>
</head>
<body>
	<div id="wrap">
        
        <div id="header-wrap">
            <%@ include file="../../common/include/gnb.jsp" %>
        </div>
        
        <div id="contents-wrap">
        <%@ include file="../include/sideNavi.jsp" %>
        <div id="contents">
            
            <%@ include file="../include/upimg.jsp" %>
            
            <div id="where">&nbsp&nbsp&nbsp&nbsp 정보공유게시판</div>
            
            <form id="arrange" action="/board/boardSearch.do" method="get">
                <button type="button" id="list1" class="btn1"><i id="titlelist" class="xi-list-dot"></i></button><button type="button" id="list2" class="btn1"><i id="titlelist" class="xi-apps"></i></button>
                <button type="button" id="mypost" class="btn2">내 글</button><button type="button" id="mycmt" class="btn2">내 댓글</button><button type="button" id="myfind" class="btn2"><img src=""/>즐겨찾기</button>
            </form>
            
            <div id="board">
<!--<%if(arrange==0){%>-->
<table id="table1" style="text-align: center;">
	<tr>
		<th>번호</th>
        <th>작성자</th>
		<th>제목</th>
        <th>댓글</th>
		<th>추천</th>
		<th>작성일</th>
	</tr>
    <!--<%for(FreeBoard board : list){%>-->
    <tr>	
        <td class="no"><!--<%=freeboard.getBoardNo()%>-->g</td>
        <td class="writer"><!--<%=freeboard.getPostWriterName()%>-->g</td>
		<td class="title"><!--<%=freeboard.getBoardTitle()%>--><a href="">아무튼 제목</a></td>
        <td class="comment"><!--<%=freeboard.getCommentCount()%>-->baby</td>
        <td class="like"><!--<%=freeboard.getHeartCount()%>-->baby</td>
		<td class="date"><!--<%=freeboard.getRegDate()%>-->baby</td>
	</tr>
<!--<%}%>-->
</table>
<!--<%}else{%>-->
<ul id="table2" style="text-align: center;">
    <li>
        <a href=""><img src="../image/merch/griddle.png"/></a>
        <dl>
            <dt><a href="">제목</a><a href="">[댓글]</a></dt>
            <dd><div>작성자</div></dd>
            <dd><span>날짜</span>&nbsp&nbsp&nbsp<span>조회</span>&nbsp&nbsp&nbsp<span>추천</span></dd>
        </dl>
    </li>
    <li>
        <a href=""><img src="../image/merch/thermo.png"/></a>
        <dl>
            <dt><span class="del">[판매완료]</span>&nbsp<a href="">제목</a><a href="">[댓글]</a></dt>
            <dd><div>작성자</div></dd>
            <dd><span>날짜</span>&nbsp&nbsp&nbsp<span>조회</span>&nbsp&nbsp&nbsp<span>추천</span></dd>
        </dl>
    </li>
    <li>
        <a href=""><img src="../image/merch/latan.png"/></a>
        <dl>
            <dt><a href="">제목</a><a href="">[댓글]</a></dt>
            <dd><div>작성자</div></dd>
            <dd><span>날짜</span>&nbsp&nbsp&nbsp<span>조회</span>&nbsp&nbsp&nbsp<span>추천</span></dd>
        </dl>
    </li>
    <li>
        <a href=""><img src="../image/merch/sleepingbag.png"/></a>
        <dl>
            <dt><a href="">제목</a><a href="">[댓글]</a></dt>
            <dd><div>작성자</div></dd>
            <dd><span>날짜</span>&nbsp&nbsp&nbsp<span>조회</span>&nbsp&nbsp&nbsp<span>추천</span></dd>
        </dl>
    </li>
    <li>
        <a href=""><img src="../image/merch/griddle.png"/></a>
        <dl>
            <dt><a href="">제목</a><a href="">[댓글]</a></dt>
            <dd><div>작성자</div></dd>
            <dd><span>날짜</span>&nbsp&nbsp&nbsp<span>조회</span>&nbsp&nbsp&nbsp<span>추천</span></dd>
        </dl>
    </li>
    <li>
        <a href=""><img src="../image/merch/thermo.png"/></a>
        <dl>
            <dt><a href="">제목</a><a href="">[댓글]</a></dt>
            <dd><div>작성자</div></dd>
            <dd><span>날짜</span>&nbsp&nbsp&nbsp<span>조회</span>&nbsp&nbsp&nbsp<span>추천</span></dd>
        </dl>
    </li>
    <li>
        <a href=""><img src="../image/merch/latan.png"/></a>
        <dl>
            <dt><a href="">제목</a><a href="">[댓글]</a></dt>
            <dd><div>작성자</div></dd>
            <dd><span>날짜</span>&nbsp&nbsp&nbsp<span>조회</span>&nbsp&nbsp&nbsp<span>추천</span></dd>
        </dl>
    </li>
    <li>
        <a href=""><img src="../image/merch/sleepingbag.png"/></a>
        <dl>
            <dt><a href="">제목</a><a href="">[댓글]</a></dt>
            <dd><div>작성자</div></dd>
            <dd><span>날짜</span>&nbsp&nbsp&nbsp<span>조회</span>&nbsp&nbsp&nbsp<span>추천</span></dd>
        </dl>
    </li>
    <!--<tr>
		<th>썸네일</th>
        <th>마감여부</th>
        <th>제목</th>
		<th>댓글</th>
        <th>작성자</th>
		<th>작성일</th>
		<th>가격</th>
	</tr>-->
</ul>
<!--<%} %>-->
            </div>
    <div id="search">
        <select id="select" name="type">
            <option value="subject">제목</option>
            <option value="writer">작성자</option>
            <option value="all">제목+작성자</option>
        </select>
        <!--<%
            String keyword = request.getParameter("keyword");
        %>-->
        <!--<%if(keyword!=null){ %>-->
            <input type="text" name="keyword" value="<%=keyword%>"> <input type="submit" value="검색">
        <!--<%}else{%>-->
            <input type="text" name="keyword"> <input type="submit" value="검색">
        <!--<%} %>-->
    </div>
        </div>
        </div>   
        
        <div id="footer">
            
        </div>
        
    </div>
    
<script>
        var arrange=0;
    $(function(){
        $("#list1").click(function(){
            arrange=0;
        });
        $("#list2").click(function(){
            arrange=1;
        });
    });
    $(".del_yn").each(function() {
        if($(this).text()=="판매완료"){
            $(this).siblings().css("color","gray");
        }
    });
    $(".del").each(function() {
        if($(this).text()=="[판매완료]"){
            $(this).parent().parent().children('a').css("color","gray");
        }
    });
    $('#list1').click(function(){
        $(this).css("background-color","gray");
    });
    $('#list2').click(function(){
        $(this).css("background-color","gray");
    });
</script>
</body>
</html>