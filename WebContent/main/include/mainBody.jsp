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
	height: 1800px;
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

#noticeBoard{
	
}

#freeWrap {
	float: left;
	width: 45%;
	height: 100%;
	margin-left: 10px;
}

#freeBoard{
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
/* 컨텐츠 영역2 */
#ContentsAreaWrap2{
	width: 100%;
	height: 470px;
}
/* 컨텐츠 영역3 */
#ContentsAreaWrap3{
	width:100%;
	height:400px;
}
#infoBoard{
	width:100%;
	height:310px;
}
.list2{
	float:left;
	width:25%;
	height:100%;
	list-style:none;
	margin: 0px 38px;
}
.infoImgWrap{
	width:100%;
	height:80%;
	border:1px solid black;

}
.infoSubWrap{
	width:100%;
	height:20%;
	border:1px solid black;
}
/* 컨텐츠 영역 4 */
#ContentsAreaWrap4{
	width:100%;
	height:400px;
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
		<div id="ContentsAreaWrap2">
			<img alt="" src="/main/image/mainlogo/Marry.png">
		</div>
<%-- 컨텐츠 영역 3 --%>
		<div id="ContentsAreaWrap3">
			<div id="infoWrap">
				<h3 style="color:dodgerblue; border-bottom:1px solid black; width:1128px;">정보 게시판</h3>
				<ul class="listBoard" id="infoBoard">
					<li class="list2">
					<div class="infoImgWrap">
					</div>
					<div class="infoSubWrap">
					</div>
					</li>
					<li class="list2">
					<div class="infoImgWrap">
					</div>
					<div class="infoSubWrap">
					</div>
					</li>
					<li class="list2">
					<div class="infoImgWrap">
					</div>
					<div class="infoSubWrap">
					</div>
					</li>
				</ul>
			</div>
		</div>
<%-- 컨텐츠 영역 4 --%>
		<div id="ContentsAreaWrap4">
			<div id="maketWrap">
				<h3 style="color:dodgerblue; border-bottom:1px solid black; width:1128px;">중고 장터</h3>
				<ul class="listBoard" id="infoBoard">
					<li class="list2">
					<div class="infoImgWrap">
					</div>
					<div class="infoSubWrap">
					</div>
					</li>
					<li class="list2">
					<div class="infoImgWrap">
					</div>
					<div class="infoSubWrap">
					</div>
					</li>
					<li class="list2">
					<div class="infoImgWrap">
					</div>
					<div class="infoSubWrap">
					</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<script>
		$(function(){
			$.ajax({
				url:"/main/dataPull.do",
				dataType:"json",
				success:function(){
					
				},
				error:function(){
					
				}
			});
		});
	</script>
</body>
</html>