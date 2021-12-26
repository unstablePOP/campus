<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#bodyWrap {
	width: 100%;
	height: 1900px;
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

.list>a {
	color: black;
	text-decoration: none;
	font-size: 16px;
}
/* 컨텐츠 영역 1 */
#ContentsAreaWrap {
	width: 100%;
	height: 400px;
}

#noticeWrap {
	float: left;
	width: 45%;
	height: 100%;
}

#noticeBoard {
	
}

#freeWrap {
	float: left;
	width: 45%;
	height: 100%;
	margin-left: 10px;
}

#freeBoard {
	background-color: #fdf7f7;
}

.listBoard {
	padding: 0px;
	margin: 0px;
}

.list {
	list-style: none;
	height: 40px;
	font-size: 18px;
	line-height: 40px;
	border-bottom: 1px solid rgba(220, 220, 220, 1);
	padding: 0px 20px;
}

.list:first-child {
	border-top: 1px solid black;
}

.list:last-child {
	border-bottom: 1px solid black;
}
/* 컨텐츠 영역2 */
#ContentsAreaWrap2 {
	width: 100%;
	height: 470px;
}
/* 컨텐츠 영역3 */
#ContentsAreaWrap3 {
	width: 100%;
	height: 400px;
}

#infoBoard {
	width: 100%;
	height: 310px;
}

.list2 {
	float: left;
	width: 25%;
	height: 100%;
	list-style: none;
	margin: 0px 38px;
}

.infoImgWrap {
	width: 100%;
	height: 80%;
	border: 1px solid black;
}

.infoSubWrap {
	width: 100%;
	height: 20%;
	border: 1px solid black;
}
/* 컨텐츠 영역 4 */
#ContentsAreaWrap4 {
	width: 100%;
	height: 400px;
}
/* fixed bar 영역 */
#fixedBar {
	position: relative;
	left: 1150px;
	top:-1700px;
	border: 1px solid black;
	width: 55px;
	height: 200px;
	display: none;
	border-radius: 10px;
	padding-top: 6px;
}

.fixedbarContentWrap {
	margin-left: 3px;
	widhth: 100%;
	height: 24%;
	padding: 1px;
	border-bottom: 1px solid black;
}

.fixedbarContentWrap img {
	cursor: pointer;
}

.fixedbarContentWrap:last-child {
	border: none;
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
					<li class="list notice">1</li>
					<li class="list notice">2</li>
					<li class="list notice">3</li>
					<li class="list notice">4</li>
					<li class="list notice">5</li>
					<li class="list notice">6</li>
					<li class="list notice">7</li>
					<li class="list notice">8</li>
				</ul>
			</div>
			<div id="freeWrap">
				<h3 style="color: dodgerblue;">자유 게시판</h3>
				<ul class="listBoard" id="freeBoard">
					<li class="list free" id="free1">1</li>
					<li class="list free" id="free2">2</li>
					<li class="list free" id="free3">3</li>
					<li class="list free" id="free4">4</li>
					<li class="list free" id="free5">5</li>
					<li class="list free" id="free6">6</li>
					<li class="list free" id="free7">7</li>
					<li class="list free" id="free8">8</li>
				</ul>
			</div>
		</div>
		<%-- 컨텐츠 영역 2 --%>
		<div id="ContentsAreaWrap2">
			<div>
				<img alt="" src="/main/image/mainlogo/Marry.png">
			</div>
			<div>
			</div>
			<div>
			</div>
		</div>
		<%-- 컨텐츠 영역 3 --%>
		<div id="ContentsAreaWrap3">
			<div id="infoWrap">
				<h3
					style="color: dodgerblue; border-bottom: 1px solid black; width: 1128px;">정보
					게시판</h3>
				<ul class="listBoard" id="infoBoard">
					<li class="list2">
						<div class="infoImgWrap"></div>
						<div class="infoSubWrap"></div>
					</li>
					<li class="list2">
						<div class="infoImgWrap"></div>
						<div class="infoSubWrap"></div>
					</li>
					<li class="list2">
						<div class="infoImgWrap"></div>
						<div class="infoSubWrap"></div>
					</li>
				</ul>
			</div>
		</div>
		<%-- 컨텐츠 영역 4 --%>
		<div id="ContentsAreaWrap4">
			<div id="maketWrap">
				<h3
					style="color: dodgerblue; border-bottom: 1px solid black; width: 1128px;">중고
					장터</h3>
				<ul class="listBoard" id="infoBoard">
					<li class="list2">
						<div class="infoImgWrap"></div>
						<div class="infoSubWrap"></div>
					</li>
					<li class="list2">
						<div class="infoImgWrap"></div>
						<div class="infoSubWrap"></div>
					</li>
					<li class="list2">
						<div class="infoImgWrap"></div>
						<div class="infoSubWrap"></div>
					</li>
				</ul>
			</div>
		</div>
		<%-- fixedBar 영역 --%>
			<div id="fixedBar">
				<div class="fixedbarContentWrap">
					<a href=""><img alt="" src="/main/image/logo/2user.jpg" id="fixedUserIcon"></a>
				</div>
				<div class="fixedbarContentWrap">
					<a href=""><img alt="" src="/main/image/logo/calendar.jpg" id="fixedResevationIcon"></a>
				</div>
				<div class="fixedbarContentWrap">
					<a href=""><img alt="" src="/main/image/logo/2postbox.jpg" id="fixedMessageIcon"></a>
				</div>
				<div class="fixedbarContentWrap">
					<img alt="" src="/main/image/logo/2top.jpg" id="fixedTopIcon">
				</div>
			</div>
	</div>
	<script>
		// 자유게시판 목록 불러오기
		$(function() {
			$.ajax({
				url : "/main/freeDataPull.do",
				dataType : "json",
				success : function(freeList) {
					$.each(freeList, function(index, f) {
						$('.free').eq(index).html(
								"<a href='/community/free/freeboard.jsp?currentPage=1&freeNo='"
										+ f.freeNo + ">" + f.FreeTitle
										+ "<span style='color:#f94b4b;'> ["
										+ f.commentCount + "]</span></a>");
					})
				},
				error : function() {

				}
			});
		});
		// 공지게시판 불러오기
		$(function() {
			$.ajax({
				url : "/main/noticeDataPull.do",
				dataType : "json",
				success : function(noticeList) {
					$.each(noticeList, function(index, n) {
						$('.notice').eq(index).html(
								"<a href='/community/notice/noticeboard.html?currentPage=1&noticeNo='"
										+ n.noticeNo + ">" + n.noticeTitle
										+ "</a>");
					})
				},
				error : function() {

				}
			});
		});
		$(window).scroll(function() {
			if ($(this).scrollTop() > 380) {
				$('#fixedBar').css("display", "block");
				$('#fixedBar').css("top",-2080+$(this).scrollTop()+"px");
			} else {
				$('#fixedBar').css("display", "none");
			}
		});
		$('#fixedTopIcon').click(function(){
			$('html').animate({scrollTop:0}, 400);
			return false;
		});
	</script>
</body>
</html>