<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#header-wrap {
	width: 100%;
	height: 663px;
}

#header-1 {
	width: 100%;
	height: 100px;
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
	color: white;
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

#loginWrap2 {
	width: 15%;
	height: 100%;
	float: right;
	font-size: 18px;
	padding: 10px;
}

#loginWrap3 {
	width: 15%;
	height: 100%;
	float: right;
	font-size: 18px;
	padding: 10px;
}

#loginWrap2>a {
	color: black;
	text-decoration: none;
}
#loginWrap3>a {
	color: black;
	text-decoration: none;
}

.userIcon:hover>.xi-user-o {
	color: gray;
}

.userIcon:hover {
	color: gray;
}

.notes:hover>.xi-note-o {
	color: gray;
}

.xi-user-o {
	color: black;
}

.xi-note-o {
	color: black;
}

.logout:hover {
	color: gray;
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

#mainLogoWrap {
	width: 100%;
	height: 563px;
}

#mainLogoImg {
	position: absolute;
	left: 0;
	width: 100%;
	height: 563px;
	z-index: -1;
}

#mainReservation {
	width: 100%;
	height: 150px;
	background-image: url(/main/image/mainlogo/stars.png);
	border-radius: 70px;
	margin: -65px 0px;
	padding:50px 0px;
}

#mainReservationSearch {
	width: 100%;
	height: 60px;
	text-align: center;
}

#areaSearch {
	width: 60%;
	height: 50px;
	font-size: 20px;
	border-radius: 10px;
	border-color: skyblue;
	text-align: center;
}

#searchLeaf {
	width: 40px;
	height: 40px;
	position: absolute;
	margin: 5px -50px;
}
</style>
</head>
<body>
<body>
	<div id="header-wrap">
		<div id="header-1">
			<div id="logoWrap">
				<a href=""><img src="/main/image/logo/logo2.png" id="logo"
					alt=""></a>
			</div>
			<div id="GNB">
				<ul>
					<li><a href="/board/notice/listAll.do">Board</a>
						<ul class="subBar" id="firstSub">
<<<<<<< HEAD
							<li><a href="/board/notice/listAll.do">공지사항</a></li>
							<li><a href="/board/free/listAll.do">자유 게시판</a></li>
							<li><a href="/board/info/listAll.do">정보공유</a></li>
							<li><a href="/board/market/listAll.do">중고장터</a></li>
							<li><a href="">통합 채팅</a></li>
=======
						<li><a href="/community/notice/noticeboard.jsp">공지사항</a></li>
						<li><a href="/community/free/freeboard.jsp">자유 게시판</a></li>
						<li><a href="/community/info/infoboard.jsp">정보공유</a></li>
						<li><a href="/community/market/marketboard.jsp">중고장터</a></li>
						<li><a href="">통합 채팅</a></li>
>>>>>>> 689cfbe11c272177dd368f7c333aa1c84d1b5498
						</ul></li>
					<li><a href="/reservation/SelectCampingList.do">Reservation</a>
						<ul class="subBar" id="secondSub">
							<li><a href="/reservation/SelectCampingList.do">캠핑 예약</a></li>
						</ul></li>
					<li><a href="/diary/allView.do">MyPage</a>
						<ul class="subBar" id="thirdSub">
							<li><a href="/userPage/u_main.jsp">내 정보 보기</a></li>
							<li><a href="/diary/allView.do">다이어리</a></li>
						</ul></li>
					<li><a href="/main/service/M_service.jsp">Service</a>
						<ul class="subBar" id="fourthSub">
							<li><a href="/main/service/M_service.jsp">FAQ</a></li>
						</ul></li>
				</ul>
			</div>
		<c:choose>
			<c:when test="${member!=null }">
				<div id="loginWrap2">
					<a href="/userPage/u_main.jsp" class="userIcon"><i class="xi-user-o xi-2x"></i>
						${member.userName }</a>님<br> <a href="" class="notes"><i
						class="xi-note-o xi-2x"></i></a> <a href="/main/logout.do" class="logout">logout</a>
				</div>
			</c:when>
			<c:when test="${business!=null }">
				<div id="loginWrap3">
					<a href="" class="userIcon"><i class="xi-user-o xi-2x"></i>
						${business.businessName }</a>님<br> <a href="" class="notes"><i
						class="xi-note-o xi-2x"></i></a> <a href="/main/logout.do" class="logout">logout</a>
				</div>
			</c:when>
			<c:otherwise>
				<div id="loginWrap">
					<a href="/main/login/M_Login.jsp">login<img
						src="/main/image/logo/2lock.jpg" alt=""></a>
				</div>
			</c:otherwise>
		</c:choose>
		</div>
		<div id="mainLogoWrap">
			<a><img src="/main/image/mainlogo/camper-1845590_1920.jpg" alt=""
				id="mainLogoImg"></a>
		</div>
		<div id="mainReservation">
			<div id="mainReservationSearch">
				<form action="">
					<input type="text" size="30" placeholder="여행하고 싶으신 지역을 입력하세요."
						id="areaSearch" name="areaSearch"> <input type="image"
						src="/main/image/search/searchLeaf.png" id="searchLeaf">
				</form>
			</div>
		</div>
	</div>
	<script>
		$('#GNB>ul>li').hover(function() {
			$(this).children().children().slideToggle(300);
		});
	</script>
</body>
</html>