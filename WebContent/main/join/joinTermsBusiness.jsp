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
            height: 1300px;
            box-sizing: border-box;
            margin: 0px auto;
        }
		#header-wrap {
            width: 100%;
            height: 100px;
        }
        #bodyWrap{
            width: 100%;
            height: 1000px;
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
        #joinStep li:first-child{
            background-color: skyblue;
        }
        .nextInfo{
            font-size: 35px;
        }
        
        /* 이용약관 CSS */
        .termsWrap{
            width: 78%;
            height: 300px;
            margin: 0 auto;
        }
        /* 이용약관 체크 CSS */
        .checkWrap{
            border: 1px solid rgba(220,220,220,0.5);
            background-color: rgba(220,220,220,0.2);
            width: 100%;
            height: 50px;
            padding: 12px;
        }
        /* 이용약관 텍스트 CSS */
        .termsTextWrap{
            border: 1px solid rgba(220,220,220,0.5);
            width: 100%;
            height: 250px;
            margin-top: -1px;
            border-top: none;
        }
        .termsText{
            border: none;
            width: 100%;
            height: 100%;
            padding: 20px;
            font-size: 14px;
            resize: none;
            background-color: white;
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
        
        /* 모두 체크 CSS */
        #allCheckWrap{
            height: 20px;
            width: 160px;
            margin: 0 auto;
            font-size: 18px;
        }
        
        /* label 전체 적용 CSS */
        label{
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div id="wrap">
        <div id="header-wrap">
            <%@include file="/common/include/gnb.jsp" %>
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
            <br>
<%-- 이용 약관 부분 --%>
            <div class="termsWrap">
                <div class="checkWrap">
                    <label><input type="checkbox" class="termsCheck" id="useTerms"> 이용약관 동의 <span style="color: blue">(필수)</span></label>
                </div>
                <div class="termsTextWrap">
                    <textarea class="termsText" disabled=true>
제1장 총칙

    제1조 (목적)
이 약관은 Campus (이하 "캠퍼스"라 합니다) 홈페이지가 제공하는 통합회원 서비스(이하 "서비스"라 합니다)를 이용함에 있어 이용자와 캠퍼스간의 권리·의무 및 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.

    제2조 (약관의 효력 및 변경)
① 이 약관은 서비스 화면에 게시하거나 기타의 방법으로 공지함으로써 이용자에게 공시하고, 이에 동의한 이용자가 서비스에 가입함으로써 효력이 발생합니다.
② 캠퍼스는 필요하다고 인정되는 경우 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 서비스 화면에 공지함으로써 이용자가 직접 확인할 수 있도록 할 것입니다.
③ 이용자는 변경된 약관에 동의하지 않으실 경우 서비스 이용을 중단하고 본인의 회원등록을 취소할 수 있으며, 계속 사용하시는 경우에는 약관 변경에 동의한 것으로 간주되며 변경된 약관은 전항과 같은 방법으로 효력이 발생합니다.
④ 이용자가 이 약관의 내용에 동의하는 경우 캠퍼스의 서비스 제공행위 및 이용자의 서비스 이용행위에는 이 약관이 우선적으로 적용될 것입니다. 이 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신망이용촉진및정보보호등에관한법률, 방송통신심의위원회 심의규정, 정보통신 윤리강령, 프로그램 보호법 등 기타 대한민국의 관련법령과 상관습에 의합니다.

    제3조 (용어의 정의)
① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. 이용자 : 서비스에 접속하여 캠퍼스가 제공하는 서비스를 받는 회원 및 비회원
2. 회원 : 서비스에 접속하여 이 약관에 동의하고, ID(고유번호)와 PASSWORD(비밀번호)를 발급 받아 문자 인증 등 확인 절차를 거친 자
3. 비회원 : 회원가입을 하지 않고 캠퍼스가 제공하는 서비스를 이용하는 자
4. ID(고유번호) : 회원 식별과 회원의 서비스 이용을 위하여 이용자가 선정하고 캠퍼스가 승인하는 영문자와 숫자의 조합
5. PASSWORD(비밀번호) : 회원의 정보 보호를 위해 이용자 자신이 설정한 문자와 숫자의 조합
6. 이용해지 : 캠퍼스 또는 회원이 서비스 이용 이후 그 이용계약을 종료시키는 의사표시
② 이 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 안내에서 정하는 바에 의합니다.


제2장 서비스 이용계약

    제4조 (이용계약의 성립) 이용계약은 이용자의 약관내용에 대한 동의와 이용자의 이용신청에 대한 캠퍼스의 승낙으로 성립합니다.

    제5조 (이용신청) 이용신청은 서비스의 회원정보 화면에서 이용자가 캠퍼스에서 요구하는 가입신청 양식에 개인의 신상정보를 기록하는 방식으로 신청합니다.

    제6조 (이용신청의 수락과 거절)
① 캠퍼스는 제5조에서 정한 사항을 정확히 기재하여 이용신청을 하였을 경우 특별한 사정이 없는 한 서비스 이용신청을 수락합니다.
1. 내용이 허위(차명 등)인 것으로 판명되거나, 그러하다고 의심할만한 합리적인 사유가 발생할 경우
2. 기타 캠퍼스가 필요하다고 인정되는 경우
② 캠퍼스는 다음 각 호에 해당하는 경우에 대하여는 그 신청에 대한 제한 사유가 해소될 때까지 일부 서비스 이용을 제한할 수 있습니다.
1. 내용이 허위(차명 등)인 것으로 판명되거나, 그러하다고 의심할만한 합리적인 사유가 발생할 경우
2. 기타 캠퍼스가 필요하다고 인정되는 경우
③ 캠퍼스는 다음에 해당하는 경우에는 이용신청을 제한할 수 있습니다.
1. 다른 사람의 명의를 사용하여 신청하였을 때
2. 신청서의 내용을 허위로 기재하였을 때
3. 사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청하였을 때
4. 기타 캠퍼스가 정한 이용신청 요건이 미비 되었을 때

    제7조 (계약사항의 변경) 회원은 회원정보관리를 통해 언제든지 자신의 정보를 열람하고 수정할 수 있습니다. 회원은 이용신청 시 기재한 사항이 변경되었을 때에는 수정을 하여야 하며, 수정하지 아니하여 발생하는 문제의 책임은 회원에게 있습니다.


제3장 서비스 제공 및 이용

    제8조 (서비스 이용)
① 캠퍼스는 회원의 이용신청을 수락한 때부터 서비스를 개시합니다. 단, 일부 서비스의 경우에는 지정된 일자부터 서비스를 개시합니다.
② 캠퍼스의 업무상 또는 기술상의 장애로 인하여 서비스를 개시하지 못하는 경우에는 사이트에 공시하거나 회원에게 이를 통지합니다.
③ 서비스의 이용은 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 캠퍼스의 업무상 또는 기술상의 이유로 서비스가 일시 중지될 수 있고, 또한 정기점검 등 운영상의 목적으로 캠퍼스가 정한 기간에는 서비스가 일시 중지될 수 있습니다. 이러한 경우 캠퍼스는 사전 또는 사후에 이를 공지합니다.
④ 회원에 가입한 후라도 일부 서비스 이용 시 서비스 제공자의 요구에 따라 특정 회원에게만 서비스를 제공할 수도 있습니다.
⑤ 캠퍼스는 서비스를 일정범위로 분할하여 각 범위별로 이용가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다.

    제9조 (서비스의 변경, 중지 및 정보의 저장과 사용)
① 회원은 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의 비상사태, 정전, 캠퍼스의 관리범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실에 대해 캠퍼스가 아무런 책임을 지지 않음에 동의합니다.
② 캠퍼스가 정상적인 서비스 제공의 어려움으로 인하여 일시적으로 서비스를 중지하여야 할 경우에는 서비스 중지 1주일전에 고지 후 서비스를 중지할 수 있으며, 이 기간동안 회원이 고지내용을 인지하지 못한데 대하여 캠퍼스는 책임을 부담하지 아니합니다. 상당한 이유가 있을 경우 위 사전 고지기간은 감축되거나 생략될 수 있습니다. 또한 위 서비스 중지에 의하여 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 대하여도 캠퍼스는 책임을 부담하지 아니합니다.
③ 캠퍼스의 사정으로 서비스를 영구적으로 중단하여야 할 경우 제2항을 준용합니다. 다만, 이 경우 사전 고지기간은 1개월로 합니다.
④ 캠퍼스는 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 회원 또는 제3자에게 어떠한 책임도 부담하지 아니합니다.
⑤ 캠퍼스는 회원이 이 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 중지할 수 있습니다. 이 경우 캠퍼스는 회원의 접속을 금지할 수 있으며, 회원이 게시한 내용의 전부 또는 일부를 임의로 삭제할 수 있습니다.
⑥ 장기간 휴면 회원인 경우 안내 메일 또는 공지사항 발표 후 1주일간의 통지 기간을 거쳐 서비스 사용을 중지할 수 있습니다.

    제10조 (정보의 제공 및 광고의 게재)
① 캠퍼스는 회원이 서비스 이용 중 필요가 있다고 인정되는 다양한 정보 및 광고에 대해서는 전자우편이나 서신우편, SMS(휴대폰 문자메시지), DM, 메신저 등의 방법으로 회원에게 제공할 수 있으며, 만약 원치 않는 정보를 수신한 경우 회원은 이를 수신거부 할 수 있습니다.
② 캠퍼스는 서비스의 운용과 관련하여 서비스화면, 홈페이지, 전자우편 등에 광고 등을 게재할 수 있으며, 캠퍼스는 서비스를 이용하고자 하는 회원이 이 광고게재에 대하여 동의하는 것으로 간주합니다.
③ 캠퍼스는 서비스 상에 게재되어 있거나 서비스를 통한 광고주와의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다

    제11조 (게시물 또는 내용물의 삭제)
① 캠퍼스는 회원이 게시하거나 등록하는 서비스 내의 모든 내용물이 다음 각 호의 경우에 해당된다고 판단되는 경우 사전 통지 없이 삭제할 수 있으며, 이에 대해 캠퍼스는 어떠한 책임도 지지 않습니다.
1. 캠퍼스, 다른 회원 또는 제3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우
2. 공공질서 및 미풍양속에 위반되는 내용인 경우
3. 범죄적 행위에 결부된다고 인정되는 내용일 경우
4. 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우
5. 서비스 성격에 부합하지 않는 정보의 경우
6. 기타 관계 법령 및 캠퍼스에서 정한 규정 등에 위배되는 경우
② 캠퍼스는 서비스에 게시된 내용을 사전 통지된 지 3일 이후 편집, 이동, 삭제할 수 있는 권리를 보유하며, 게시된 내용이 이 약관에 위배되거나 상용 또는 비합법적, 불건전한 내용일 경우 및 해지 회원이 게시한 게시물은 사전통보 없이 삭제할 수 있습니다.
③ 캠퍼스는 게시된 내용이 일정기간 이상 경과되어, 게시물로써의 효력을 상실하여 그 존치 목적이 불분명한 경우 공지사항 발표 후 1주일간의 통지기간을 거쳐 해당 게시물을 삭제할 수 있습니다.

    제12조 (게시물의 저작권)
① 회원이 서비스 내에 게시한 게시물의 저작권은 회원에게 있으며, 캠퍼스는 다른 서비스에서의 개재 등 활용할 수 있습니다.
② 회원의 게시물이 타인의 저작권, 프로그램 저작권 등을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 회원이 부담하여야 합니다.
③ 회원은 서비스를 이용하여 얻은 정보를 가공, 판매하는 행위 등 서비스에 게재된 자료를 상업적으로 사용할 수 없습니다.

    제13조 (캠퍼스의 소유권)
① 캠퍼스가 제공하는 서비스, 그에 필요한 소프트웨어, 이미지, 마크, 로고, 디자인, 서비스명칭, 정보 및 상표 등과 관련된 지적재산권 및 기타권리는 캠퍼스에게 소유권이 있습니다.
② 회원은 캠퍼스가 명시적으로 승인한 경우를 제외하고는 제1항 소정의 각 재산에 대한 전부 또는 일부의 수정, 대여, 대출, 판매, 배포, 제작, 양도, 재라이센스, 담보권 설정행위, 상업적 이용행위를 할 수 없으며, 제3자로 하여금 이와 같은 행위를 하도록 허락할 수 없습니다.


제4장 계약 당사자의 의무

    제14조 (회원의 의무 및 정보보안)
① 회원은 서비스 이용을 위해 가입할 경우 현재의 사실과 일치하는 완전한 정보(이하 "가입정보"라 한다)를 제공하셔야 합니다. 또한 가입정보에 변경이 발생할 경우 즉시 갱신하셔야 합니다.
② 회원이 서비스 사용을 위한 가입절차를 완료하시면 아이디와 비밀 번호를 받게 됩니다. 회원의 아이디, 비밀번호 관리를 위해
1. 회원의 승인 없이 비밀번호, 아이디가 사용되는 문제가 발생되면 즉시 캠퍼스에 신고하셔야 하고
2. 매 접속 종료 시 확실히 로그아웃을 하셔야 합니다.
③ 회원은 서비스를 이용하면서 다음과 같은 행위를 하지 않기로 동의합니다.
1. 타인(소수를 포함)에게 위해를 가하는 행위
가. 타인의 ID, PASSWORD 및 타인으로 가장하는 행위
나. 타인과의 관계를 허위로 명시하는 행위
다. 타인을 비방할 목적으로 사실 또는 허위의 사실을 적시하여 명예를 훼손하는 행위
라. 자기 또는 타인에게 재산상의 이익을 주거나 타인에게 손해를 가할 목적으로 허위의 정보를 유통시키는 행위
마. 수치심이나 혐오감 또는 공포심을 일으키는 말이나 음향, 글이나 화상 또는 영상을 계속하여 상대방에게 도달하게 하여 상대방의 일상적 생활을 방해하는 행위
바. 캠퍼스의 사전 승낙 없이 서비스를 이용한 영리행위
사. 타인의 정보통신서비스 이용명의를 도용하여 사용하는 행위
2. 불필요하거나 승인되지 않은 광고, 판촉물을 게재하거나, "정크 메일(junk mail)", "스팸(spam)", "행운의 편지(chain letters)", "도배글", "피라미드 조직" 등을 권유하거나 게시, 게재 또는 전자우편으로 보내는 행위
3. 저속 또는 음란한 데이터, 텍스트, 소프트웨어, 음악, 사진, 그래픽, 비디오 메시지 등(이하 "콘텐츠")을 게시, 게재 또는 전자우편으로 보내는 행위
4. 권리(지적재산권을 포함한 모든 권리)가 없는 콘텐츠를 게시, 게재 또는 전자우편으로 보내는 행위
5. 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비를 파괴, 방해 또는 기능을 제한하기 위한 소프트웨어 바이러스를 게시, 게재 또는 전자우편으로 보내는 행위
6. 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시, 게재, 전자우편으로 보내는 행위 등 다른 사용자의 개인정보를 수집 또는 저장하는 행위
7. 재물을 걸고 도박하거나 사행행위를 하는 행위
8. 윤락행위를 알선하거나 음행을 매개하는 내용의 정보를 유통시키는 행위
9. 기타 불법적이거나 부당한 행위
④ 회원은 이 약관 및 관계법령에서 규정한 사항을 준수하여야 합니다.

    제15조 (캠퍼스의 의무)
① 캠퍼스는 특별한 사정이 없는 한 회원이 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록 합니다.
② 캠퍼스는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.
③ 캠퍼스가 제공하는 서비스로 인하여 회원에게 손해가 발생한 경우 그러한 손해가 캠퍼스의 고의나 중과실에 기해 발생한 경우에 한하여 캠퍼스에서 책임을 부담하며, 그 책임의 범위는 통상손해에 한합니다.
④ 캠퍼스는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 신속히 처리하여야 합니다. 다만, 신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 통보하여야 합니다.
⑤ 캠퍼스는 관련법령이 정하는 바에 따라서 회원 등록정보를 포함한 회원의 개인정보를 보호하기 위하여 노력합니다. 회원의 개인정보보호에 관해서는 관련법령 및 제 16조에 제시된 내용을 지킵니다.

    제16조 (개인정보보호정책)
① 캠퍼스는 이용 신청 시 회원이 제공하는 정보를 통하여 회원에 관한 정보를 수집하며, 회원의 개인정보는 본 이용계약의 이행과 본 이용계약상의 서비스제공을 위한 목적으로 이용합니다.
② 캠퍼스는 서비스 제공과 관련하여 취득한 회원의 정보를 본인의 승낙 없이 제3자에게 누설 또는 배포할 수 없으며 상업적 목적으로 사용할 수 없습니다. 다만, 다음의 각 호의 경우에는 그러하지 아니합니다.
1.관계 법령에 의하여 수사상의 목적으로 관계기관으로부터 요구가 있는 경우
2.방송통신심의위원회의 요청이 있는 경우
3.기타 관계법령에서 정한 절차에 따른 요청이 있는 경우


제5장 계약해지

    제17조 (계약해지 및 이용제한)
① 회원이 이용계약을 해지하고자 하실 때에는 회원 본인이 직접 인터넷을 통해 당 사이트에 해지 신청을 하여야 합니다.
② 캠퍼스는 보안 및 아이디 정책, 서비스의 원활한 제공 등과 같은 이유로 회원의 ID 및 PASSWORD 변경을 요구하거나 변경 할 수 있습니다.
③ 캠퍼스는 회원이 다음 각 호에 해당하는 행위를 하였을 경우 사전통지 없이 이용계약을 해지할 수 있습니다.
1. 회원이 제공한 데이터가 허위임이 판명된 경우
2. 범죄적 행위에 관련되는 경우
3. 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행할 경우
4. 타인의 서비스 아이디 및 비밀 번호를 도용한 경우
5. 타인의 명예를 손상시키거나 불이익을 주는 경우
6. 서비스에 위해를 가하는 등 서비스의 건전한 이용을 저해하는 경우
7. 기타 관련법령이나 캠퍼스가 정한 이용조건에 위배되는 경우


제6장 기타

    제18조 (요금 및 유료정보)
서비스 이용은 기본적으로 무료입니다. 단, 서비스에서 정한 별도의 유료 정보와 유료서비스에 대해서는 그러하지 아니합니다.


    제19조 (양도금지)
회원은 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.



제7장 손해배상 등

    제20조 (손해배상) 캠퍼스는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 동 손해가 캠퍼스의 중대한 과실에 의한 경우를 제외하고 이에 대하여 책임을 부담하지 아니합니다.

     제21조 (면책조항)
① 캠퍼스는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.
② 캠퍼스는 회원의 귀책사유로 인한 서비스이용의 장애에 대하여 책임을 지지 않습니다.
③ 캠퍼스는 회원이 서비스를 이용하여 기대하는 이익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.
④ 캠퍼스는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.

    제22조 (관할법원)
① 서비스 이용과 관련하여 캠퍼스와 회원 사이에 분쟁이 발생한 경우, 캠퍼스와 회원은 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 합니다
② 제1항의 규정에도 불구하고 서비스 이용으로 발생한 분쟁에 대하여 소송이 제기될 경우 캠퍼스 소재지를 관할하는 법원을 관할법원으로 합니다.


제8장 마일리지

    제23조 (마일리지)
① 캠퍼스는 회원의 홈페이지 참여 실적에 따라 그에 해당하는 누적 점수를 부여할 수 있으며 이를 마일리지라고 합니다.
② 캠퍼스는 회원이 자신의 마일리지를 쉽게 확인할 수 있도록 합니다.
③ 캠퍼스는 마일리지 제공 서비스를 선정하며 사전공지를 통해 마일리지의 종류 및 이용방법 등에 대한 변경을 할 수 있습니다. 단, 마일리지 서비스 일부 변경시 소급하여 적용되지는 않습니다.
④ 회원은 마일리지 점수에 따라 명시된 혜택을 사용할 수 있습니다.
⑤ 적립된 마일리지를 사용하면 해당 마일리지만큼 차감되며, 차후 이용 실적에 따라 계속 적립이 이루어집니다.
⑥ 캠퍼스 마일리지는 적립일을 기준으로 2년동안 유효하며 2년이 지난 이후에는 자동소멸 됩니다. 자동소멸된 마일리지는 환원이 불가능합니다.
부 칙

(시행일) 이 약관은 2021년 12월 10일부터 적용합니다.
                    </textarea>
                </div>
            </div>
            <br>
<%-- 개인 정보 약관 부분 --%>
            <div class="termsWrap">
                <div class="checkWrap">
                    <label><input type="checkbox" class="termsCheck" id="inforTerms"> 개인정보수집·이용 내역 동의 <span style="color: blue">(필수)</span></label>
                </div>
                <div class="termsTextWrap">
                    <textarea class="termsText" disabled=true>
제1장 수집항목
아이디, 비밀번호, 연락처, 거주지 시/도, 이메일 주소, 이름, 생년월일, 성별, 중복가입확인정보(DI)

제2장 자동수집
접속 로그, 쿠키, 접속 IP 정보, 가입경로

제3장 수집이용 목적
캠퍼스 웹사이트 통합회원 관리, 캠퍼스 웹사이트 통합회원 중복가입 방지, 캠퍼스 웹사이트 서비스 및 콘텐츠 제공
(민원 신청‧처리, 공지사항 전달, 게시물 등록, 자료 다운로드, 서비스 예약, 전자민원 접수, 데이터 이용, 빅데이터 캠퍼스 이용)

제4장 보유기간 2년
                    </textarea>
                </div>
            </div>
            <br>
<%-- 전체 체크 박스 --%>
            <div id="allCheckWrap">
                <label><input type="checkbox" id="allCheck">모두 동의합니다.</label>
            </div>
            <br>
<%-- 다음 단계 button 부분 --%>
            <div id="nextStepBtnWrap">
                    <input type="button" value="다음단계" id="nextStepBtn">
            </div>
        </div>
    </div>
<script>
		$("#nextStepBtn").click(function(){
			if(!$("#allCheck").is(':checked')){
				alert("약관에 모두 동의하셔야합니다.");
			}else{
				location.replace('/main/join/joinCertifiedBusiness.jsp')
			}
		});
		
		$("#allCheck").click(function(){
			if($(this).is(':checked')){
				$('.termsCheck').prop('checked',true);
			}else{
				$('.termsCheck').prop('checked',false);
			}
		});
		
		$('.termsCheck').click(function(){
			var inforTerms = $('#inforTerms').is(':checked');
			var useTerms = $('#useTerms').is(':checked');
			if(inforTerms==true && useTerms==true){
				$('#allCheck').prop('checked',true);
			}else{
				$('#allCheck').prop('checked',false);
			}

		});
	</script>
</body>
</html>