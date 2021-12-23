<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<style>
		<link rel="stylesheet" href="../include/board.css">
		#arrange{
            padding-left:80%;
        }
        th{
            height:35px;
            color:rgb(0, 0, 40);
        }
        td{
            height:28px;
            border-top:1px solid black;
        }
        .title{
            width:60%;border-left:1px solid black;
            border-right:1px solid black;
        }
        table a{
            text-decoration:none;
            color:black;
        }
        .title:hover>a{
            text-decoration:underline;
        }
        .like{width:60px;}
    </style>
</head>
    
<body>
    
    <div id="wrap">
        
        <div id="header-wrap">
            <%@ include file="../../common/include/gnb.jsp" %>
        </div>
        <div id="contents-wrap">
        
        <%@ include file="include/sideNavi.jsp" %>
        <div id="contents">
            <%@ include file="include/upimg.jsp" %>
            <div id="where">&nbsp&nbsp&nbsp&nbsp 공지사항</div>
            <form id="arrange" action="/board/boardSearch.do" method="get">
               <button type="button" id="myfind" class="btn2"><img src=""/>즐겨찾기</button>
            </form>
            <div id="board">
            
<table style="text-align: center;">
	<tr>
		<th>번호</th>
        <th>작성자</th>
		<th>제목</th>
		<th>추천</th>
		<th>작성일</th>
	</tr>
	<!--<%for(FreeBoard board : list){%>-->
    <tr>	
        <td class="no"><!--<%=freeboard.getBoardNo()%>-->g</td>
        <td class="writer"><!--<%=freeboard.getPostWriterName()%>-->g</td>
		<td class="title"><!--<%=freeboard.getBoardTitle()%>--><a href="">아무튼 제목</a></td>
        <td class="like"><!--<%=freeboard.getHeartCount()%>-->baby</td>
		<td class="date"><!--<%=freeboard.getRegDate()%>-->baby</td>
	</tr>
<!--<%}%>-->
</table>

            </div>
    <div id="search">
        <select id="select" name="type">
            <option value="subject">제목</option>
            <option value="writer">작성자</option>
            <option value="all">제목+작성자</option>
        </select>
        <%
            String keyword = request.getParameter("keyword");
        %>
        <%if(keyword!=null){ %>
            <input type="text" name="keyword" value="<%=keyword%>"> <input type="submit" value="검색">
        <%}else{%>
            <input type="text" name="keyword"> <input type="submit" value="검색">
        <%} %>
    </div>
        </div>
        </div>   
        
        <div id="footer">
            
        </div>
        
    </div>
    
</body>
</html>