<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
		#bodyWrap{
            border: 1px solid black;
            width: 100%;
            height: 2000px;
        }
        #bodyLogoWrap{
            width: 100%;
            height: 120px;
        }
        #bodyLogoWrap>img{
            position: absolute;
            left: 0;
            z-index: -1;
            width: 100%;
            height: 563px;
        }
        #ContentsAreaWrap{
            width: 100%;
            height: 700px;
        }
        .ContentsArea{
            width: 100%;
            height: 300px;
        }
        .ContentsWrap{
            float: left;
            width: 50%;
            height: 100%;
            padding: 0px 40px;
        }
        .ContentsWrap>ul{
            background-color: #f1f3f9;
        }
        .ContentsWrap>ul>li{
            font-size: 24px;
            padding: 5px 0px;
        }
        .ContentsArea2{
            width: 100%;
            height: 400px;
        }
        .viewsWrap{
            float: left;
            width: 50%;
            height: 70%;
            padding: 0px 30px;
            background-color: #f1f3f9;
        }
        .views{
            border: 1px solid black;
            width: 100%;
            height: 80%;
        }
        .texts{
            border: 1px solid red;
            width: 100%;
            height: 20%;
            font-size: 24px;
        }
        .texts>ul{
            margin: 10px 0px;
        }
        .texts a{
            text-decoration: none;
            color: black;
        }
</style>
</head>
<body>
	<div id="bodyWrap">
            <div id="bodyLogoWrap">
            </div>
            <div id="ContentsAreaWrap">
                <div class="ContentsArea">
                    <div class="ContentsWrap">
                       <h1>공지사항</h1>
                        <ul>
                            <li>임시</li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="ContentsWrap">
                       <h1>자유게시판</h1>
                        <ul>
                            <li>임시</li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
                <div class="ContentsArea2">
                    <div class="ContentsWrap">
                       <h1>중고장터 게시판</h1>
                        <div class="viewsWrap">
                            <div class="views">
                                
                            </div>
                            <div class="texts">
                                <ul>
                                    <li><a href="">임시</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="viewsWrap">
                            <div class="views">
                                
                            </div>
                            <div class="texts">
                                <ul>
                                    <li><a href="">임시</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="ContentsWrap">
                       <h1>정보공유 게시판</h1>
                        <div class="viewsWrap">
                            <div class="views">
                                
                            </div>
                            <div class="texts">
                                <ul>
                                    <li><a href="">임시</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="viewsWrap">
                            <div class="views">
                                
                            </div>
                            <div class="texts">
                                <ul>
                                    <li><a href="">임시</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>