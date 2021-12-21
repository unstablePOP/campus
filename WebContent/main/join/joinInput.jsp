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
            height: 1550px;
            box-sizing: border-box;
            margin: 0px auto;
        }
		#header-wrap {
            width: 100%;
            height: 100px;
        }
        #bodyWrap{
            width: 100%;
            height: 1250px;
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
            margin: 50px auto;
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
        #genderWrap{
        	padding:22px 10px;
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
            border: 1px solid rgba(220,220,220,1);
            float: left;
            width: 100px;
            height: 30px;
            margin: 10px;
            margin-bottom: 5px;
            border-radius: 2px;
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
			<form action="/main/join.do" method="post" id="joinDo">
                <div id="idInforInputWrap">
                    <h3>아이디 정보</h3>
                    <dl>
                        <dt class="firstDt"><span class="stars">*</span> 아이디</dt>
                        <dd class="firstDt">
                            <div class="inputTextWrap"><input type="text" name="userId" class="inputText" placeholder="사용하실 아이디를 입력하신 후 중복확인을 눌러주세요."></div>
                            <div class="inputBtnWrap"><button type="button" class="inputBtn" id="idCheck">중복 확인</button></div>
                            <div class="inputDescription" id="idDescription">영문, 숫자만 가능합니다. (5~15자)</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 비밀번호</dt>
                        <dd>
                            <div class="inputTextWrap"><input type="password" name="userPwd" class="inputText" placeholder="(8~15글자)영어 대소문자 + 숫자 + 특수문자로 구성되어야 합니다."></div>
                            <div class="inputDescription" id="pwdDescription">특수문자는 `!`, `@`, `#`, `$`, `%`, `^`, `&`, `*`, `(`, `)`만 사용가능합니다.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="lastDt"><span class="stars">*</span> 비밀번호 확인</dt>
                        <dd class="lastDt">
                            <div class="inputTextWrap"><input type="password" name="userPwdRe" class="inputText" placeholder="비밀번호를 재입력해주세요."></div>
                            <div class="inputDescription" id="pwdReDescription">비밀번호를 확인해주세요.</div>
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
                            <div class="inputTextWrap"><input type="text" name="userName" class="inputText" placeholder="이름을 입력해주세요."></div>
                            <div class="inputDescription" id="nameDescription">주민등록상의 이름을 입력해주시기 바랍니다.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 생년월일</dt>
                        <dd>
                            <div class="inputTextWrap"><input type="date" name="userBirth" class="inputText"></div>
                            <div class="inputDescription" id="birthDescription">주민등록상의 생년월일을 입력해주시기 바랍니다.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 성별</dt>
                        <dd id="genderWrap">         
                            <input type="radio" name="gender" value="M" checked=true>남
                            <input type="radio" name="gender" value="F">여
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 연락처</dt>
                        <dd>
                            <div class="inputTextWrap"><input type="text" name="userPhone" class="inputText" placeholder="' - ' 없이 입력해주세요."></div>
                            <div class="inputDescription" id="phoneDescription">현재 연락 가능한 번호를 입력해주세요.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt><span class="stars">*</span> 거주지 시/도</dt>
                        <dd>
                            <div class="inputTextWrap"><input type="text" name="userAddress" id="userAddress" class="inputText"></div>
                            <div class="inputBtnWrap"><input type="button" onclick="addrSearch()" class="inputBtn" value="주소 찾기"></div><br>
                            <div class="inputDescription" id="addrDescription">현재 거주지를 입력해주세요.</div>
                        </dd>
                    </dl>
                    <dl>
                        <dt class="lastDt"><span class="stars">*</span> 이메일</dt>
                        <dd class="lastDt">
                            <div class="inputTextWrap"><input type="email" class="inputText" disabled=ture value="${param.email }"></div>
	                        <input type="hidden" value="${param.email }" name="email">
                            <div class="inputDescription"></div>
                        </dd>
                    </dl>
                </div>
            </div>
           </form>
            <br>
            <br>
<%-- 가입하기 button 부분 --%>
            <div id="nextStepBtnWrap">
                <button id="nextStepBtn" onclick="joinCheck()" value="다음 단계">가입 하기</button>
            </div>
        </div>
    </div>
    <script>
<%-- ID 유효성 검사 --%>
    	$("input[name='userId']").keyup(function(){
    		var regId=/^[a-zA-Z0-9]{5,15}$/;
    		if(regId.test($(this).val())){
    			$('#idDescription').css("color",'red');
    			$('#idDescription').html("사용가능한 조합입니다. 중복확인을 눌러주세요.");
    		}else{
    			$('#idDescription').css("color",'red');
    			$('#idDescription').html("영문, 숫자만 가능합니다. (5~15자)");
    		}
    	});
<%-- Pwd 유효성 검사 --%>
    	$("input[name='userPwd']").keyup(function(){
    		var regPwd= /^(?=.*[!@#$%^&*()])(?=.*[a-zA-Z])(?=.*[0-9]).{8,15}$/;
    		if(regPwd.test($(this).val())){
    			$('#pwdDescription').css('color','dodgerblue');
    		}else{
    			$('#pwdDescription').css('color','red');
    		}
    	});
<%-- Pwd 재검사 --%>
    	$("input[name='userPwdRe']").keyup(function(){
    		if($(this).val()==$("input[name='userPwd']").val()){
    			$('#pwdReDescription').css('color','dodgerblue');
    		}else{
    			$('#pwdReDescription').css('color','red');
    		}
    	});
<%-- Id 중복 검사 --%>
    	$("#idCheck").click(function(){
    		var userId=$("input[name='userId']").val();
    		if($('#idDescription').html()=="사용가능한 조합입니다. 중복확인을 눌러주세요."){
    		$.ajax({
    			url:"/main/idCheck.do",
    			data:{"userId":userId},
    			type:"get",
    			dataType:"json",
    			success:function(result){
    				if(result==true){
    					$('#idDescription').html("중복된 ID입니다. 다른 ID를 입력해주세요.");
    					$('#idDescription').css('color','red');
    				}else{
    					$('#idDescription').html("사용이 가능합니다.");
    					$('#idDescription').css('color','dodgerblue');
    				}
    			},
    			error:function(){
    				alert("오류가 발생하였습니다. 관리자에게 문의바랍니다.")
    			}
    		});
    		}else{
    			alert("ID를 먼저 입력해주세요.")
    		}
    	});
<%-- 이름 유효성 검사 --%>
    	$("input[name='userName']").keyup(function(){
    		var regName=/^[가-힣]+$/
    		if(regName.test($(this).val())){
    			$('#nameDescription').css('color','dodgerblue');
    		}else{
    			$('#nameDescription').css('color','red');
    		}
    	});
<%-- 생년월일 유효성 검사 --%>
    	$("input[name='userBirth']").change(function(){
    		var regName = /^(19[0-9][0-9]|20\d{2})-(0[0-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/;
    		if(regName.test($(this).val())){
    			$('#birthDescription').css('color','dodgerblue');
    		}else{
    			$('#birthDescription').css('color','red');
    		}
    	});
<%-- 연락처 유효성 검사 --%>
    	$("input[name='userPhone']").keyup(function(){
    		var regPhone=/^\d{2,3}\d{3,4}\d{4}$/
    		if(regPhone.test($(this).val())){
    			$('#phoneDescription').css('color','dodgerblue');
    		}else{
    			$('#phoneDescription').css('color','red');
    		}
    	});
<%-- 주소 입력 여부 검사 --%>
    	$("#userAddress").focus(function(){
    		if($(this).val()!==""){
    			$('#addrDescription').css('color','dodgerblue');
    		}else{
    			$('#addrDescription').css('color','red');
    		}
    	});
    	$("#userAddress").blur(function(){
    		if($(this).val()!==""){
    			$('#addrDescription').css('color','dodgerblue');
    		}else{
    			$('#addrDescription').css('color','red');
    		}
    	});
<%-- 전체 항목 검사 --%>
    	function joinCheck(){
    		var id = $("#idDescription").css('color')=="rgb(30, 144, 255)";
    		var pwd = $("#idDescription").css('color')=="rgb(30, 144, 255)";
    		var pwdRe = $("#idDescription").css('color')=="rgb(30, 144, 255)";
    		var name = $("#idDescription").css('color')=="rgb(30, 144, 255)";
    		var birth = $("#idDescription").css('color')=="rgb(30, 144, 255)";
    		var phone = $("#idDescription").css('color')=="rgb(30, 144, 255)";
    		var addr = $("#idDescription").css('color')=="rgb(30, 144, 255)";
    		if(id&&pwd&&pwdRe&&name&&birth&&phone&&addr){
    			$('#joinDo').submit();
    		}else{
    			alert("실패");
    		}
    	}
    </script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function addrSearch() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("userAddress").value = roadAddr;
                // 커서 포커스
                document.getElementById("userAddress").focus();
            }
        }).open();
    }
</script>
</body>
</html>