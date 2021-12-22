<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}
/* 전체 Wrap */
#AllWrap {
	width: 500px;
	height: 600px;
	margin: 100px auto;
}
/* logo Wrap */
#logoWrap {
	width: 100%;
	height: 150px;
	padding: 10px;
	text-align: center;
}
/* login Wrap */
#mainLoginWrap {
	border: 1px solid grey;
	width: 100%;
	height: 300px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	background-color: rgba(220, 220, 220, 0.5);
}

#userLoginWrap {
	width: 100%;
	height: 100%;
}

#loginSelectWrap_user {
	width: 100%;
	height: 70px
}

/* 변환 전체 CSS */
#userSelUl {
	widows: 100%;
	height: 100%;
	margin: -1px;
	padding: 0px;
}

#businessSelUl {
	widows: 100%;
	height: 100%;
	margin: -1px;
	padding: 0px;
	display: none;
}

#userSelUl>li {
	border: 1px solid grey;
	list-style: none;
	float: left;
	width: 50%;
	height: 100%;
	text-align: center;
	font-size: 25px;
	padding: 11px;
}

#businessSelUl>li {
	border: 1px solid grey;
	list-style: none;
	float: left;
	width: 50%;
	height: 100%;
	text-align: center;
	font-size: 25px;
	padding: 11px;
}

#userSelUl>li:first-child {
	border-top-left-radius: 10px;
	border-bottom: none;
	border-top-right-radius: 10px;
	background-color: white;
}

#businessSelUl>li:last-child {
	border-top-left-radius: 10px;
	border-bottom: none;
	border-top-right-radius: 10px;
	background-color: white;
}

#userSelUl>li:last-child {
	border-top-right-radius: 10px;
	border-left: none;
	cursor: pointer;
}

#businessSelUl>li:first-child {
	border-top-left-radius: 10px;
	border-right: none;
	cursor: pointer;
}

#userLoginFormWrap {
	width: 100%;
	height: 229px;
	border-top: none;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	background-color: white;
	text-align: center;
	display: block;
}

#businessLoginFormWrap {
	width: 100%;
	height: 229px;
	border-top: none;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	background-color: white;
	text-align: center;
	display: none;
}
/* input Class CSS */
.inputId {
	width: 80%;
	height: 40px;
	margin-top: 40px;
	font-size: 18px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-style: solid;
	text-align: center;
}

.inputPwd {
	width: 80%;
	height: 40px;
	font-size: 18px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	border-style: solid;
	text-align: center;
}

.inputSm {
	width: 80%;
	height: 50px;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	font-size: 20px;
}

/* SubWrap CSS */
#loginSubWrap {
	border: 1px solid red;
	width: 100%;
	height: 55px;
	text-align: center;
}

#loginSub {
	width: 100%;
	height: 100%;
	padding: 15px 91px;
	margin: 0px;
	text-align: center;
}

#loginSub>li {
	list-style: none;
	float: left;
	margin: 0px;
	padding: 0px;
}

#loginSub>li>a {
	color: black;
	text-decoration: none;
	font-size: 16px;
}

#loginSub>li:before {
	content: "│";
	display: inline-block;
}

#loginSub>li:last-child:after {
	content: "│";
	display: inline-block;
}
/* 사업자 회원 가입 */
#businessJoinWrap {
	width: 200px;
	height: 30px;
	margin: 0 auto;
}

#businessJoinWrap>a {
	font-size: 16px;
	color: black;
	text-decoration: none;
}
/* api 로그인 영역 CSS */
#apiLoginWrap {
	border: 1px solid blue;
	width: 100%;
	height: 100px;
}
</style>
</head>
<body>
	<c:if test="${member!=null }">
		<script>
			alert("비정상적인 접근입니다. 로그아웃후 이용해주세요.");
			location.replace("/");
		</script>
	</c:if>
	<c:if test="${business!=null }">
		<script>
			alert("비정상적인 접근입니다. 로그아웃후 이용해주세요.");
			location.replace("/");
		</script>
	</c:if>

	<div id="AllWrap">
		<div id="logoWrap">
			<a href="/"><img src="../image/logo/logo.png" alt=""></a>
		</div>
<%-- Main 부분 --%>
		<div id="mainLoginWrap">
			<div id="userLoginWrap">
				<div id="loginSelectWrap_user">
					<ul id="userSelUl">
						<li><img src="../image/login/2key-resize.png" alt=""
							align="top"> 일반 사용자</li>
						<li><img src="../image/login/2team-resize.png" alt=""
							align="top"> 사업자</li>
					</ul>
					<ul id="businessSelUl">
						<li><img src="../image/login/2key-resize.png" alt=""
							align="top"> 일반 사용자</li>
						<li><img src="../image/login/2team-resize.png" alt=""
							align="top"> 사업자</li>
					</ul>
				</div>
				<div id="userLoginFormWrap">
<%-- user Login --%>
					<form action="/main/login.do" method="post">
						<input type="text" class="inputId" name="userId"
							placeholder="아이디를 입력해주세요."><br> <input
							type="password" class="inputPwd" name="userPwd"
							placeholder="비밀번호를 입력해주세요."><br>
						<br> <input type="submit" class="inputSm" value="로 그 인">
					</form>
				</div>
				<div id="businessLoginFormWrap">
<%-- business Login --%>
					<form action="/main/loginBusiness.do" method="post">
						<input type="text" class="inputId" name="businessId" placeholder="사업자 아이디를 입력해주세요."><br>
						<input type="password" name="businessPwd" class="inputPwd"
							placeholder="사업자 비밀번호를 입력해주세요."><br>
						<br> <input type="submit" class="inputSm" value="로 그 인">
					</form>
				</div>
			</div>
		</div>
		<%-- Sub 부분 --%>
		<div id=loginSubWrap>
			<ul id=loginSub>
				<li><a href="/main/id,pwd/passwordSearch.jsp">비밀번호 찾기</a></li>
				<li><a href="/main/id,pwd/idSearch.jsp">아이디 찾기</a></li>
				<li><a href="/main/join/joinTerms.jsp">회원가입</a></li>
			</ul>
		</div>
		<%-- 사업자 회원 가입 --%>
		<div id="businessJoinWrap" align="center">
			<a href="/main/join/joinTermsBusiness.jsp">│ 사업자 회원 가입 │</a>
		</div>
		<%-- api 로그인 부분 --%>
		<div id=apiLoginWrap>api login 임시공간</div>
	</div>

	<%-- script 부분 --%>
	<script>
		$("input[type=text]").keydown(
				function() {
					if (event.keyCode === 13) {
						event.preventDefault();
						var inputs = $(this).parents("form").find(
								"input[type=password]");
						inputs.focus();
					}
				});
		$("#userSelUl>li:last-child").click(function() {
			$("#userSelUl").css("display", "none");
			$("#userLoginFormWrap").css("display", "none");
			$("#businessSelUl").css("display", "block");
			$("#businessLoginFormWrap").css("display", "block");
		});
		$("#businessSelUl>li:first-child").click(function() {
			$("#userSelUl").css("display", "block");
			$("#userLoginFormWrap").css("display", "block");
			$("#businessSelUl").css("display", "none");
			$("#businessLoginFormWrap").css("display", "none");
		});
	</script>
</body>
</html>