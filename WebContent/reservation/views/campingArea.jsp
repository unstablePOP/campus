<%@page import="com.campus.reservation.model.vo.CampingArea" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>



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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CampUS reservation</title>

<style>
	div{
		box-sizing: border-box;
	}
	#wrapper{
		width: 1250px;
		height: 1350px;
		margin: 0px auto;
	}
	#header{
		width: 1250px;
		height: 100px;
		margin: 0px auto;
		
	}
	#body{
		width: 1250px;
		height: 1000px;
		margin: 0px auto;
		
	}
	#footer{
		width: 1250px;
		height: 100px;
		margin: 0px auto;
    }
	#upSideArea{
		width: 1250px;
		height: 300px;
		margin: 0px auto;
    }
	#downSideArea{
		width: 1250px;
		height: 900px;
		margin: 0px auto;
    }
	#campingArea{
		width: 950px;
		height: 900px;
		margin: 0px auto;
        float: left;
    }
	#campingInfo{
		width: 300px;
		height: 900px;
		margin: 0px auto;
        float: left;
    }
	#campingTitle{
		width: 950px;
		height: 50px;
		margin: 0px auto;
        float: left;
        margin-top: 1px;
    }
	#campingAreaList{
		width: 950px;
		height: 700px;
		margin: 0px auto;
        float: left;
        z-index: 0;
        

    }
	#reservationSelect{
		width: 300px;
		height: 200px;
        float: left;
        
    }
	#campingdetail{
		width: 300px;
		height: 700px;
        float: left;
    }
    .title{
    	width: 920px;
		height: 45px;
		margin: 0px auto;
        float: left;
        text-align: left;
     	background-color: white;
    }
    #serachPanel{
    	width: 300px;
		height: 150px;
		margin: 0px auto;
        float: left;
        text-align : center;
    }
	#reSearch{
	background:#3e4a56;
	color:#fff;
	border:1px solid white;
	position:relative;
	width: 300px;
	height:50px;
	font-size:1.6em;
	padding:0 2em;
	cursor:pointer;
	transition:800ms ease all;
	outline:none;
	}
	#reSearch:hover{
	  background:#fff;
	  color:#3e4a56;
	}
	#reSearch:before,#reSearch:after{
	  content:'';
	  position:absolute;
	  top:0;
	  right:0;
	  height:2px;
	  width:0;
	  background: #3e4a56;
	  transition:400ms ease all;
	}
	#reSearch:after{
	  right:inherit;
	  top:inherit;
	  left:0;
	  bottom:0;
	}
	#reSearch:hover:before,#reSearch:hover:after{
	  width:100%;
	  transition:800ms ease all;
	}
	#detailArea{
	width : 300px;
	height : 700px;
	float: left;
	border: 1px solid black;	
	}
    .btn btn-success btn-sm{
    width : 20px;
    height : 20px;
    }
    #likeBtnImg{
    width : 20px;
    height : 20px;
    }
    .prevnextIcon{
	width:20px;
	height:20px;	
}

.modal{ 
  position:absolute; width:100%; height:100%; background: rgba(255,255,255,0.6); top:0; left:0; display:none;
}

.modal_content{
  width:500px; height:900px;
  background:#fff; border-radius:10px;
  position:relative; top:20%; left:50%;
  margin-top:-100px; margin-left:-200px;
  text-align:center;
  box-sizing:border-box; padding:74px 0;
  line-height:23px; cursor:pointer;
}

.mUpside{
	width : 500px;
	height : 650px;
	background-color: #3e4a56;
	
}
.mImageArea{
	width : 500px;
	height : 250px;
	float: left;
	
}
.mimage{
	width : 500px;
	height : 250px;
	float: left;
	padding-top: 20px;
	
}
.mAreaInfo{
	width : 500px;
	height : 500px;
	float: left;
	background-color:#3e4a56;
}
.mTitle{
	width : 500px;
	height : 50px;
	float: left;
	
}
.summary{
	width : 500px;
	height : 450px;
	background-color: white;
	text-align: left;
}

.mDownside{
	width : 500px;
	height : 50px;
}
.confirm{
	width : 350px;
	height : 50px;
}
.reservCancle{
	width : 150px;
	height : 50px;
}
.reservBtn{
	width : 500px;
	height : 50px;
	background-color: #3e4a56;
	color: white;
	font-weight: bold;
	font-size: 16pt;
}


</style>
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
		         dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],

		         
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
			     dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],

		  });		  	  
		}); 

</script> 
   
   
   
<body>



	<div id="wrapper">
        <div id="header">
		<%@ include file="/common/include/gnb.jsp" %></div>
		<div id="body">
		    <div id="upSideArea" style = "background: url('../../reservation/image/main/2maintop.jpg') no-repeat 50%">;
		    
		    </div>
		    <div id="downSideArea">
		        <div id="campingArea">
		            <div id="campingTitle">
		            	<div class="title">
		            		<h2> <%="사업자명"%> </h2>
		            	</div>

		            </div>
		            <div id="campingAreaList">
		        		<table class="table table-striped" style="border:1px solid gray; width: 920px; height:220px;">
							
							<%for(int i=0; i<1; i++) {%>
							<tr style="border:1px solid gary;">
								<td rowspan="5" style="border:1px solid gray; width: 300px;">						
					
									<img
									src="../../reservation/image/main/sample_camping/default_300_200.jpg"/>
									
								</td>
								<td style="border:1px solid gray;">
								<input class="reservBtn" type="button" value="예약하기"/>
								<button class='likebtn' style='border:0; outline: 0; color:black;'><i class="xi-heart xi-2x"></i></button>
							</tr>
							<tr style="border:1px solid gray;">
								<td style="border:1px solid black;"></td>
							</tr>
							<tr style="border:1px solid gray;">
								<td style="border:1px solid gray;"></td>
							</tr>													
							<tr style="border:1px solid gray;">
								<td style="border:1px solid gray;">기준인원 : 2인 (최대인원: 4인)</td>
							</tr>
							<tr style="border:1px solid gray;">
								<td style="border:1px solid gray;">가격(1박) : 100000 원</td>
							</tr>
							<%} %>
						</table>
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
		        <div id="campingInfo">

                    <div id="reservationSelect">
                   	<form id="serachPanel" mehtod="get">
                    	<button type="submit" id="reSearch"><i class="xi-search"></i> 일정 재 검색</button>
						<br><br>
						<div class="search">
						     <label for="form">일정이 언제에요?</label><br>
						     <input type="text" style="text-align:center" size= 30 id="from" name = "from" readonly/>
						</div>
						<div class="search">
						     <label for="form">언제까지에요?</label><br>
						     <input type="text" style="text-align:center" size= 30 id="to" name = "to" readonly />
						</div>
					</form>
 				 </div>


		            	
                    <div id="campingdetail">
                    	<div id="detailArea">
                    	</div>
                    </div>
		        </div>
		        
		        
		    </div>
		</div>
		<div id="footer"></div>
	</div>
</body>

<div class="modal">
  <div class="modal_content">
  		<div class="mUpside">
			<div class="mImageArea">
				<div class="mimage">
					<img src="../../reservation/image/main/sample_camping/default_300_200.jpg"/>
				</div>
			</div>
			<div class="mAreaInfo">
				<div class="mTitle">
					<h2>00캠핑장</h2>
				</div>
				<div class="summary">
					<form style="font-size : 16pt; left:50px;">
					
						숙소이름 : <br><br>
						체크인 : <br><br>
						체크아웃 : <br><br>
						결제금액 : <br><br>
						예약안내 : <br><br><br>
						
						<input type="checkbox" style="zoom:1.5;"/> 숙소이용규칙 및 취소/환불규정 동의 (필수)<br>
						<input type="checkbox" style="zoom:1.5;"/> 개인정보 수집 및 이용 동의 (필수)<br>
						<input type="checkbox" style="zoom:1.5;"/> 개인정보 제 3자 제공 동의 (필수)<br>
						<input type="checkbox" style="zoom:1.5;"/> 만 14세 이상 확인 (필수)<br>
						
					</form>
				</div>
			</div>
		</div>
		<div class="mDownside">
			<div>
				<button type="submit" class="confirm">결제하기</button><button class="reservCancle">취소</button>
			</div>
		</div>
  </div>
</div>


<script>
$(function(){ 

  $(".reservBtn").click(function(){
    $(".modal").fadeIn();
  });
  
  $(".reservCancle").click(function(){
    $(".modal").fadeOut();
  });
  
});
</script>

<!-- 좋아요 함수 -->
<script>
$(function(){
	$(".likebtn").click(function(){
		
	alert("");
	
	});
});

</script>


</html>