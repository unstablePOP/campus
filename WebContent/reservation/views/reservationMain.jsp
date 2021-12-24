<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--Jquery 라이브러리 & JqueryUI라이브러리-->
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<!--jQuery UI CSS -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!--부트스트랩 CSS파일 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!--아이콘CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CampUS reservation</title>

<style>
div {
	box-sizing: border-box;
}
#wrapper {
	width: 1250px;
	height: 2000px;
	margin: 0px auto;
}
#header {
	width: 1250px;
	height: 100px;
	margin: 0px auto;
}
#body {
	width: 1250px;
	height: 1800px;
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
	height: 1500px;
}
#leftArea {
	width: 900px;
	height: 1500px;
	float: left;
}
#rightArea {
	width: 350px;
	height: 1500px;
	float: left;
}
#weatherArea {
	width: 350px;
	height: 780px;
	float: left;
	background-color:rgba(220,220,220,0.5);
}
#mapArea {
	width: 350px;
	height: 700px;
	float: left;
}
#serachPanel {
	width: 760px;
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
.searchlogo{
	width:40px;
	height:40px;
	margin-bottom: 10px;
}
.prevnextIcon{
	width:20px;
	height:20px;	
}
.resultArea{
	width:100%;
	height:1500px;	
}

.cicon{
	width:100%;
	height:100%;	
}

.btn btn-outline-secondary{
	width:55px;
	height:50px;
	text-align: center;	
}
.btnArea{
	width:350px;
	height:60px;
	text-align: center;	
}
.climateResult{
	width:350px;
	height:700px;
	background-color: #3e4a56;
	color: white;
}
.morebtn{
	width:350px;
	height:40px;
	background-color: #d4dadc;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;

	
}




</style>
</head>
<!--캠핑장 검색 일정 달력 -->
<script type="text/javascript">
	 $(function() {
		 weather('Seoul');
		 
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
		<%@ include file="/common/include/gnb.jsp" %>
		</div>
		<div id="body">
			<div class="searchArea">
				<form id="serachPanel" mehtod="get">
					<div class="search">
					     <label for="form">어디로 가나요?</label><br>
					     <select name="where" class="form" style="width:150px; height:40px; font-size:20px;">
							<option value="total">전체</option>
							<option value="gp">가평</option>
							<option value="gi">경기/인천</option>
							<option value="gw">강원</option>
							<option value="cc">충청</option>							
							<option value="gs">경상</option>							
							<option value="jl">전라</option>
							<option value="jj">제주</option>
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
					     <button type="submit" class="btn btn-outline-light" style="width:120px;, height:30px; font-size:20px;"><i class="xi-search"></i> 검색</button>
					</div>
				</form>
					
			</div>
			
			<div id="contentArea">
				<div id="leftArea">
					<div class="resultArea">
					<br>
						<h2><img class="searchlogo" src='../../reservation/image/main/select2.png'> 캠핑장 정보</h2>
						
						<table class="table table-striped" style="border:1px solid black; width: 880px; height:100%; ">
							
						<%for(int i=0; i<8; i++){%>
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
				<br>
				
				<!-- 날씨정보 START -->
					<h2><img class="searchlogo" src='../../reservation/image/main/select5.png'> 날씨정보</h2></a>
					<div id="weatherArea">
						<div class="btn-group" role="group" aria-label="Basic outlined example">
							<button  type="button" class="btn btn-outline-secondary" onclick="weather('Seoul');">서울</button>
							<button  type="button" class="btn btn-outline-secondary" onclick="weather('Gapyeong');">가평</button>
							<button  type="button" class="btn btn-outline-secondary" onclick="weather('Busan');">부산</button>
							<button  type="button" class="btn btn-outline-secondary" onclick="weather('Jeju');">제주</button>
							<button  type="button" class="btn btn-outline-secondary" onclick="weather('Daegu');">대구</button>
							<button  type="button" class="btn btn-outline-secondary" onclick="weather('Jeonju');">전주</button>
						</div>
						
						<script>
							function weather(region){
								var param = {
												"q" : region,
												"appid" : "37a03c805de2c4b05a7b17fc4e292a7c",
												"units" : "metric"
											};
										
								$.ajax({
									type : "GET", 
									url : "http://api.openweathermap.org/data/2.5/forecast",
									data: param,
									success : function(data){
										$("#weatherTable").html("");
										for(var i=4; i<= 56; i++) {
											if(i%6 == 0) {
												var $minTemp = data.list[i].main.temp_min;
												var $maxTemp = data.list[i].main.temp_max;
												var $cDate = data.list[i].dt_txt.substring(0,13)+"시";
												var $wIcon = data.list[i].weather[0].icon;
								
												var strHtml ='<tr>'
														+'		<td rowspan="3" style="width: 80px; height: 80px; padding-left:15px;">'
														+'			<div class=cicon" id="cicon"><img src="../../reservation/image/weatherIcon/'+ $wIcon +'.png" /></div>'
														+'		</td>'
														+'		<td>'
														+'			<div class="cDate" style="font-size:13pt; color:yellow; padding-left:26px; ">일자 : '+ $cDate +'</div>'
														+'		</td>'
														+'	</tr>'
														+'	<tr>'
														+'		<td>'
														+'			<div class="chightemp" style="font-size:13pt; padding-left:26px;">최고온도 : '+ $maxTemp + ' ℃'+'</div>'
														+'		</td>'
														+'	</tr>'
														+'	<tr style="border-bottom: 1px solid white;">'
														+'		<td>'
														+'			<div class="clowtemp" style="font-size:13pt; padding-left:26px;">최저온도 : '+ $minTemp + ' ℃'+'</div>'
														+'		</td>'
														+'	</tr>';
													
														$("#region").html(region);
														$("#weatherTable").append(strHtml);
												}
										} 
									}, 
									error : function(e){
										alert("지속적인 문제발생시 고객센터에 문의바랍니다.");
										
									}
								});
							}
						</script>	
						<div class="climateResult">									
							<span style="font-size: 32px;" id="region"></span>
							<table class="weatherTable" id="weatherTable" style="width: 350px; height: 80px;"></table>
						</div>

						<button class="morebtn"> <a style="text-decoration-line: none;" href="https://www.weather.go.kr/w/index.do" ;>더보기</a></button>
					</div>
					<!-- 날씨정보 END -->
					
					<div id="mapArea">

						<br>
						<div>
						<%@ include file="/reservation/views/map.jsp" %>
						</div>
					</div>
		<div id="footer"></div>
	</div>

</body>
</html>