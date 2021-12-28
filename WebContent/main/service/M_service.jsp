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
            height: 1420px;

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
    </style>
</head>
<body>
    <div id="wrap">
        <div id="header-wrap">
            <%@include file="/common/include/gnb.jsp"%>
        </div>
        <div id="bodyWrap">
            <%@include file="/main/include/serviceBodyLogo.jsp" %>
            <div id="ContentWrap">
                <div id="helpTitleWrap">
                    <ol>
                        <h3>자주 찾는 질문</h3>
                        <li class="qna" value="1">예약을 취소하고 싶어요.</li>
                        <li class="qna" value="2">천재지변으로 인한 예약취소는 어떻게 하나요?</li>
                        <li class="qna" value="3">입실일을 변경하고 싶어요.</li>
                        <li class="qna" value="4">객실타입(사이트) 변경하고 싶어요</li>
                        <li class="qna" value="5">취소 수수료 계산 기준은 어떻게 되나요?</li>
                        <li class="qna" value="6">예약 취소했는데 언제 환불되나요?</li>
                        <li class="qna" value="7">계좌번호 확인 어디서 확인 하나요?</li>
                        <li class="qna" value="8">아이디를 잃어버렸어요.</li>
                        <li class="qna" value="9">비밀번호를 잃어버렸어요.</li>
                        <li class="qna" value="0">회원탈퇴를 하고 싶어요.</li>
                    </ol>
                </div>
                <div id="helpDiscriptionWrap">
                    <ul>
                        <li class="qnaDiscription" style="display: none" value="1">예약을 취소하고 싶어요.
                            <pre>
예약자 본인이 직접 예약확인/취소 가능합니다.
예약/결제 당시 안내된 취소/환불 규정에 따라 처리되며,
취소수수료가 발생 시 취소수수료를 차감한 금액으로 
환불 처리됩니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="2">천재지변으로 인한 예약 취소는 어떻게 하나요?
                            <pre>
일반적인 우천에 의한 예약 취소 및 변경 불가합니다.
태풍 등 기상 특보 시, 입실 당일 현장 날씨 및 캠핑장/펜션의 
정책에 따라 연기 또는 취소 결정됩니다.
입실 당일 오전에 캠핑장/펜션에 연락하셔서 
안내 받으시기 바랍니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="3">입실일을 변경하고 싶어요.
                            <pre>
예약 이용일 변경 불가합니다. (취소수수료 확인 후) 
기존 예약건 취소 및 재예약하셔야 합니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="4">객실타입(사이트) 변경하고 싶어요
                            <pre>
캠퍼스 고객센터(070-1111-2222)로 문의하시기 바랍니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="5">취소 수수료 계산 기준은 어떻게 되나요?
                            <pre>
취소수수료는 숙소별로 상이합니다.
취소수수료는 예약시점과는 무관하게 '입실일로부터 남은 날짜' 
기준으로 부과됩니다.
결제금액에서 취소수수료를 차감한 금액으로 환불 처리됩니다.
환불 예정금액은 조회 시점 및 실제 환불 진행 시점에 따라 
달라질 수 있으므로, 예약/결제 진행 당시 안내된 
취소/환불 규정을 꼭 숙지해 주시길 바랍니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="6">예약 취소했는데 언제 환불되나요?
                            <pre>
취소 신청 후 간편결제 사업자 또는 은행/신용카드사에 따라 
환불 절차에 일정 시간이 소요됩니다.
영업일 기준(토/일/공휴일 제외)으로 실시간 계좌이체 2~3일, 
신용카드 3~5일 소요됩니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="7">예약 확인 어디서 확인 하나요?
                            <pre>
마이페이지 내에서 확인하실 수 있습니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="8">아이디를 잃어버렸어요.
                            <pre>
아이디를 분실하신 경우 로그인 화면에서 아이디찾기를 진행
해주시기 바랍니다.
만약 가입시 입력했던 이메일을 잃어버리신 경우에는
캠퍼스 고객센터(070-1111-2222)로 문의주시기 바랍니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="9">비밀번호를 잃어버렸어요.
                            <pre>
비밀번호를 분실하신 경우 로그인 화면에서 비밀번호찾기를 진행
해주시기 바랍니다.
만약 가입시 입력했던 이메일을 잃어버리신 경우에는
캠퍼스 고객센터(070-1111-2222)로 문의주시기 바랍니다.
                            </pre>
                        </li>
                        <li class="qnaDiscription" style="display: none" value="0">회원탈퇴를 하고 싶어요.
                            <pre>
회원탈퇴를 원하시는 회원님께서는 먼저 로그인을 하신 후
마이페이지에서 회원탈퇴를 진행하실 수 있습니다.
(주의) 회원탈퇴시 모든 정보가 사라지며 복구는 불가능합니다.
                            </pre>
                        </li>
                    </ul>
                </div>
                <div id="questionWrap">
                    <a href="/main/service/M_serviceQuestion.jsp">1:1 문의하기</a>
                </div>
            </div>
        </div>
        <br><br><br><br><br>
        <div>
    		<%@include file="/common/include/footer.jsp" %>
    	</div>
    </div>
    <script>
    	$('.qna').click(function(){
    		var qnaVal =  $(this).val();
    		var qnaDiscriptionE = $('.qnaDiscription');
    		console.log(qnaVal);
    		console.log(qnaDiscriptionE);
    		qnaDiscriptionE.css("display","none");
    		$.each(qnaDiscriptionE,function(index,item){
    			if($(item).val()==qnaVal){
    				$(item).css("display","");
    				return;
    			}
    		});
    	});
    </script>
</body>
</html>