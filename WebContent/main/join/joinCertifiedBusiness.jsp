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
        
        /* 이메일 인증 전체 Wrap CSS */
        #certifiedWrap{
            border: 1px solid rgba(220, 220, 220, 1);
            border-radius:10px;
            width: 78%;
            height: 300px;
            margin: 0 auto;
            padding: 40px 60px;
            text-align:center;
        }
        #certifiedInputWrap{
        	border: 1px solid rgba(220, 220, 220, 1);
            border-radius:10px;
            width: 78%;
            height: 300px;
            margin: 0 auto;
            padding: 50px 60px;
            text-align:center;
            display:none;
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
        /* 인증 CSS */
        .input{
        	width:80%;
        	height:40px;
        	font-size: 18px;
            border-radius: 10px;
            border-style: solid;
            text-align: center;
        }
        .btn{
        	width: 80%;
            height: 50px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 20px;
        }
        #time{
        	font-size:18px;
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
            <h3 align="center">이메일 인증이 필요합니다. 사용하실 회사 이메일 주소를 입력해주세요.</h3>
                <input type="email" id="emailInput" class="input" placeholder="사용하실 이메일 주소를 입력해주세요.">
                <br>
                <br>
                <button id="emailBtn" class="btn" onclick="certifiedEmail()">인증 번호 받기</button>
            </div>
            <div id="certifiedInputWrap">
            <h3 align="center">인증 번호를 입력해주세요.</h3>
                <input type="text" id="certifiedInput" class="input" placeholder="메일로 받으신 인증번호 5자리를 입력해주세요.">
                <br>
                <br>
                <span id="time">
                </span>
            </div>
            <br>
<%-- 다음 단계 button 부분 --%>
            <div id="nextStepBtnWrap">
                <button id="nextStepBtn" value="다음 단계" onclick='certifiedCheck()'>다음 단계</button>
            </div>
        </div>
    </div>
    <script>
    var certifiedNum = "";
    	function certifiedEmail(){
    		var email = $('#emailInput').val();
    		if(email==""){
    			alert("이메일을 입력해주세요.");
    			return;
    		}
    		$.ajax({
    			url:"/main/certifiedEmailBusiness.do",
    			data:{
    				"email":email
    			},
    			type:"get",
    			dataType:"json",
    			success:function(result){
    				if(result==true){
    					alert("현재 사용중인 email입니다. 다른 email주소를 입력해주세요.");
    				}else{
    					$('#certifiedWrap').css('display','none');
    					$('#certifiedInputWrap').css('display','block');
    					certifiedNum = result;
    					time();
    				}
    			},
    			error:function(){
    				
    			}
    		});
    	}
    	function time(){
    		var time = 300;
    		var min ="";
    		var sec ="";
    		var x = setInterval(function(){
    			time -=1;
    			min=parseInt(time/60);
    			sec=time%60;
    			$('#time').html(min+' : '+sec);
    			
    			if(time<0){
    				clearInterval(x);
    				alert("응답시간이 초과되었습니다.\n메인화면으로 이동합니다.");
    				location.replace('/')
    			}
    		}, 1000);
    	}
    	function certifiedCheck(){
    		var inputNum = $('#certifiedInput').val();
    		var email = $('#emailInput').val();
    		if(certifiedNum==inputNum&&certifiedNum!=""){
    			location.replace('/main/join/joinInputBusiness.jsp?email='+email)
    		}else{
    			alert('error');
    		}
    	}
    </script>
</body>
</html>