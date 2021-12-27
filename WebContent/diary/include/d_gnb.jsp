<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
        * {
            box-sizing: border-box;
        }

        #header-1 {
            width: 100%;
            height: 40px;
            margin: 0 auto;
            background-color: white;
            opacity:0.8;
        }

        #logoWrap {
            width: 15%;
            height: 100%;
            float: left;
        }
        #logoWrap>a{
            display: block;
            color: black;
            line-height: 40px;
            width: 100%;
            font-size: 15px;
            font-weight: bolder;
            text-align: center;
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
            line-height: 40px;
            width: 25%;
            font-size: 15px;
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
            width: 18%;
            height: 30px;
            line-height: 30px;
            font-size: 13px;
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
            height: 100%;
            text-decoration: none;
            
            display: block;
            color: black;
            line-height: 40px;
            width: 100%;
            font-size: 15px;
            text-align: center;
        }
    </style>
</head>
<body>
	
            <div id="header-1">
                <div id="logoWrap">
                    <a href="/">CAMP : US</a>
                </div>
                <div id="GNB">
                    <ul>
                        <li><a href="/community/community_index.jsp">Board</a>
                            <ul class="subBar" id="firstSub">
                                <li><a href="/community/notice/noticeboard.jsp">공지사항</a></li>
                                <li><a href="/community/free/freeboard.jsp">자유 게시판</a></li>
                                <li><a href="/community/info/infoboard.jsp">정보공유</a></li>
                                <li><a href="/community/market/marketboard.jsp">중고장터</a></li>
                                <li><a href="">통합 채팅</a></li>
                            </ul>
                        </li>
                        <li><a href="/reservation/SelectCampingList.do">Reservation</a>
                            <ul class="subBar" id="secondSub">
                                <li><a href="/reservation/SelectCampingList.do">캠핑 예약</a></li>
                            </ul>
                        </li>
                        <li><a href="/diary/allView.do">MyPage</a>
                            <ul class="subBar" id="thirdSub">
                                <li><a href="/userPage/u_main.jsp">내 정보 보기</a></li>
                                <li><a href="/diary/allView.do">다이어리</a></li>
                            </ul>
                        </li>
                        <li><a href="/main/service/M_service.jsp">Service</a>
                            <ul class="subBar" id="fourthSub">
                                <li>
                                    <a href="/main/service/M_service.jsp">FAQ</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div id="loginWrap">
                
                	<c:choose>
                		<c:when test="${member!=null }">
                			<a href="/userPage/u_main.jsp" class="userIcon">${member.userName } 님 </a>
                    	</c:when>
                    	<c:otherwise>
                    		<a href="/main/login/M_Login.jsp">login</a>
                    	</c:otherwise>
                    </c:choose>
                </div>
            </div>
    <script>
        $('#GNB>ul>li').hover(function(){
            $(this).children().children().slideToggle(300);
        })
    </script>
</body>
</html>