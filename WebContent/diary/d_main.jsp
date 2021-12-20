<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
        * {
            box-sizing: border-box;
        }
        #header-wrap{
        }

        #wrap {
            width: 100%;
            height: 100%;
            background: url("./image/camper-1845590.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-position: center;
            opacity: 0.8;
            position: fixed;
            z-index: -1;
            

        }

        #body {
            width: 100%;
            height: 10000px;
            margin-top: 50px;
        }

        #pol_area {
            width: 85%;
            height: 100%;
            margin: 0 auto;
            text-align: center;
        }

        #polaroid-wrap {
        }

        .polaroid {
            width: 250px;
            height: 350px;
            background-color: white;
            border-radius: 5px;
            float: left;
            box-shadow: 1px 1px 5px gray;
            margin: 20px;
        }

        .delete {
            display: none;
            position: relative;
            left: 125px;
            top: -6px;
            z-index: 10;
            color: gray;
        }

        .img-area {
            border: 1px solid skyblue;
            width: 90%;
            height: 70%;
            margin: 15px auto;
            overflow: hidden;
        }

        .img-area>img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .title-area {
            border: 1px solid skyblue;
            width: 90%;
            height: 17%;
            margin: 15px auto;
            text-align: center;
            font-family: "gaegu";
            font-size: 25px
        }

        .title {
            width: 60%;
            height: 100%;
            float: left;
            border: 1px solid pink;
            font-size: 20px;
            text-align: center;
            margin: auto;
            line-height: 50px;
        }

        .mood {
            width: 20%;
            height: 100%;
            float: left;
            border: 1px solid pink;
        }

        .weather {
            width: 20%;
            height: 100%;
            float: left;
            border: 1px solid pink;
        }

        .date {
            position: relative;
            left: -80px;
            top: 0px;
            z-index: 10;
            color: #5D5D5D;
            text-shadow: 0px 1px 2px grey;
        }

        #pol-add-area {
            width: 250px;
            height: 350px;
            float: left;
            margin: 15px;
            float: left;
        }

        #pol-add {
            margin: 120px auto;

        }

        #add {
            color: gray;
            cursor: pointer;
        }


        #modal {
            position: absolute;
            top: 0;
            left: 0;

            width: 100%;
            height: 100%;

            display: none;

            background-color: rgba(0, 0, 0, 0.4);
        }


        #modal-area {
            position: absolute;
            top: 50%;
            left: 50%;

            width: 400px;
            height: 600px;


            text-align: center;

            border-radius: 10px;

            transform: translateX(-50%) translateY(-50%);
        }

        #modal-pol {

            width: 375px;
            height: 525px;
            background-color: white;
            margin: 0 auto;
            padding-top: 5px;
            border-radius: 5px;
            box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
        }

        #add-img {
            width: 90%;
            height: 70%;
            margin: 22.5px auto ;
            border-radius: 5px;
            background-color: floralwhite;
        }

        #add-title {
            width: 90%;
            height: 17%;
            margin: 22.5px auto;
            text-align: center;
            background-color: floralwhite;
        }

        #add-date {
            width: 375px;
            height: 30px;
            margin: 0 auto;
        }
        #add-date>input {
            float: left;
        }
		#modal-btn{
            width: 100px;
            height: 50px;
            margin: 0 auto;
		}
        #add-pol {
            float: left;
            cursor: pointer;
            color: white;
            text-shadow: 0px 1px 2px grey;
        }

        #modal-close {
            float: left;
            cursor: pointer;
            color: white;
            text-shadow: 0px 1px 2px grey;
        }

    </style>
</head>

<body>
    <div id="wrap">
    </div>
    <div id="header-wrap">
        <%@ include file="include/d_gnb.html" %>
    </div>
    <div id="body">
        <div id="pol_area">
            <div id="polaroid-wrap">
                <div class="polaroid">
                    <a href="" class="delete"><i class="xi-close-circle-o"></i></a>
                    <div class="img-area">
                        <img src="image/test/nature-2588685.jpg" alt="">
                    </div>
                    <div class="title-area">
                        <div class="title">
                            불멍 조오타
                        </div>
                        <div class="mood"></div>
                        <div class="weather"></div>
                    </div>
                    <div class="date">
                        2021-12-12
                    </div>
                </div>
                <div class="polaroid">
                    <a href="" class="delete"><i class="xi-close-circle-o"></i></a>
                    <div class="img-area">

                    </div>
                    <div class="title-area">

                    </div>
                </div>
                <div class="polaroid">
                    <a href="" class="delete"><i class="xi-close-circle-o"></i></a>
                    <div class="img-area">

                    </div>
                    <div class="title-area">

                    </div>
                </div>
                <div class="polaroid">
                    <a href="" class="delete"><i class="xi-close-circle-o"></i></a>
                    <div class="img-area">

                    </div>
                    <div class="title-area">

                    </div>
                </div>
                <div id="pol-add-area">
                    <div id="pol-add">
                        <i class="xi-plus-circle xi-4x" id="add"></i>
                    </div>

                </div>
                <div id="modal">
                    <div id="modal-area">
                        <div id="modal-pol">
                            <div id="add-img"></div>
                            <div id="add-title"></div>

                        </div>
                        <div id="add-date">
                            <input type="date">
                        </div>
                        <div id="modal-btn">
                            <div id="add-pol">
                                <i class="xi-plus-square-o xi-3x"></i>
                            </div>
                            <div id="modal-close">
                                <i class="xi-close-square-o xi-3x"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    //modal
                    $(function() {
                        $('#add').click(function() {
                            $('#modal').fadeIn();
                            //$('body').css('overflow', 'hidden');
                        });
                        $('#modal-close').click(function() {
                            $('#modal').fadeOut();
                            //$('body').css('overflow', 'auto');
                        });

                    });

                </script>

            </div>
        </div>
        <script>
            // 삭제 버튼 나타내기
            $('.polaroid').hover(function() {
                $(this).children('.delete').css('display', 'block');
                //$(this).children('.img-area').css('margin','-1px 17.5px 14px 12.5px'); 
                $(this).children('.img-area').css('margin', '-1px 17.5px 14px 12.5px');
            }, function() {
                $(this).children('.delete').css('display', 'none');
                $(this).children('.img-area').css('margin', '15px auto');
            });
            $('.delete').click(function(){
            	window.confirm('삭제된 폴라로이드는 되돌릴 수 없습니다. 삭제하시겠습니까? ');
            });

        </script>

    </div>



</body>

</html>
