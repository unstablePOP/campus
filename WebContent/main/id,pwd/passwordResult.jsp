<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<style>
* {
	box-sizing: border-box;
}

#wrap {
	width: 1250px;
	height: 650px;
	box-sizing: border-box;
	margin: 0px auto;
}

#header-wrap {
	width: 100%;
	height: 100px;
}

#bodyWrap {
	width: 100%;
	height: 450px;
}

#header-1 {
	width: 1250px;
	height: 100px;
	margin: 0 auto;
}

#logoWrap {
	width: 15%;
	height: 100%;
	float: left;
}

#logo {
	margin: 0 auto;
}

#GNB {
	width: 70%;
	height: 100%;
	float: left;
}

#GNB>ul {
	padding: 0px;
	margin: 0px;
	width: 100%;
	height: 100%;
	text-align: center;
}

#GNB>ul>li {
	list-style: none;
	display: block;
	float: left;
	color: black;
	line-height: 100px;
	width: 25%;
	font-size: 24px;
	font-weight: bolder;
}

#GNB>ul>li:hover>a {
	color: skyblue;
}

#GNB>ul>li>a {
	display: block;
	width: 100%;
	height: 100%;
	text-decoration: none;
	color: black;
}

.subBar {
	padding: 0px;
	margin: 0px;
	width: 500px;
	text-align: center;
}

#firstSub {
	margin: 0 50px;
}

#secondSub {
	margin: 0 30px;
}

#thirdSub {
	margin: 0 50px;
}

#fourthSub {
	margin: 0 50px;
}

.subBar>li {
	list-style: none;
	width: 20%;
	height: 50px;
	line-height: 50px;
	font-size: 16px;
	font-weight: bold;
	float: left;
	display: none;
}

.subBar>li>a {
	color: black;
	width: 100%;
	height: 100%;
	text-decoration: none;
	border-radius: 50px;
	display: block;
}

.subBar>li>a:hover {
	background-color: skyblue;
}

#loginWrap {
	width: 15%;
	height: 100%;
	float: right;
}

#loginWrap>a {
	display: block;
	width: 70%;
	height: 100%;
	font-size: 20px;
	text-align: end;
	color: black;
	text-decoration: none;
	margin-left: 60px;
}

/* 알림 Wrap CSS */
#inputAlertWrap {
	width: 100%;
	height: 100px;
	background-color: rgba(220, 220, 220, 0.2);
	border: 1px solid rgba(220, 220, 220, 0.5);
	text-align:center;
	padding-top:17px;
	line-height: 30px;
}

#inputAlertWrap>span {
	font-size: 18px;
}

#mainReplaceWrap{
	text-align:center;
}

#aTagMain{
	text-decoration: none;
	color:dodgerblue;
}
</style>
</head>
<body>
<body>
	<div id="wrap">
		<div id="header-wrap">
			<%@include file="/common/include/gnb.jsp"%>
		</div>
		<div id="bodyWrap">
			<br> <br>
			<%-- 비밀번호 재입력 form --%>
			<h1 align="center">비밀번호 찾기</h1>
				<div id="inputAlertWrap">
					<span>- 가입하셨던 E-mail로 임시 비밀번호를 발송하였습니다.</span><br>
					<span>- 임시 비밀번호로 로그인 후 비밀번호를 바로 수정해주세요.</span>
				</div>
				<br>
				<div id="mainReplaceWrap">
					<a href="/" id="aTagMain">메인 화면으로</a>
				</div>
		</div>
	</div>
	<script>
		
	</script>
</body>
</html>