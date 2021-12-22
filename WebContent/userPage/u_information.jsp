<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        #addressBtn{
        	background-color: white;
        }
        #addressBtn:hover{
        	cursor: pointer;
        }

        .update {
            border: 1px solid #FFC996;
        }
        .update:focus{
        	outline: 1px solid #FFC996;
        }

        #btn {
            display: inline-block;
            margin-left: 400px;
            margin-top: 10px;
            width: 400px;
            height: 100px;
            text-align: center;
        }

        #submitBtn {
            width: 150px;
            height: 80px;
            background-color: white;
            color: #5D5D5D;
            border-radius: 3px;
            border: 1px solid #FFC996;
        }

        #submitBtn:hover {
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

        #delbtn>a:hover {
            color: white;
        }



        #footer {
            width: 1250px;
            height: 400px;
            /*background-color: #F6F6F6;
            margin: 20px auto 0;*/
        }

    </style>
</head>

<body>
    <div id="wrap">
        <div id="header-wrap">
            <%@ include file="include/u_gnb.jsp" %>
        </div>


        <c:choose>
            <c:when test="${member==null }">
                <script>
                    location.replace('/main/login/M_Login.jsp');

                </script>
            </c:when>

            <c:otherwise>


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
                            <form action="/member/memberUpdate.do" method="post" onsubmit="return checks()">

                                <table>
                                    <tr>
                                        <td>
                                            <div class="form-div">아이디</div>
                                            <i class="xi-sun-o"></i>
                                        </td>
                                        <td>
                                            <input type="text" readonly value="${member.userId }">
                                            <div class="form-div2">( 영어 대소문자 / 숫자 , 5~15자 )</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-div">비밀번호</div>
                                            <i class="xi-sun-o"></i>

                                        </td>
                                        <td>
                                            <input type="password" class="update" name="pwd" id="pwd">
                                            <div class="form-div2" id="pwdDiv">( 영어 대소문자 / 숫자 / 특수문자 포함 , 5~15자 ) ( 특수문자 : ~ ! @ # $ % ^ * ( ) = _ . | )</div>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-div">비밀번호 확인</div>
                                            <i class="xi-sun-o"></i>

                                        </td>
                                        <td>
                                            <input type="password" class="update" id="rePwd">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-div">이름</div>
                                            <i class="xi-sun-o"></i>
                                        </td>
                                        <td>
                                            <input type="text" readonly value="${member.userName}" name="name">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-div">휴대전화</div>
                                            <i class="xi-sun-o"></i>
                                        </td>
                                        <td>
                                            <input type="text" class="update" value="${member.userPhone }" name="phone" id="phone">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div class="form-div">이메일</div>
                                            <i class="xi-sun-o"></i>
                                        </td>
                                        <td>
                                            <input type="email" readonly value="${member.userEmail }" name="email">
                                            <div class="form-div2">( '@' 포함된 이메일 형식 )</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-div">주소</div>
                                            <i class="xi-sun-o"></i>
                                        </td>
                                        <td>
                                            <input type="text" class="update" size="40" value="${member.userAddress }" name="address" id="address">
											<input type="button" value="주소찾기" id="addressBtn" onclick="sample5_execDaumPostcode()">                             	
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="form-div">생년월일</div>
                                            <i class="xi-sun-o"></i>
                                        </td>
                                        <td>
                                            <input type="text" readonly value="${member.userBirth }" name="birth">
                                        </td>
                                    </tr>

                                </table>

                                <div id="btn">
                                    <input type="submit" value="회원 정보 수정" id="submitBtn">
                                    <input type="reset" value="취소" id="reset">

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



    </div>

    </c:otherwise>


    </c:choose>
    
    
    
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>

    function sample5_execDaumPostcode() {
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
                document.getElementById("address").value = roadAddr;
                // 커서 포커스
                document.getElementById("address").focus();
            	
            	
            }
        }).open();
    }
</script>	



    <script>
    
    <%-- Pwd 유효성 검사 --%>
	$("input[name='pwd']").keyup(function(){
		var regPwd= /^(?=.*[!@#$%^&*()])(?=.*[a-zA-Z])(?=.*[0-9]).{8,15}$/;
		if(regPwd.test($(this).val())){
			$('#pwdDiv').css('color','dodgerblue');
			$('#pwd').css('outlineColor','dodgerblue');
		}else{
			$('#pwdDiv').css('color','red');
		}
	});
	<%-- Pwd 재검사 --%>
	$("input[id='rePwd']").keyup(function(){
		if($(this).val()==$("input[name='pwd']").val()){
			$('#rePwd').css('outlineColor','dodgerblue');
		}else{
			$('#rePwd').css('outlineColor','red');
		}
	});
	<%-- 연락처 유효성 검사 --%>
	$("input[name='phone']").keyup(function(){
		var regPhone=/^\d{2,3}\d{3,4}\d{4}$/
		if(regPhone.test($(this).val())){
			$('#phone').css('outlineColor','dodgerblue');
		}else{
			$('#phone').css('outlineColor','red');
		}
	});
	
    	
    	function checks(){
    		var $pwd = $('#pwd');
        	var $rePwd = $('#rePwd');
        	
        	
        	if($pwd.val() == ""){
        		alert("비밀번호를 입력해주세요."); 
        		$pwd.focus(); 
        		$pwd.css('outlineColor','red');
        		return false; 
        	}
        	if($('#pwdDiv').css('color')!="rgb(30, 144, 255)"){
        		alert("비밀번호를 양식에 맞게 입력해주세요."); 
        		$pwd.focus(); 
        		$pwd.css('outlineColor','red');
        		return false; 
        	}
        	
        	if($rePwd.val() == ""){
        		alert("비밀번호 확인을 입력해주세요."); 
        		$rePwd.focus(); 
        		$rePwd.css('outlineColor','red');
        		return false; 
        	}
        	
        	if($pwd.val() != $rePwd.val()){
        		alert("비밀번호가 일치하지 않습니다."); 
        		$rePwd.focus(); 
        		$rePwd.css('outlineColor','red');
        		return false;
        	}
        	
        	if($('#phone').val() == ""){
        		alert("전화번호를 입력해주세요."); 
        		$('#phone').focus(); 
        		$rePwd.css('outlineColor','red');
        		return false; 
        	}
        	if($('#address').val() == ""){
        		alert("주소를 입력해주세요."); 
        		$('#address').focus(); 
        		$rePwd.css('outlineColor','red');
        		return false; 
        	}
        	
        	if (window.confirm("회원 정보를 수정합니다. (취소 버튼을 누르면 취소됩니다.)")) 
            {
                return true;
            } else {
                return false;
            }
            
            return false;
    		
    		
    		
    	}
		
    	
    	
    
        $('#reset').click(function() {
            location.replace('u_main.jsp');
        });
        
       

    </script>

</body>

</html>
