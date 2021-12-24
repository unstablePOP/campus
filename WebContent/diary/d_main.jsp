<%@page import="com.campus.diary.model.vo.Frame"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
        * {
            box-sizing: border-box;
        }

        #wrap {
            width: 100%;
            height: 100%;
            background: url("./image/camper-1845590.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-position: center;
            opacity: 0.8;
            position: fixed;
            z-index: -1;
            filter: blur(2px);

        }

        #body {
            width: 100%;
            margin-top: 50px;
        }

        #pol-title {
            width: 85%;
            height: 80px;
            font-size: 25px;
            color: white;
            margin: 0 auto 10px;
            padding-left: 20px;
            padding-top: 20px;
            line-height: 70px;
        }

        #pol-area {
            width: 85%;
            height: 100%;
            margin: 0 auto;
            text-align: center;
        }


        .polaroid {
            width: 250px;
            height: 350px;
            background-color: white;
            border-radius: 5px;
            float: left;
            box-shadow: 1px 1px 5px gray;
            margin: 20px;
        }

        .delete {
            display: none;
            position: relative;
            left: 125px;
            top: -6px;
            z-index: 10;
            color: gray;
        }

        .img-area {
            width: 90%;
            height: 70%;
            margin: 15px auto;
            overflow: hidden;
            border: 1px solid #EAEAEA;
        }

        .img-area>img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .title-area {
            width: 90%;
            height: 17%;
            margin: 15px auto;
            text-align: center;
            font-size: 25px
        }

        .title {
            width: 100%;
            height: 100%;
            float: left;
            font-size: 15px;
            text-align: center;
            margin: auto;
            line-height: 50px;
        }

       

        .date {
            position: relative;
            left: -80px;
            top: 0px;
            z-index: 10;
            color: white;
            /*text-shadow: 0px 1px 2px grey;*/
        }

        #pol-add-area {
            width: 250px;
            height: 350px;
            float: left;
            margin: 15px;
            float: left;
        }

        #pol-add {
            margin: 120px auto;

        }

        #add {
            color: gray;
            cursor: pointer;
        }


        #modal {
            /*
            position: absolute;
            top: 0;
            left: 0;
            */
            width: 100%;
            height: 100%;

            display: none;

            background-color: rgba(0, 0, 0, 0.4);
        }


        #modal-area {
            position: absolute;
            top: 50%;
            left: 50%;

            width: 400px;
            height: 600px;


            text-align: center;


            transform: translateX(-50%) translateY(-50%);
        }

        #modal-pol {

            width: 375px;
            height: 525px;
            background-color: white;
            margin: 0 auto;
            padding-top: 5px;
            border-radius: 5px;
            box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
        }

        #add-img {
            width: 337.5px;
            height: 367.5px;
            margin: 22.5px auto;
            border-radius: 5px;
            background-color: #F6F6F6;
            text-align: center;
            line-height: 337.5px;
            overflow: hidden;
            border: 1px solid #F6F6F6;
        }

        label {
            cursor: pointer;
            font-size: 15px;
            color: gray;
        }

        #chooseFile {
            visibility: hidden;
        }

        #add-title {
            width: 337.5px;
            height: 89.25px;
            margin: 22.5px auto;
            text-align: center;
            background-color: #F6F6F6;
            padding-top: 10px;
        }

        #addTitle {
            border: none;
            background-color: #F6F6F6;

            width: 300px;
            height: 50px;
        }

        #addTitle:focus {
            outline: none;
            font-size: 15px;
        }


        #add-date {
            width: 375px;
            height: 30px;
            margin: 0 auto;
        }

        #add-date>input {
            float: left;
        }

        #modal-btn {
            width: 100px;
            height: 50px;
            margin: 0 auto;
        }

        #add-pol {
            float: left;
            cursor: pointer;
            color: white;
            text-shadow: 0px 1px 2px grey;
        }

        #modal-close {
            float: left;
            cursor: pointer;
            color: white;
            text-shadow: 0px 1px 2px grey;
        }

    </style>
</head>

<body>
	
	<c:choose>
			<c:when test="${member==null }">
				<script>
					location.replace('/main/login/M_Login.jsp');
				</script>
			</c:when>
			
			<c:otherwise>


    <div id="wrap">
    </div>
    <div id="header-wrap">
        <%@ include file="include/d_gnb.jsp" %>
    </div>
    <div id="body">

        <div id="pol-title">USER'S DIARY : )</div>

        <div id="pol-area">
            <div id="polaroid-wrap">
            
            
            <%
				ArrayList<Frame> list = (ArrayList<Frame>)request.getAttribute("list");
			%>
			
            
            <%if(!list.isEmpty()){%>
            
            	<%for(Frame fr : list) {%>
            	<div class="polaroid">
                    <a href="/diary/frameDeletedo?frameNo=<%=fr.getFrameNo() %>&imagePath=<%=fr.getImagePath() %>" class="delete" ><i class="xi-close-circle-o"></i></a>
                    <div class="img-area">
						<img src="<%=fr.getImagePath() %>">
                    </div>
                    <div class="title-area">
                    	<div class="title">
                    		<%if(fr.getFrameTitle()==null) {%>
                    			
                    		<%}else{ %>
                    			<%=fr.getFrameTitle() %>
                    		<%} %>
						</div>
                    </div>
                    <div class="date">
                    	<%=fr.getFrameDate() %>
                    </div>
                </div>
                <%} %>
            
            <%} %>
             
            	
            
            
            <%-- 
                <div class="polaroid">
                    <a href="" class="delete" ><i class="xi-close-circle-o"></i></a>
                    <div class="img-area">
                        <img src="image/test/nature-2588685.jpg" alt="">
                    </div>
                    <div class="title-area">
                        <div class="title">
                            불멍 조오타
                        </div>
                        <div class="mood"></div>
                        <div class="weather"></div>
                    </div>
                    <div class="date">
                        2021-12-12
                    </div>
                </div>
             --%>   
                
                
                
                
                <div id="pol-add-area">
                    <div id="pol-add">
                        <i class="xi-plus-circle xi-4x" id="add"></i>
                    </div>

                </div>
                
                <div id="modal">
                    <div id="modal-area">
                        <form action="/diary/frameUpload.do" method="post" enctype="multipart/form-data" id="addForm">
                            <div id="modal-pol">
                                <div id="add-img">

                                    <label for="chooseFile" class="add-content">클릭하여 이미지를 추가해주세요 :-)</label>
                                    <input type="file" class="add-content" id="chooseFile" name="file" accept="image/*" onchange="loadFile(this)">
                                    
                                </div>
                                <div id="add-title">
                                    <label for="addTitle">클릭하여 제목을 추가해주세요 :-)</label>
                                    <input type="text" id="addTitle" name="title">

                                </div>

                            </div>
                            <div id="add-date">
                                <input type="date" name="date" id="date">
                            </div>
                            <div id="modal-btn">
                                <div id="add-pol">
                                    <i class="xi-plus-square-o xi-3x"  id="submitBtn"></i>
                                </div>
                        </form>
                        <div id="modal-close">
                            <i class="xi-close-square-o xi-3x"></i>
                        </div>
                    </div>
                </div>
            </div>
            
            <script>
            
            	// 서브밋 버튼 클릭 했을 때 사진 사이즈 검증하고 모달창 닫기
            	$('#submitBtn').click(function(){
                   	//console.log(document.getElementById('chooseFile').files[0]);
                   	
            		var file = document.getElementById('chooseFile');
            		var fileSize = file.files[0].size;
            		//console.log(fileSize);
            		if(fileSize>(50*1024*1024))
            		{
            			alert('업로드 가능한 최대 사이즈는 50MB 입니다.');
            		}
            		else if($('#date').val()=='')
            		{
            			alert('날짜를 입력해주세요');
            			
            		}
            		else
            		{
            			$('#addForm').submit();
            			//console.log('submit');
            		}
            	});
            
            </script>

            <script>
                // modal
                $(function() {
                    $('#add').click(function() {
                        $('body').css('overflow', 'hidden'); // 스크롤 제어
                        
                        var div = $('#modal');
                        div.css("position", "absolute");
                        // 모달창 열리는 위치 현재 화면의 위치로 지정
                        div.css("top", Math.max(0, (($(window).height() - div.outerHeight()) / 2) + $(window).scrollTop()) + "px");
                        div.css("left", Math.max(0, (($(window).width() - div.outerWidth()) / 2) + $(window).scrollLeft()) + "px");
                        // 모달창 띄우기
                        $('#modal').fadeIn();
                    });
                    $('#modal-close').click(function() {
                        // 모달창 닫기
                        $('#modal').fadeOut();
                        // 스크롤 제어 해제
                        $('body').css('overflow', 'auto');
                    });

                });

            </script>

        </div>
    </div>
    <script>
        // 삭제 버튼 나타내기
        $('.polaroid').hover(function() {
            $(this).children('.delete').css('display', 'block');
            //$(this).children('.img-area').css('margin','-1px 17.5px 14px 12.5px'); 
            $(this).children('.img-area').css('margin', '-1px 17.5px 14px 12.5px');
        }, function() {
            $(this).children('.delete').css('display', 'none');
            $(this).children('.img-area').css('margin', '15px auto');
        });
        $('.delete').click(function() {
            if(window.confirm('삭제된 폴라로이드는 되돌릴 수 없습니다. 삭제하시겠습니까? ')){
            	return true;
            }else
            {
            	return false;
            }
        });

    </script>

    <script>
    
    	// 폴라로이드에 사진 추가하고 미리보기
        function loadFile(input) {
        	
        	
            // 선택된 파일 가져오기
            var file = input.files[0];
            

            // 새로운 이미지 div 추가
            var newImage = document.createElement("img");
            newImage.setAttribute("class", 'img');

            // 이미지 source 가져오기
            newImage.src = URL.createObjectURL(file);

            newImage.style.width = "100%";
            newImage.style.height = "100%";
            newImage.style.objectFit = "cover";


            var container = document.getElementById('add-img');
            $('.add-content').css('display','none');
            container.appendChild(newImage);
        };

    </script>

   

    </div>

	</c:otherwise>
			
			
	</c:choose>
		


</body>

</html>
