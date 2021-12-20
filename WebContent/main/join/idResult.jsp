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
            height: 650px;
            box-sizing: border-box;
            margin: 0px auto;
        }

        #header-wrap {
            width: 100%;
            height: 100px;
        }

        #bodyWrap {
            width: 100%;
            height: 450px;
        }


        /* 알림 Wrap CSS */
        #inputAlertWrap {
            widows: 100%;
            height: 100px;
            text-align: center;
            line-height: 100px;
            background-color: rgba(220, 220, 220, 0.2);
        }
        #inputAlertWrap>span{
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
            <h1 align="center">아이디 찾기</h1>
            <br>
            <br>
            <br>
            <br>
            <div id="inputAlertWrap">
                <span>
                    - 회원님께서 가입하신 아이디는 [<span> </span>]입니다.
                </span>
                <br>
            </div>
            <br><br>
        </div>
    </div>
    <script>
        
    </script>
</body>
</html>