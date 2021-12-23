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
/* contentWrap */
        #ContentWrap {
            width: 100%;
            height: 450px;
        }
/* table css */
        #serviceTbl{
        	margin:0 auto;
        	width:100%;
        	overflow: hidden;
        	text-align:center;
        	table-layout: fixed;
        	border-spacing: 0px;
        }
        #serviceNo{
        	width:10%;
        }
		#serviceSubject{
			width:50%;
		}
		#serviceDate{
			width:20%;
		}
		#serviceCondition{
			width:20%;
		}
/* head css */
		#theadTr{
			height:40px;
		}
		.headTh{
			border-top:1px solid black;
			border-bottom:1px solid black;
		}
/* content css */
		.tbodyTr{
			height:60px;
		}
		.contentTd{
			border-bottom:1px solid rgba(220,220,220,0.7);
		}
		#tfootTr{
			height:60px;
		}
    </style>
</head>
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
				<table id="serviceTbl">
					<thead id="tblHead">
						<tr id="theadTr">
							<th id="serviceNo" class="headTh">문의 번호</th>
							<th id="serviceSubject" class="headTh">문의 제목</th>
							<th id="serviceDate" class="headTh">문의 날자</th>
							<th id="serviceCondtion" class="headTh">문의 상황</th>
						</tr>
					</thead>
					<tbody id="contentBody">
						<c:forEach items="${map.list }" var="s" varStatus="i">
							<tr class="tbodyTr">
								<td class="contentTd">${s.serviceNo }</td>
								<td class="contentTd"><a href="/main/serviceSelectContent.do?serviceNo=${s.serviceNo }&currentPage=${currentPage}">${s.serviceSubject }</a></td>
								<td class="contentTd">${s.serviceDate }</td>
								<td class="contentTd">${s.serviceAnswer }</td>
							</tr>
						</c:forEach>
					</tbody>
					<tbody id="naviBody">
					<tr id="tfootTr">
						<td colspan="4" align="center">${map.pageNavi }</td>
					</tr>
					</tbody>
				</table>
            </div>
        </div>
    </div>
</body>
</html>