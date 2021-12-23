<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            height: 1920px;

            box-sizing: border-box;
            margin: 0px auto;
        }

        #header-wrap {
            width: 100%;
            height: 100px;

        }

        #bodyWrap {
            width: 100%;
            height: 1000px;
        }

        #serviceLogoWrap {
            width: 100%;
            height: 519px;
            margin-bottom: 30px;
        }

        #serviceLogoWrap>img {
            width: 100%;
            height: 519px;
            position: absolute;
            left: 0;
            z-index: -1;
        }

        #myService {
            width: 130px;
            height: 60px;
            border: 1px solid black;
            position: relative;
            left: 1080px;
            top: 30px;
            background-color: rgba(0, 0, 0, 0.6);
            text-align: center;
            line-height: 60px;
            border-radius: 10px;
        }

        #myService>a {
            text-decoration: none;
            color: white;
        }

        #helpSearchWrap {
            width: 100%;
            height: 150px;
            position: relative;
            margin: 150px auto;
            font-size: 24px;
            background-color: rgba(0, 0, 0, 0.6);
            padding: 50px 280px;
        }

        #helpSearchWrap>span {
            position: relative;
            font-weight: bolder;
            color: white;
            top: 5px;
        }

        #helpSeachBar {
            display: inline-block;
            width: 500px;
            height: 45px;
            border-radius: 10px;
            position: relative;
            font-size: 16px;
        }

        #helpSearchWrap>img {
            position: relative;
            width: 30px;
            height: 30px;
            top: 10px;
            right: 50px;
            cursor: pointer;
        }

        #ContentWrap {
            width: 100%;
            height: 450px;
        }

        #helpTitleWrap {
            width: 30%;
            height: 450px;
            float: left;
        }

        #helpDiscriptionWrap {
            float: left;
            width: 50%;
            height: 450px;
            line-height: 40px;
        }

        .qna {
            font-size: 18px;
            padding: 4px;
            cursor: pointer;
        }

        .qna:hover {
            background-color: skyblue;
        }

        .qnaDiscription {
            font-size: 20px;
        }

        .qnaDiscription>pre {
            font-size: 18px;
        }

        #questionWrap {
            float: left;
            width: 20%;
            height: 450px;
            font-size: 20px;
            text-align: center;
        }

        #questionWrap>a {
            display: block;
            width: 150px;
            height: 50px;
            line-height: 50px;
            text-decoration: none;
            color: white;
            background-color: rgba(0, 0, 0, 0.5);
            margin: 200px auto;
            border-radius: 10px;
        }

        .form-group {
            width: 100%;
            height: 80px;
            border-bottom: 1px solid rgba(220, 220, 220, 1);
        }

        .form-group:first-child {
            border-top: 1px solid black;
        }

        .infor-group {
            width: 20%;
            height: 100%;
            color: 18px;
            padding: 25px;
            float: left;

        }

        #form-text {
            width: 100%;
            height: 400px;
            border-bottom: 1px solid black;
        }

        .star {
            color: red;
        }

        .input-group {
            width: 80%;
            height: 100%;
            float: left;
            padding: 17px;
            line-height: 40px;
        }

        #serviceEmail {
            width: 500px;
            height: 40px;
            border-radius: 7px;
            border: 2px solid rgba(220, 220, 220, 1);
        }
        
        #serviceType{
            width: 150px;
            height: 40px;
            border-radius: 7px;
            border: 2px solid rgba(220, 220, 220, 1);
        }

        #serviceSubject {
            width: 500px;
            height: 40px;
            border-radius: 7px;
            border: 2px solid rgba(220, 220, 220, 1);
        }

        #serviceContent {
            width: 960px;
            height: 360px;
            resize: none;
            border-radius: 7px;
            font-size:16px;
            border: 2px solid rgba(220, 220, 220, 1);
        }
        #check{
            width: 100%;
            height: 150px;
            background-color: rgba(220, 220, 220, 0.2);
        }
        #check-infor{
            width: 25%;
            height: 100%;
            float: left;
            padding: 10px 5px;
        }
        #check-input{
            width: 75%;
            height: 100%;
            float: left;
        }
        #check-text{
            width: 100%;
            height: 60%;
            color: rgba(0, 0, 0, 0.7);
            padding: 30px 20px;
        }
        #check-select{
            width: 100%;
            height: 40%;
            color: rgba(0, 0, 0, 0.7);
            padding: 0px 20px;
        }
        #checkBtnWrap{
            width: 100%;
            height: 60px;
            text-align: center;
        }
        #modifyBtn{
            width: 100px;
            height: 100%;
            border: none;
            background-color: #ff5000;
            color: white;
            border-radius: 10px;
            font-weight: bolder;
            font-size: 18px;
            cursor: pointer;
        }
        #serviceListBtn{
            width: 100px;
            height: 100%;
            border-color: rgba(220, 220, 220, 0.8);
            border-radius: 10px;
            border: 1px solid #ccc;
            font-weight: bolder;
            font-size: 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<body>
<c:if test="${member==null }">
	<script>
		alert("로그인이 필요한 서비스입니다.");
		location.replace("/main/login/M_Login.jsp");
	</script>
</c:if>
    <div id="wrap">
        <div id="header-wrap">
			<%@include file="/common/include/gnb.jsp"%>
        </div>
        <div id="bodyWrap">
            <div id="serviceLogoWrap">
                <img src="/main/image/mainlogo/creux-du-van-2839124_1920.jpg" alt="">
                <div id="myService"><a href="">내 문의 내역 ></a></div>
                <div id="helpSearchWrap">
                    <span>도움말 검색</span>
                    <input type="text" id="helpSeachBar" placeholder="검색어를 입력하세요.">
                    <img src="/main/image/search/searchLeaf.png" alt="">
                </div>
            </div>
            <div id="ContentWrap">
                <h3>문의 내역</h3>
                <%-- 문의 폼 시작 --%>
                    <div class="form-group">
                        <div class="infor-group" style="border-top:1px solid black;">
                            	이메일 주소
                        </div>
                        <%-- 이메일 입력란 --%>
                        <div class="input-group" style="border-top:1px solid black;">
                            ${s.serviceEmail }
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="infor-group">
                            	문의유형
                        </div>
                        <%-- 유형 선택란 --%>
                        <div class="input-group">
                            <c:choose>
                            	<c:when test="${s.serviceType=='reservation' }">예약 문의</c:when>
                            	<c:when test="${s.serviceType=='account' }">계정 문의</c:when>
                            	<c:when test="${s.serviceType=='other' }">기타 문의</c:when>
                            </c:choose>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="infor-group">
                            	 문의제목
                        </div>
                        <%-- 제목 입력란 --%>
                        <div class="input-group">
                            ${s.serviceSubject }
                        </div>
                    </div>
                    <div id="form-text">
                        <div class="infor-group">
                            	 문의내용
                        </div>
                        <%-- 내용 입력란 --%>
                        <div class="input-group">
                            <textarea name="serviceContent" id="serviceContent" cols="30" rows="10" disabled=true>${s.serviceContent }</textarea>
                        </div>
                    </div>
                    <br>
                    <br>
                    <div id="checkBtnWrap">
                        <input type="button" value="수정" id="modifyBtn" onclick="location.href='/main/serviceQnaSearch.do?serviceNo=${s.serviceNo }&currentPage=${currentPage }'">
                        <input type="button" value="문의목록" id="serviceListBtn" onclick="location.href='/main/serviceList.do?currentPage=${currentPage}'">
                    </div>
            </div>
        </div>
    </div>
</body>
</html>