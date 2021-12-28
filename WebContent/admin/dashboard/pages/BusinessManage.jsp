<%@page import="java.util.ArrayList"%>
<%@page import="com.campus.board.free.model.vo.FreeBoard"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <title>
    	게시판 1 ?
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="../assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
  <style>
  	#tableWrap{
  		width:100%;
  		height:450px;
  		border:1px solid black;
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
		.tbodyTr:hover{
			background-color: rgba(220,220,220,0.3);
		}
		.contentTd{
			border-bottom:1px solid rgba(220,220,220,0.7);
		}
		.contentTd>a{
			text-decoration: none;
			color:black;
		}
		#tfootTr{
			height:60px;
		}
		.answerCondition{
			padding:0px 70px;
		}
		#serviceRegister{
			border:1px solid #ff5000;
			height:40px;
			line-height: 40px;
			color:#ff5000;
		}
		#serviceEnd{
			border:1px solid #999;
			height:40px;
			line-height: 40px;
			color:#999
		}
		.navi{
			text-decoration: none;
			color:black;
			border:1px solid black;
			display:inline-block;
			width:25px;
			margin:0px -1px;;
		}
		#focusNavi{
			border-color:#ff5000;
		}
		.navi:hover{
			background-color: rgba(220,220,220,0.5);
		}
  </style>
</head>
<body class="g-sidenav-show  bg-gray-200">
<!-- 
==================================================================================================
     1. navi 바를 위한 인클루드 자바 스크립트  코드
     2.html문서가 로드되는 시점에 실행되는 함수 모든 엘리먼트들을 불러옴
     3.
        Array.prototype.forEach.call 유사배열에도 el 사용 가능
        el 엘리먼트들 중에서 data-include-path 속성이 붙은 값을 찾는다
        outerHTML을 쓴 이유는 자기자신을 포함하고 각각 html에서 태그들을 사용하기 위해
        예를 들어 <header></header> 으로 쓸수도있고 <div id="header"></div> 를 사용하는것 같이
===================================================================================================
-->
 <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
   <body>
     <div data-include-path="navi.jsp"></div>
 
    <script>
 
        window.addEventListener('load', function() {
            var allElements = document.getElementsByTagName('*');
            Array.prototype.forEach.call(allElements, function(el) {
                var includePath = el.dataset.includePath;
                if (includePath) {
                    var xhttp = new XMLHttpRequest();
                    xhttp.onreadystatechange = function () {
                        if (this.readyState == 4 && this.status == 200) {
                            el.outerHTML = this.responseText;
                        }
                    };
                    xhttp.open('GET', includePath, true);
                    xhttp.send();
                }
            });
        });
 
    </script>
    </aside> 
</body>
</aside>
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
<!-- Navbar -->
    <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
      <div class="container-fluid py-1 px-3">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Pages</a></li>
            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Tables</li>
          </ol>
          <h6 class="font-weight-bolder mb-0">Tables</h6>
        </nav>
        <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
          <div class="ms-md-auto pe-md-3 d-flex align-items-center">
            <div class="input-group input-group-outline">
              <label class="form-label">구현안됨...</label>
              <input type="text" class="form-control">
            </div>
          </div>
          <ul class="navbar-nav  justify-content-end">
            <li class="nav-item d-flex align-items-center">
              <a href="/userPage/u_main.jsp" class="nav-link text-body font-weight-bold px-0">
                <i class="fa fa-user me-sm-1"></i>
                ${member.userName }</a>님<br> <a href="" class="notes">
              </a>
            </li>
            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                <div class="sidenav-toggler-inner">
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                  <i class="sidenav-toggler-line"></i>
                </div>
              </a>
            </li>
            <li class="nav-item px-3 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0">
                <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
              </a>
            </li>
            <li class="nav-item dropdown pe-2 d-flex align-items-center">
              <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-bell cursor-pointer"></i>
              </a>
               <!-- 알람구현 공간 -->
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
    <%
    HashMap<String, Object> map = (HashMap<String, Object>)request.getAttribute("map");
    ArrayList<FreeBoard> list = (ArrayList<FreeBoard>)map.get("list");
    int currentPage = (int)request.getAttribute("currentPage");
    %>
			<div id="tableWrap">
				<table id="freeTbl">
					<thead id="tblHead">
						<tr id="theadTr">
							<th id="serviceNo" class="headTh">글 번호</th>
							<th id="serviceSubject" class="headTh">글 제목</th>
							<th id="serviceDate" class="headTh">글 날자</th>
							<th id="serviceCondtion" class="headTh">삭제 여부</th>
						</tr>
					</thead>
					<tbody id="contentBody">
						<%for(FreeBoard f : list){ %>
							<tr class="tbodyTr">
								<td class="contentTd"><%=f.getFreeNo() %></td>
								<td class="contentTd"><a href="/board/free/selectOne.do?freeNo=<%=f.getFreeNo() %>&currentPage=<%=currentPage%>"><%=f.getFreeTitle() %></a></td>
								<td class="contentTd"><%=f.getFreeDate() %></td>
								<td class="contentTd answerCondition">
									<%if(f.getFreeWithdrawal()=='N'){ %>
										<div id="serviceRegister">삭제</div>
									<%}else{ %>	
										<div id="serviceEnd">복구</div>
									<%} %>
								</td>
							</tr>
						<%} %>
					</tbody>
					<tbody id="naviBody">
					<tr id="tfootTr">
						<td colspan="4" align="center">${map.pageNavi }</td>
					</tr>
					</tbody>
				</table>
			</div>      
      <!-- footer   -->
      <footer class="footer py-4  ">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-sm text-muted text-lg-start">
                © <script>
                  document.write(new Date().getFullYear())
                </script>,
                made with <i class="fa fa-heart"></i> by
                <a href="https://www.instagram.com/zza___o/" class="font-weight-bold" target="_blank">Kim J O</a>
                for a better web.
              </div>
            </div>
            <div class="col-lg-6">
              <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                <li class="nav-item">
                  <a href="https://www.instagram.com/zza___o/" class="nav-link text-muted" target="_blank">inster Kim</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.naver.com/" class="nav-link text-muted" target="_blank">naver</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.facebook.com/ElectronicCat" class="nav-link text-muted" target="_blank">Facebook</a>
                </li>
                <li class="nav-item">
                  <a href="https://www.youtube.com/" class="nav-link pe-0 text-muted" target="_blank">youtube</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
  </main>

</html>