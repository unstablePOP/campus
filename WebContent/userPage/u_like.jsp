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
            padding-top: 50px;
        }
        
        
        /* 찜한 상품 */
        #like-area {
            width: 1250px;
            height: 400px;
        }

        .likebox {
            width: 292px;
            height: 400px;
            background-color: #F6F6F6;
            float: left;
            margin: 0 10px;
        }

        .like-add {
            color: grey;
            text-align: center;
            line-height: 400px;
        }

        .like-top {
            width: 292px;
            height: 50px;
            background-color: black;
            opacity: 0.4;


        }

        .like-name {
            float: left;
            color: white;
            opacity: 1;
            line-height: 50px;
            padding-left: 20px;

        }

        .like-localname {
            float: left;
            color: white;
            opacity: 1;
            line-height: 50px;
            padding-left: 5px;
        }

        .like-areaname {
            float: right;
            color: white;
            opacity: 1;
            line-height: 50px;
            padding-right: 20px;
        }

        .like-body {
            width: 292px;
            height: 250px;
        }

        .like-bottom {
            width: 292px;
            height: 100px;
            background-color: black;
            opacity: 0.5;
        }

        .like-address {
            float: left;
            color: white;
            opacity: 1;
            padding-left: 20px;
            padding-top: 20px;

        }

        .like-price {
            float: right;
            color: white;
            opacity: 1;
            padding-right: 20px;
            padding-top: 20px;

        }

        #likebox1 {
            background: url("./image/test/캠핑카.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-position: center;

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
            <div id="like-area">
                <div class="likebox" id="likebox1">
                    <div class="like-top">
                        <div class="like-name">abc캠핑장</div>
                        <div class="like-localname">[춘천]</div>
                        <div class="like-areaname">| A 구역</div>
                    </div>
                    <div class="like-body"></div>
                    <div class="like-bottom">
                        <div class="like-address">강원도 춘천시 어쩌구 저쩌구 </div>
                        <div class="like-price">40,000원</div>
                    </div>
                </div>
                <div class="likebox">
                    <div class="like-add">
                        관심상품을 추가해주세요:-)
                    </div>

                </div>
                <div class="likebox">
                    <div class="like-add">
                        관심상품을 추가해주세요:-)
                    </div>
                </div>
                <div class="likebox">
                    <div class="like-add">
                        관심상품을 추가해주세요:-)
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
    </div>


</body>

</html>
