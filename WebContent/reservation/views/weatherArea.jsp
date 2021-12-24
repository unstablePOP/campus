<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>

</head>
<body>
				<!-- 날씨정보 START -->
					<h2><img class="searchlogo" src='../../reservation/image/main/select5.png'> 날씨정보</h2></a>
					<div id="weatherArea">
						<div class="btn-group" role="group" aria-label="Basic outlined example">
							<button type="button" class="btn btn-outline-secondary" onclick="weather('서울');">서울</button>
							<button type="button" class="btn btn-outline-secondary" onclick="weather('인천');">인천</button>
							<button type="button" class="btn btn-outline-secondary" onclick="weather('춘천');">춘천</button>
							<button type="button" class="btn btn-outline-secondary" onclick="weather('경주');">경주</button>
							<button type="button" class="btn btn-outline-secondary" onclick="weather('전주');">전주</button>
							<button type="button" class="btn btn-outline-secondary" onclick="weather('제주');">제주</button>
						</div>
						
<script>
	function weather(region){
		
		if(!region){
			region = "1835848";
		}
		alert(region);
		var param = {
						"id" : "1835848",
						"appid" : "37a03c805de2c4b05a7b17fc4e292a7c",
						"units" : "metric"
					};
				
		$.ajax({
			type : "GET", 
			url : "http://api.openweathermap.org/data/2.5/forecast",
			data: param,
			success : function(data){
				$("#weatherTable").html("");
				for(var i=8; i<= 24; i++) {
					if(i%8 == 0) {
						var $minTemp = data.list[i].main.temp_min;
						var $maxTemp = data.list[i].main.temp_max;
						var $cDate = data.list[i].dt_txt;
						var $wIcon = data.list[i].weather[0].icon;
		
						var strHtml ='<tr>'
								+'		<td rowspan="3" style="width: 80px; height: 80px; padding-left:15px;">'
								+'			<div class=cicon" id="cicon"><img src="../../reservation/image/weatherIcon/'+ $wIcon +'.png" /></div>'
								+'		</td>'
								+'		<td>'
								+'			<div class="cDate" style="font-size:13pt">일자 : '+ $cDate +'</div>'
								+'		</td>'
								+'	</tr>'
								+'	<tr>'
								+'		<td>'
								+'			<div class="chightemp" style="font-size:13pt">최고온도 : '+ $maxTemp +'</div>'
								+'		</td>'
								+'	</tr>'
								+'	<tr style="border-bottom: 1px solid white;">'
								+'		<td>'
								+'			<div class="clowtemp" style="font-size:13pt">최저온도 : '+ $minTemp +'</div>'
								+'		</td>'
								+'	</tr>';
							
								$("#region").html(region);
								$("#weatherTable").append(strHtml);
							
						}
				} 
			}, 
			error : function(e){
				alert("ERR 발생::"+e);
				
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



</body>
</html>