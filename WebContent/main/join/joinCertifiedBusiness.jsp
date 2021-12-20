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
        *{
			box-sizing:border-box;
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
        #bodyWrap{
            width: 100%;
            height: 650px;
        }
        
        /* 단계 CSS */
        #joinStep{
            width: 100%;
            height: 80px;
        }
        #joinStep>ul{
            margin: 0px;
            padding: 0px;
            width: 100%;
            height: 100%;
            text-align: center;
        }
        #joinStep li{
            border: 1px solid rgba(220,220,220,0.5);
            list-style: none;
            display: inline-block;
            font-size: 20px;
            height: 100%;
            width: 300px;
            background-color: rgba(220,220,220,0.2);
            line-height: 78px;
            border-radius: 10px;
        }
        #joinStep li:nth-child(3){
            background-color: skyblue;
        }
        .nextInfo{
            font-size: 35px;
        }
        
        /* 이메일 인증 CSS */
        #certifiedWrap{
            border: 1px solid black;
            width: 78%;
            height: 300px;
            margin: 0 auto;
            
        }
        
        /* 다음 버튼 CSS */
        #nextStepBtn{
            width: 100%;
            height: 100%;
            background-color: skyblue;
            border-radius: 10px;
            border: 1px solid rgba(220,220,220,0.5);
            font-size: 18px;
            font-weight: bolder;
            cursor: pointer;
        }
        #nextStepBtnWrap{
            width: 200px;
            height: 60px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
 	<div id="wrap">
        <div id="header-wrap">
            <%@include file="/common/include/gnb.jsp"%>
        </div>
        <div id="bodyWrap">
           <br>
           <br>
            <h1 align="center">회원가입</h1>
<%-- 단계 부분 --%>
            <div id="joinStep">
                <ul>
                    <li>1. 약관동의</li>
                    <span class="nextInfo">></span>
                    <li>2. 가입인증</li>
                    <span class="nextInfo">></span>
                    <li>3. 회원정보 입력</li>
                </ul>
            </div>
            <br>
<%-- 인증 부분 --%>
            <div id="certifiedWrap">
                <h3>회원가입을 하기 위한 메일 인증이 필요합니다.</h3>
            </div>
            <br>
<%-- 다음 단계 button 부분 --%>
            <div id="nextStepBtnWrap">
                <button id="nextStepBtn" value="다음 단계" onclick="location.replace('/main/join/joinInputBusiness.jsp')">다음 단계</button>
            </div>
        </div>
    </div>
</body>
</html>