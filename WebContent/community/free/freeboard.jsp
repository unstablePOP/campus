<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <style>
        *{box-sizing: border-box;}
        #wrap{
            width: 1250px;
            margin: 0px auto;
        }
        #header-wrap {
            width: 1250px;
            height: 100px;
            margin: 0 auto;
        }
        #contents {
            width: 1250px;
            padding:50px;
            margin: 0 auto;
        }
        #where{
            width:80%;
            height:100px;
            margin:0px auto;
            padding-top:30px;
            font-size: 30px;
            color:darkblue;
            font-weight:700;
        }
        #board{
            width:80%;
            margin:0px auto;
        }
        table{
            width:100%;
            border:1px solid black;
            border-spacing: 0px;
            font-size: 14px;
        }
        th{
            height:35px;
            color:darkblue;
        }
        td{
            height:28px;
            border-top:1px solid black;
        }
        .title{width:60%;border-left:1px solid black;}
        .comment{width:60px; border-left:1px solid black;}
        .like{width:60px;}
        #footer {
            width: 1250px;
            height: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div id="wrap">
        <div id="header-wrap">
            <%@include file="/common/include/gnb.html" %>
        </div>
        <div id="contents">
            <div id="where">&nbsp&nbsp&nbsp&nbsp 자유게시판</div>
            <div id="board">
                <table style="text-align: center;">
		<tr>
			<th>번호</th>
            <th>작성자</th>
			<th>제목</th>
            <th>댓글</th>
			<th>추천</th>
			<th>작성일</th>
		</tr>
		
        <tr>	
            <td class="no">g</td>
            <td class="writer">g</td>
			<td class="title">gg</td>
            <td class="comment">baby</td>
            <td class="like">baby</td>
			<td class="date">baby</td>
		</tr>
	</table>
            </div>
        </div>
        <div id="footer">
        </div>
    </div>
</body>
</html>