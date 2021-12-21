<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- jQuery 라이브러리-->
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

    <!-- xeicon -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <title>CAMP : US</title>


    <style>
        * {
            box-sizing: border-box;
        }
        
        #wrap {
            width: 1250px;
            margin: 0px auto;
        }

        #header-wrap {
            z-index: 100;
        }

        #body {
            width: 1250px;
            margin: 0px auto;
        }
        
        .reservation-area {
            width: 1000px;
            height: 400px;
            background-color: #F6F6F6;
            margin: 50px auto 20px;
            z-index: -100;
        }
        

        .img-area {
            width: 400px;
            height: 400px;
            float: left;
        }

        .img-circle {
            width: 300px;
            height: 300px;
            margin: 50px 50px;
            border-radius: 200px;
            text-align: center;
            overflow: hidden;
        }

        .img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            /* 가로 세로는 100% 이미지 중앙으로 맞춰짐, 가로세로를 가득 채울때까지 확대*/
        }

        .reser-area {
            width: 600px;
            height: 400px;
            float: left;
        }

        .reservation {
            width: 500px;
            height: 350px;
            margin-top: 20px;
            margin-left: 50px;
            margin-right: 50px;

        }

        .name {
            width: 500px;
            height: 100px;
            text-align: center;
            padding-top: 20px;
        }

        .name>h3 {
            text-align: center;
            padding-bottom: 5px;
        }

        .res-infor {
            width: 500px;
            height: 250px;
            text-align: center;
            padding-top: 10px;
            
        }

        .res-infor>p {
            text-align: center;
        }

        #footer {
            width: 1250px;
            height: 400px;
            /*background-color: #F6F6F6;
            margin: 20px auto 0;*/
        }
        
        #fixed-bar{
             width: 55px;
            height: 290px;
            position: fixed;
            top: 250px;
            right: 0px;
            border-radius: 10px;
            padding: 25px 2.5px 25px 2.5px;
            opacity: 0.5;
            border: 5px solid #D5D5D5;
        }
        #fixed-bar>a{
            width: 40px;
            height: 50px;
            color: gray;
            float: left;
            margin: 0 auto;
            text-align: center;
        }
        #fixed-bar>a:hover{
            color: #D5D5D5;
        }
         #fixed-bar-move{
            width: 55px;
            height: 20px;
            position: fixed; 
            top:540px; 
            right:0px;
            opacity: 0.5;
            padding-top: 2px;
        }
        #fixed-bar-move>a{
            width: 25px;
            height: 25px;
            background-color: #D5D5D5;
            color: white;
            float: left;
            text-align: center;
            border-radius: 5px;
            margin: 1px;
            padding-top: 5px;
        }
        #fixed-bar-move>a:hover{
            color: gray;
        }

    </style>
</head>

<body>
    <div id="wrap">
       <a name="top"></a>
        <div class="header-wrap">
            <%@ include file="include/u_gnb.jsp" %>
        </div>
        
        

		<c:choose>
			<c:when test="${member==null }">
				<script>
					location.replace('/main/login/M_Login.jsp');
				</script>
			</c:when>
			
			<c:otherwise>

        
        <div id="body">
            <div class="reservation-area" >
                <div class="img-area">
                    <div class="img-circle">
                        <img src="image/test/캠핑카.jpg" class="img">
                    </div>
                </div>
                <div class="reser-area">
                    <div class="reservation">
                        <div class="name">
                            <h3> 내손자바 캠핑장 | A 구역 </h3>
                            <hr>
                        </div>
                        <div class="res-infor">
                            <p>2021.12.25(토) ~ 2021.12.26(일)</p>
                            <p>체크인 15:00 | 체크아웃 13:00 </p>
                            <p>예약자 명 : 홍길동</p>
                            <p>예약 번호 : 123454657</p>
                            <p>강원도 어쩌구 저쩌구 abc</p>
                        </div>

                    </div>
                </div>

            </div>
            <div class="reservation-area">
                <div class="img-area">
                    <div class="img-circle">
                        <img src="image/test/캠핑카.jpg" class="img">
                    </div>
                </div>
                <div class="reser-area">
                    <div class="reservation">
                        <div class="name">
                            <h3> 내손자바 캠핑장 | A 구역 </h3>
                            <hr>
                        </div>
                        <div class="res-infor">
                            <p>2021.12.25(토) ~ 2021.12.26(일)</p>
                            <p>체크인 15:00 | 체크아웃 13:00 </p>
                            <p>예약자 명 : 홍길동</p>
                            <p>예약 번호 : 123454657</p>
                            <p>강원도 어쩌구 저쩌구 abc</p>
                        </div>

                    </div>
                </div>

            </div>


        </div>
        <div id="footer">

        </div>
        <div id="fixed-bar">
            <a href="u_main.jsp"><i class="xi-bars xi-2x"></i></a>
            <a href="u_reservation.jsp"><i class="xi-calendar-check xi-2x"></i></a>
            <a href="u_like.jsp"><i class="xi-heart-o xi-2x"></i></a>
            <a href=""><i class="xi-note-o xi-2x"></i></a>
            <a href="u_information.jsp"><i class="xi-user-o xi-2x"></i></a>
        </div>
        <div id="fixed-bar-move">
        	<a href="#top"><i class="xi-angle-up"></i></a>
        	<a href="#bottom"><i class="xi-angle-down"></i></a>
        </div>
        <a name="bottom"></a>



    </div>
    
    


	</c:otherwise>
			
			
	</c:choose>
		
</body>

</html>
