<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#bodyWrap {
	border: 1px solid black;
	width: 100%;
	height: 2000px;
}

#bodyLogoWrap {
	width: 100%;
	height: 120px;
}

#bodyLogoWrap>img {
	position: absolute;
	left: 0;
	z-index: -1;
	width: 100%;
	height: 563px;
}

#ContentsAreaWrap {
	width: 100%;
	height: 400px;
	border: 1px solid black;
}

#noticeWrap {
	border: 1px solid black;
	float: left;
	width: 45%;
	height: 100%;
}

#noticeBoard{
	
}

#freeWrap {
	border: 1px solid black;
	float: left;
	width: 45%;
	height: 100%;
	margin-left: 10px;
}

#freeBoard{
	background-color: pink;
}

.listBoard {
	padding: 0px;
	margin: 0px;
}

.list {
	list-style: none;
	height: 40px;
	font-size: 18px;
	line-height:40px;
	border-bottom: 1px solid rgba(220, 220, 220, 1);
	padding:0px 20px;
}

.list:first-child {
	border-top:1px solid black;	
}
.list:last-child{
	border-bottom:1px solid black;
}
</style>
</head>
<body>
	<div id="bodyWrap">
		<div id="bodyLogoWrap"></div>
<%-- 컨텐츠 영역1 (공지, 자유) --%>
		<div id="ContentsAreaWrap">
			<div id="noticeWrap">
				<h3>소식 게시판</h3>
				<ul class="listBoard" id="noticeBoard">
					<li class="list">1</li>
					<li class="list">2</li>
					<li class="list">3</li>
					<li class="list">4</li>
					<li class="list">5</li>
					<li class="list">6</li>
					<li class="list">7</li>
					<li class="list">8</li>
				</ul>
			</div>
			<div id="freeWrap">
				<h3 style="color:dodgerblue;">자유 게시판</h3>
				<ul class="listBoard" id="freeBoard">
					<li class="list">1</li>
					<li class="list">2</li>
					<li class="list">3</li>
					<li class="list">4</li>
					<li class="list">5</li>
					<li class="list">6</li>
					<li class="list">7</li>
					<li class="list">8</li>
				</ul>
			</div>
		</div>
<%-- 컨텐츠 영역 2 --%>
		<div>
		
		</div>
	</div>
</body>
</html>