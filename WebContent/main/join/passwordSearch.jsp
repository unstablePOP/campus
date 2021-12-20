<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <style>
        * {
            box-sizing: border-box;
        }

        #wrap {
            width: 1250px;
            height: 950px;
            box-sizing: border-box;
            margin: 0px auto;
        }

        #header-wrap {
            width: 100%;
            height: 100px;
        }

        #bodyWrap {
            width: 100%;
            height: 650px;
        }


        /* 알림 Wrap CSS */
        #inputAlertWrap {
            widows: 100%;
            height: 100px;
            text-align: center;
            line-height: 50px;
            background-color: rgba(220, 220, 220, 0.2);
        }

        /* login Wrap */
        #mainLoginWrap {
            border: 1px solid grey;
            width: 70%;
            height: 300px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            background-color: rgba(220, 220, 220, 0.5);
            margin: 0 auto;
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
        .inputId{
            width: 80%;
            height: 40px;
            margin-top:40px;
            font-size:18px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
           	border-style: solid;
           	text-align:center;
        }
        .inputPwd{
            width: 80%;
            height: 40px;
            font-size:18px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            border-style: solid;
            text-align:center;
        }
        .inputSm {
            width: 80%;
            height: 50px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <div id="wrap">
        <div id="header-wrap">
			<%@include file="/common/include/gnb.html" %>
        </div>
        <div id="bodyWrap">
            <br>
            <br>
            <h1 align="center">비밀번호 찾기</h1>
<%-- 알림 부분 --%>
            <div id="inputAlertWrap">
                <span>
                    - 해당하는 <span style="color: dodgerblue">회원 분류</span>를 선택해주세요.
                </span>
                <br>
                <span>
                    - 회원가입시 입력하셨던 <span style="color: dodgerblue">ID</span>와 <span style="color: dodgerblue">E-mail</span> 주소를 입력해주세요.
                </span>
            </div>
            <br><br>
            <div id="mainLoginWrap">
<%-- 회원 분류 선택 --%>
                <div id="loginSelectWrap_user">
                    <ul id="userSelUl">
                        <li><img src="../image/login/2key-resize.png" alt="" align="top"> 일반 사용자</li>
                        <li><img src="../image/login/2team-resize.png" alt="" align="top"> 사업자</li>
                    </ul>
                    <ul id="businessSelUl">
                        <li><img src="../image/login/2key-resize.png" alt="" align="top"> 일반 사용자</li>
                        <li><img src="../image/login/2team-resize.png" alt="" align="top"> 사업자</li>
                    </ul>
                </div>
<%-- 인증 입력 form --%>
                <div id="userLoginFormWrap">
                    <form action="/main/join/passwordCertified.jsp">
                        <input type="text" class="inputId" placeholder="ID를 입력해주세요.">
                        <input type="text" class="inputPwd" placeholder="E-mail 주소를 입력해주세요."><br><br>
                        <input type="submit" class="inputSm" value="인증 번호 발송">
                    </form>
                </div>
                <div id="businessLoginFormWrap">
                    <form action="/main/join/passwordCertified.jsp">
                        <input type="text" class="inputId" placeholder="사업자 ID를 입력해주세요.">
                        <input type="text" class="inputPwd" placeholder="사업자 E-mail 주소를 입력해주세요."><br><br>
                        <input type="submit" class="inputSm" value="인증 번호 발송">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        $("input[type=text]").keydown(function() {
            if (event.keyCode === 13) {
                event.preventDefault();
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
        })
    </script>

</body>
</html>