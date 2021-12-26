<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#serviceLogoWrap {
	width: 100%;
	height: 519px;
	margin-bottom: 30px;
}

#serviceLogoWrap>img {
	width: 100%;
	height: 519px;
	position: absolute;
	left: 0;
	z-index: -1;
}

#myService {
	width: 130px;
	height: 60px;
	border: 1px solid black;
	position: relative;
	left: 1080px;
	top: 30px;
	background-color: rgba(0, 0, 0, 0.6);
	text-align: center;
	line-height: 60px;
	border-radius: 10px;
}

#myService>a {
	text-decoration: none;
	color: white;
}

#helpSearchWrap {
	width: 100%;
	height: 150px;
	position: relative;
	margin: 150px auto;
	font-size: 24px;
	background-color: rgba(0, 0, 0, 0.6);
	padding: 50px 280px;
}

#helpSearchWrap>span {
	position: relative;
	font-weight: bolder;
	color: white;
	top: 5px;
}

#helpSeachBar {
	display: inline-block;
	width: 500px;
	height: 45px;
	border-radius: 10px;
	position: relative;
	font-size: 16px;
}

#helpSearchWrap>img {
	position: relative;
	width: 30px;
	height: 30px;
	top: 10px;
	right: 50px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div id="serviceLogoWrap">
		<img src="/main/image/mainlogo/creux-du-van-2839124_1920.jpg" alt="">
		<div id="myService">
			<a href="/main/serviceList.do">내 문의 내역 ></a>
		</div>
		<div id="helpSearchWrap">
			<span>도움말 검색</span> <input type="text" id="helpSeachBar"
				placeholder="검색어를 입력하세요."> <img
				src="/main/image/search/searchLeaf.png" alt="">
		</div>
	</div>
</body>
</html>