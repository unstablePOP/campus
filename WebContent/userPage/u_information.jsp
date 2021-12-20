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

        #infor-area {
            width: 1200px;
            margin: 50px auto 0;

        }

        #title {
            font-size: 23px;
            color: #5D5D5D;
            width: 180px;
            height: 50px;
            margin: 10px auto;
            text-align: center;
        }

        #subtitle {
            display: inline-block;
            font-size: 20px;
            color: #5D5D5D;
            margin: 0 0 10px 10px;

        }

        #sun {
            display: inline-block;
            float: right;
            font-size: 13px;
            color: #8C8C8C;
        }

        #sun>i {
            color: #ECB365;
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

        td>i {
            color: #ECB365;
        }

        .form-div2 {
            display: inline;
            color: #8C8C8C;
            font-size: 13px;
        }

        td>input {
            height: 30px;
            border: 1px solid #D5D5D5;
            border-radius: 3px;
        }

        .update:hover {
            border: 1px solid #FFC996;

        }

        #btn {
            display: inline-block;
            margin-left: 400px;
            margin-top: 10px;
            width: 400px;
            height: 100px;
            text-align: center;
        }

        #submit {
            width: 150px;
            height: 80px;
            background-color: white;
            color: #5D5D5D;
            border-radius: 3px;
            border: 1px solid #FFC996;
        }

        #submit:hover {
            background-color: #ECB365;
            border: 1px solid white;
            color: white;
            cursor: pointer;
        }

        #reset {
            width: 100px;
            height: 80px;
            background-color: white;
            color: #5D5D5D;
            border-radius: 3px;
            border: 1px solid #D5D5D5;
            display: inline-block;
        }

        #reset:hover {
            background-color: #ECB365;
            border: 1px solid white;
            color: white;
            cursor: pointer;
        }

        #delbtn {
            display: inline-block;
            float: right;
            margin-top: 10px;
            width: 90px;
            height: 60px;
            background-color: white;
            border-radius: 3px;
            border: 1px solid #D5D5D5;
            line-height: 60px;
            text-align: center;
        }

        #delbtn:hover {
            background-color: #D5D5D5;
            border: 1px solid white;
            cursor: pointer;
        }

        #delbtn>a {
            color: #5D5D5D;
            text-decoration: none;
            margin: 0 auto;
        }




        #footer {
            width: 1250px;
            height: 400px;
            /*background-color: #F6F6F6;
            margin: 20px auto 0;*/
        }

        #fixed-bar {
            width: 55px;
            height: 290px;
            background-color: grey;
            position: fixed;
            top: 100px;
            right: 0px;
            /*
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;*/
            border-radius: 10px;
            padding: 25px 2.5px 25px 2.5px;
            opacity: 0.5;
        }

        #fixed-bar>a {
            width: 50px;
            height: 50px;
            color: white;
            float: left;
            margin: 0 auto;
            text-align: center;
        }

        #fixed-bar>a:hover {
            color: #4C4C4C;
        }

        #fixed-bar-move {
            width: 55px;
            height: 20px;
            position: fixed;
            top: 390px;
            right: 0px;
            opacity: 0.5;
            padding-top: 2px;
        }

        #fixed-bar-move>a {
            width: 25px;
            height: 25px;
            background-color: grey;
            color: white;
            float: left;
            text-align: center;
            border-radius: 5px;
            margin: 1px;
            padding-top: 5px;
        }

        #fixed-bar-move>a:hover {
            color: #4C4C4C;
        }

    </style>
</head>

<body>
    <div id="wrap">
        <a name="top"></a>
        <div id="header-wrap">
            <%@ include file="include/u_gnb.html" %>
        </div>

        <div id="body">
            <div id="infor-area">
                <div id="title">
                    PROFILE MODIFY
                </div>
                <div id="subtitle">
                    my profile
                </div>
                <div id="sun">
                    <i class="xi-sun-o"></i> 필수 입력
                </div>
                <div id="modify">
                    <form action="">

                        <table>
                            <tr>
                                <td>
                                    <div class="form-div">아이디</div>
                                    <i class="xi-sun-o"></i>
                                </td>
                                <td>
                                    <input type="text" readonly>
                                    <div class="form-div2">( 영어 대소문자 / 숫자 , 5~15자 )</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-div">비밀번호</div>
                                    <i class="xi-sun-o"></i>

                                </td>
                                <td>
                                    <input type="password" class="update">
                                    <div class="form-div2">( 영어 대소문자 / 숫자 / 특수문자 포함 , 5~15자 )</div>
                                    <div class="form-div2">( 특수문자 : ~ ! @ # $ % ^ * ( ) = _ . | )</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-div">비밀번호 확인</div>
                                    <i class="xi-sun-o"></i>

                                </td>
                                <td>
                                    <input type="password" class="update">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-div">이름</div>
                                    <i class="xi-sun-o"></i>
                                </td>
                                <td>
                                    <input type="text" readonly>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-div">휴대전화</div>
                                    <i class="xi-sun-o"></i>
                                </td>
                                <td>
                                    <input type="text" class="update">
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="form-div">이메일</div>
                                    <i class="xi-sun-o"></i>
                                </td>
                                <td>
                                    <input type="email" readonly>
                                    <div class="form-div2">( '@' 포함된 이메일 형식 )</div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-div">주소</div>
                                    <i class="xi-sun-o"></i>
                                </td>
                                <td>
                                    <input type="text" class="update">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-div">생년월일</div>
                                    <i class="xi-sun-o"></i>
                                </td>
                                <td>
                                    <input type="text" readonly>
                                </td>
                            </tr>

                        </table>

                        <div id="btn">
                            <input type="submit" value="회원 정보 수정" id="submit">
                            <input type="reset" value="취소" id="reset">
                            <script>
                                $('#reset').click(function(){
                                    location.replace('u_main.jsp');
                                });
                            </script>
                        </div>
                        <div id="delbtn">
                            <a href="u_withdraw.jsp">회원 탈퇴</a>
                        </div>
                    </form>
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


</body>

</html>
