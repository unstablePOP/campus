<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!--Jquery 라이브러리 & JqueryUI라이브러리-->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<!--jQuery UI CSS -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!--부트스트랩 CSS파일 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CampUS reservation</title>

<style>
div {
	box-sizing: border-box;
}
#wrapper {
	width: 1250px;
	height: 1400px;
	margin: 0px auto;
}
#header {
	width: 1250px;
	height: 100px;
	margin: 0px auto;
}
#body {
	width: 1250px;
	height: 1200px;
	margin: 0px auto;
}
#footer {
	width: 1250px;
	height: 100px;
	margin: 0px auto;
}
.searchArea {
	width: 1250px;
	height: 300PX;
	background: url('../../reservation/image/main/maintop.jpg') no-repeat 50%;
	background-size: cover;
}
#contentArea {
	width: 1250px;
	height: 900px;
}
#leftArea {
	width: 900px;
	height: 900px;
	float: left;
}
#rightArea {
	width: 350px;
	height: 900px;
	float: left;
}
#weatherArea {
	width: 350px;
	height: 450px;
	float: left;
	background-color:rgba(220,220,220,0.5);
}
#mapArea {
	width: 350px;
	height: 450px;
	float: left;
}
#serachPanel {
	width: 720px;
	height: 100px;
	color: white;
	background-color: rgba(220,220,220,0.2);
	text-align:center;
	font-size: 20px;
	overflow: hidden;
	position: relative;
	left: 20%;
	top: 40%;
	border: 1px solid black;
}
.search {
	width: 200px;
	height: 100%;
	font-size: 22px;
	float: left;
}
#from, #to {
	height: 40px;
	font-size: 25px;
}
#searchlogo{
	width:40px;
	height:40px;
	margin-bottom: 10px;
}
.prevnextIcon{
	width:20px;
	height:20px;	
}

</style>
</head>
<script type="text/javascript">
	 $(function() {
		  $( "#from" ).datepicker({
		         changeMonth: true, 
		         changeYear: true,
		         nextText: '다음 달',
		         prevText: '이전 달',
		         dateFormat: 'yy-mm-dd',
		         monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		         monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		         dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		         dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
		  });
		  $( "#to" ).datepicker({
		         changeMonth: true, 
		         changeYear: true,
		         nextText: '다음 달',
		         prevText: '이전 달',
		         dateFormat: 'yy-mm-dd',
			     monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			     monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			     dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			     dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			     dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
		  });
		}); 	 
</script>

<body>
	<div id="wrapper">
		<div id="header">
		<%@ include file="/common/include/gnb.html" %>
		</div>
		<div id="body">
			<div class="searchArea">
				<form id="serachPanel" mehtod="get">
					<div class="search">
					     <label for="form">어디로 가나요?</label><br>
					     <select name="where" class="form" style="width:150px; height:40px; font-size:20px;">
							<option value="seoul">서울</option>
							<option value="gyeonggi">경기도</option>
							<option value="gangwon">강원도</option>
							<option value="chungcheongbuk">충청북도</option>
							<option value="chungcheongnam">충청남도</option>							
							<option value="jeollabuk">전라북도</option>							
							<option value="jeollanam">전라남도</option>
							<option value="gyeongsangbuk">경상북도</option>
							<option value="gyeongsangnam">경상남도</option>
							<option value="jeju">제주도</option>
						</select>
					</div>
					<div class="search">
					     <label for="form">일정이 언제에요?</label><br>
					     <input type="text" id="from" style="text-align:center" name = "from" size="12" readonly />

					</div>
					<div class="search">
					     <label for="form">언제까지에요?</label><br>
					     <input type="text" id="to" style="text-align:center" name = "to" size="12" readonly />
					</div>
					<br>
					<div id="searchBTN">
					     <button type="submit" class="btn btn-outline-light" style="width:100px;, height:30px; font-size:20px; ">검색</button>
					</div>
				</form>
					
			</div>
			
			<div id="contentArea">
				<div id="leftArea">
					<div id="resultArea">
					<br>
						<h2><img id="searchlogo" src='../../reservation/image/main/select2.png'> 캠핑장 정보</h2>
						
						<table class="table table-striped" style="border:1px solid black; width: 880px; height:100%; ">
							
						<%for(int i=0; i<5; i++){%>
							<tr style="border:1px solid black;">
													
								<td rowspan="3" style="border:1px solid black; width: 300px; height: 200px;">
								
								
								<a href ="./campingArea.jsp">상세페이지</a>
								
								<img
									src="../../reservation/image/main/sample_camping/default_300_200.jpg"/>
									
								
								</td>
								<td style="border:1px solid black;">태그</td>
							</tr>
							<tr style="border:1px solid black;">
								<td style="border:1px solid black;">캠핑장명</td>
							</tr>
							<tr style="border:1px solid black;">
								<td style="border:1px solid black;">주소</td>
							</tr>
							 
							 <%}%>
							
						</table>
						<br>
				<div class="board_list_paging" style="text-align:center; ">
					<img src="../../reservation/image/main/preIcon.png" class="prevnextIcon" alt="이전"> 
					   <span class="num">               
					     <a href="" class="on">1</a>
					     <a href="">2</a>
					     <a href="">3</a> 
					     <a href="">4</a> 
					     <a href="">5</a>
					    </span>                        
					    <a href="" class="next">
					    <img src="../../reservation/image/main/nextIcon.png" class="prevnextIcon"" alt="다음"></a>
			</div>
					</div>
				</div>
				<div id="rightArea">
					<div id="weatherArea" style="border:1px solid black;">
					<h2>날씨영역
						<button id="nameBtn">버튼</button>
						<script>
							$(function(){
		
								//서블릿을 호출하여 String 값을 전달 함
								$.ajax({
									url : "http://api.openweathermap.org/data/2.5/forecast?q=Seoul&appid=37a03c805de2c4b05a7b17fc4e292a7c",
									type : "get",					
									success : function(data){
											/* console.log(resp);
										console.log("현재온도 : "+(resp.main.temp- 273.15));
										console.log("현재습도 : "+resp.main.humity);
										console.log("날씨 : "+ resp.weather[0].main);
										console.log("날씨 이미지 : "+resp.weather[0].icon);
										console.log("도시이름 : "+resp.name);
*/
										
										
									},
									error : function(){
										console.log("서버 전송 실패");
									},
								});
							});
						</script>
					</h2>
					</div>
					<div id="mapArea">
						<%@ include file="/reservation/views/map.jsp" %>
					</div>
		<div id="footer"></div>
	</div>

</body>
</html>