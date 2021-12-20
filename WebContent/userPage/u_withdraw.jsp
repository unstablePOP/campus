<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>CAMP : US</title>


    <!-- jQuery 라이브러리-->
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>

    <!-- xeicon -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

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

        #draw-wrap {
            width: 1000px;
            height: 650px;
            margin: 60px auto;
            padding-top: 30px;
            border: 1px solid #EAEAEA;
            border-radius: 20px;

        }

        #title {
            width: 250px;
            height: 50px;
            font-size: 25px;
            color: #4C4C4C;
            text-align: center;
            margin: 10px auto;
        }

        .notice {
            width: 800px;
            height: 30px;
            font-size: 15px;
            color: #4C4C4C;
            text-align: center;
            margin: 0 auto;
            line-height: 30px;
        }
        
        #check-wrap{
            width: 600px;
            margin: 20px auto;
            
        }

        #check-title {
            display: inline-block;
            font-size: 20px;
            color: #5D5D5D;
            margin: 0 0 20px 15px;

        }

        table {
            width: 100%;
            border-top: 1px solid #EAEAEA;
            border-collapse: collapse;

        }

        th,
        td {
            border-bottom: 1px solid #EAEAEA;
            padding: 20px;
            color: #5D5D5D;
        }

        .form-div {
            display: inline;
            color: #747474;
        }

        td>input {
            height: 30px;
            border: 1px solid #D5D5D5;
            border-radius: 3px;
        }
        #btn {
            width: 400px;
            height: 100px;
            text-align: center;
            margin: 0 auto;
            line-height: 100px;
        }

        #btn>input {
            width: 100px;
            height: 50px;
            background-color: white;
            color: #5D5D5D;
            border-radius: 20px;
            border: 1px solid #D5D5D5;
            margin-top: 25px;
        }
        #btn>input:hover{
            background-color: #A6A6A6;
            color: white;
            
        }

    </style>
</head>

<body>
    <div id="wrap">
        <div id="header-wrap">
            <%@ include file="include/u_gnb.html" %>
        </div>

        <div id="body">

            <div id="draw-wrap">

                <div id="title">CAMP:US 탈퇴 안내</div>
                <div class="notice">회원 탈퇴 시 모든 정보가 삭제되며, 되돌릴 수 없음을 알려드립니다.</div>
                <div class="notice">정보 보호를 위해 비밀번호를 다시 한번 입력해 주세요.</div>
                <br>
                <hr>
                <br>
                <div id="check-wrap">
                    <div id="check-title">profile check</div>
                    <table>
                        <tr>
                            <td>
                                <div class="form-div">아이디</div>
                            </td>
                            <td>
                                <input type="text" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-div">이름</div>
                            </td>
                            <td>
                                <input type="text" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="form-div">비밀번호</div>

                            </td>
                            <td>
                                <input type="password" id="pass">
                            </td>
                        </tr>
                    </table>
                </div>
				<div id="btn">
					<input type="submit" value="회원 탈퇴">
				</div>

            </div>



        </div>
    </div>
</body>

</html>
