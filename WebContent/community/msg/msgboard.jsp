<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<title>CampUs-쪽지함</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<style>
        *{box-sizing: border-box;}
        #wrap{
            width: 300px;
            width: 300px;
            margin: 0px auto;
        }
        #where{
            margin:0px auto;
            width:100%;
            font-size: 20px;
            color:rgb(0, 0, 40);
            font-weight:700;
            float:left;
        }
        #board{
            width:100%;
            margin:0px auto;
        }
        table{
            margin-top:5px;
            width:100%;
            border-top:1px solid black;
            border-bottom:1px solid black;
            border-spacing: 0px;
            font-size: 14px;
        }
        th{
            height:35px;
            color:rgb(0, 0, 40);
        }
        th:first-of-type{
            border-right: solid 1px rgb(0, 0, 40);
        }
        td{
            height:28px;
            border-top:1px solid black;
        }
        td:first-of-type{
            border-right: solid 1px rgb(0, 0, 40);
        }
        a{
            text-decoration:none;
            color:black;
        }
        .writer:hover>a{
            text-decoration:underline;
        }
        #search{
            width:100%;
            margin-top:30px;
            padding-left:20%;
        }
    </style>
</head>
<body>
	<div id="wrap">
            <div id="where">&nbsp&nbsp&nbsp&nbsp 쪽지함</div>
            <div id="search">
            <!--<%
                String keyword = request.getParameter("keyword");
            %>-->
            <!--<%if(keyword!=null){ %>-->
                <input type="text" name="keyword" value="<%=keyword%>"> <input type="submit" value="검색">
            <!--<%}else{%>-->
                <input type="text" name="keyword" value="닉네임을 입력하세"> <input type="submit" value="검색">
            <!--<%} %>-->
            </div>
            <div id="board">
                
<table id="table1" style="text-align: center;">
	<tr>
		<th>번호</th>
        <th>작성자</th>
	</tr>
    <!--<%for(FreeBoard board : list){%>-->
    <tr>	
        <td class="no"><!--<%=freeboard.getBoardNo()%>-->1</td>
        <td class="writer"><!--<%=freeboard.getPostWriterName()%>--><a href="">이롸롸</a></td>
	</tr>
    <tr>	
        <td class="no"><!--<%=freeboard.getBoardNo()%>-->2</td>
        <td class="writer"><!--<%=freeboard.getPostWriterName()%>--><a href="">박솨솨</a></td>
	</tr>
    <tr>
        <td class="no"><!--<%=freeboard.getBoardNo()%>-->3</td>
        <td class="writer"><!--<%=freeboard.getPostWriterName()%>--><a href="">강돠돠</a></td>
	</tr>
    <tr>
        <td class="no"><!--<%=freeboard.getBoardNo()%>-->4</td>
        <td class="writer"><!--<%=freeboard.getPostWriterName()%>--><a href="">최놔놔</a></td>
	</tr>
<!--<%}%>-->
</table>
            </div>
    </div>
</body>
</html>