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
            height: 1450px;
            box-sizing: border-box;
            margin: 0px auto;
        }
		#header-wrap {
            width: 100%;
            height: 100px;
        }
        #bodyWrap{
            width: 100%;
            height: 1150px;
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
        #joinStep li:last-child{
            background-color: skyblue;
        }
        .nextInfo{
            font-size: 35px;
        }
        
        /* 정보기입 전체 Wrap CSS */
        #inputWrap{
            
            width: 78%;
            height: 810px;
            margin: 0 auto;
        }
        /* 알림 Wrap CSS */
        #inputAlertWrap{
            widows: 100%;
            height: 100px;
            text-align: center;
            line-height: 50px;
            background-color: rgba(220,220,220,0.2);
        }
        
  		/* 가입 버튼 CSS */
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
        
        /* 정보기입 목록(1개) 전체 wrap CSS */
        dl{
            width: 100%;
            height: 70px;
            margin: 0px;
            padding: 0px;
        }
        /* 정보기입 헤더 부분 CSS */
        dt{
            border: 1px solid;
            width: 30%;
            height: 100%;
            margin: 0px;
            padding: 0px;
            float: left;
            line-height: 70px;
            padding: 0px 20px;
            background-color: rgba(220,220,220,0.2);
            border-left: none;
            border-right: none;
            border-bottom: none;
            border-color: rgba(220,220,220,1);
        }
        .firstDt{
            border-top-color: black;
        }
        .lastDt{
            border-bottom: 1px solid black;
        }
        
        /* 정보기입 바디(input) 부분 CSS */
        dd{
            border-top: 1px solid;
            width: 70%;
            height: 100%;
            margin: 0px;
            padding: 0px;
            float: left;
            border-left: none;
            border-right: none;
            border-color: rgba(220,220,220,1);
        }
        .inputTextWrap{
            border: 1px solid rgba(220,220,220,1);
            float: left;
            width: 70%;
            height: 30px;
            margin: 10px;
            margin-bottom: 5px;
        }
        .inputText{
            border: none;
            width: 100%;
            height: 100%;
        }
        /* 정보기입 바디(input) 부분 description CSS */
        .inputDescription{
            clear: both;
            margin-left: 10px;
            color: red;
        }
        /* 정보기입 바디(input) 부분 button CSS */
        .inputBtnWrap{
            border: 1px solid black;
            float: left;
            width: 100px;
            height: 30px;
            margin: 10px;
            margin-bottom: 5px;
        }
        .inputBtn{
            width: 100%;
            height: 100%;
            border: none;
            cursor: pointer;
        }
        /* stars 중요 표시 CSS */
        .stars{
            color: blue;
        }
    </style>
</head>
<body>
<div id="wrap">
        <div id="header-wrap">
            <%@include file="/common/include/gnb.html"%>
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
<%-- input 부분 --%>
            <div id="inputWrap">
<%-- 알림 부분 --%>
                <div id="inputAlertWrap">
                    <span>
                        - 캠퍼스 홈페이지는 회원의 개인정보보호문제를 신중하게 취급합니다.
                    </span>
                    <br>
                    <span>
                        - 아이디/비밀번호 분실 등 본인 여부 확인이 필요할 경우를 위해 가급적 신분증에 기재된 이름, 생년월일을 입력해 주세요.
                    </span>
                </div>
<%-- 아이디 input 부분 --%>
                <div id="idInforInputWrap">
                    <h3>아이디 정보</h3>
                    <dl>
                        <dt class="firstDt"><span class="stars">*</span> 아이디</dt>
                        <dd class="firstDt">
                            <div class="inputTextWrap"><input type="text" name="userId" class="inputText" placeholder="사용하실 아이디를 입력하신 후 중복확인을 눌러주세요."></div>
                            <div class="inputBtnWrap"><button class="inputBtn">중복 확인</button></div>
                            <div class="inputDescription" id="idDescription">영문, 숫자만 가능합니다. (5~15자)</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 비밀번호</dt>
                        <dd>
                            <div class="inputTextWrap"><input type="password" name="userPwd" class="inputText" placeholder="(8~15글자)영어 대소문자 + 숫자 + 특수문자로 구성되어야 합니다."></div>
                            <div class="inputDescription">특수문자는 `~`, `!`, `@`, `#`, `$`, `^`, `*`, `(`, `)`, `=`, `_`, `.`, `|` 만 사용가능합니다.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="lastDt"><span class="stars">*</span> 비밀번호 확인</dt>
                        <dd class="lastDt">
                            <div class="inputTextWrap"><input type="password" class="inputText" placeholder="비밀번호를 재입력해주세요."></div>
                            <div class="inputDescription"></div>
                        </dd>
                    </dl>
                </div>
                <br>
<%-- 개인 정보 input 부분 --%>
                <div id="userInforInputWrap">
                    <h3>개인 정보</h3>
                    <dl>
                        <dt class="firstDt"><span class="stars">*</span> 이름</dt>
                        <dd class="firstDt">
                            <div class="inputTextWrap"><input type="text" class="inputText" placeholder="사용하실 아이디를 입력하신 후 중복확인을 눌러주세요."></div>
                            <div class="inputBtnWrap"><button class="inputBtn">중복 확인</button></div>
                            <div class="inputDescription">주민등록상의 이름을 입력해주시기 바랍니다.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 생년월일</dt>
                        <dd>
                            <div class="inputTextWrap"><input type="date" class="inputText"></div>
                            <div class="inputDescription">주민등록상의 생년월일을 입력해주시기 바랍니다.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 연락처</dt>
                        <dd>
                            <div class="inputTextWrap"><input type="text" class="inputText"></div>
                            <div class="inputDescription">현재 연락 가능한 번호를 입력해주세요.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 거주지 시/도</dt>
                        <dd>
                            <div class="inputTextWrap"><input type="text" class="inputText"></div>
                            <div class="inputDescription">현재 거주지를 입력해주세요.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="lastDt"><span class="stars">*</span> 이메일</dt>
                        <dd class="lastDt">
                            <div class="inputTextWrap"><input type="email" class="inputText" disabled=true></div>
                            <div class="inputDescription"></div>
                        </dd>
                    </dl>
                </div>
            </div>
            <br>
<%-- 가입하기 button 부분 --%>
            <div id="nextStepBtnWrap">
                <button id="nextStepBtn" value="다음 단계">가입 하기</button>
            </div>
        </div>
    </div>
    <script>
    	$("input[name='userId']").keyup(function(){
    		var regId=/^[a-zA-Z0-9]{5,15}$/
    		if(regId.test($(this).val())){
    			$('#idDescription').css("color",'dodgerblue');
    		}else{
    			$('#idDescription').css("color",'red');
    		}
    	});
    	$("input[name='userPwd']").keyup(function(){
    		var regId=/^
    	});
    
    </script>
</body>
</html>