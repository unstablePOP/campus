<%@page import="com.campus.member.model.vo.Member"%>
<%@page import="com.campus.board.free.model.vo.FreeBoard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<title>CampUs-자유게시판</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/community/include/post.css">
	<style>
        #postaction{
            padding-left:63%;
        }
    </style>
</head>
<body>
<% 
	FreeBoard freeBoard = (FreeBoard)request.getAttribute("freeBoard");
	Member m = (Member)session.getAttribute("member");
%>
	<div id="wrap">
        
        <div id="header-wrap">
            <%@ include file="/common/include/gnb.jsp" %>
        </div>
        
        <div id="contents-wrap">
        <%@ include file="/community/include/sideNavi.jsp" %>
        <div id="contents">
            
            <%@ include file="/community/include/upimg.jsp" %>
            
            <div id="where">&nbsp&nbsp&nbsp&nbsp 자유게시판</div>
            
            <div id="post-wrap">
                <div id="post">
                    <div id="title" style="text-align:center">
                    	<%= freeBoard.getFreeTitle() %>
                    </div>
                    <div id="postinfo">
                        작성자: <%= freeBoard.getUserId() %> &nbsp 댓글수: &nbsp 추천수: <%= freeBoard.getFreeLike() %> 비추천수: <%= freeBoard.getFreeHate() %> 작성일: <%= freeBoard.getFreeDate() %>
                    </div>
                    <div id="postcontent-wrap">
                        <div id="postaction">
                            <button><i class="xi-thumbs-up xi-x"></i></button>
                            <button><i class="xi-thumbs-down xi-x"></i></button>
                            <button><i class="xi-bookmark-o xi-x"></i></button>
                            <a id="btnTwitter" class="link-icon twitter" href="javascript:shareTwitter();"></a>
                            <a id="btnFacebook" class="link-icon facebook" href="javascript:shareFacebook();"></a>
							<a id="btnKakao" class="link-icon kakao" href="javascript:shareKakao();"></a>
							<a id="btnMail" class="link-icon email" href=""><i class="xi-mail-o xi-x"></i></a>
                            <button><i class="xi-share-alt-o xi-x"></i></button>
                        </div>
                        <div id="postcontent">
	                        <%if(m!=null && m.getUserId().equals(freeBoard.getUserId())){ %>
							<form action="/board/free/postUpdate.do" id="updateForm" method="post">
								<textarea cols="50" disabled="true"><%= freeBoard.getFreeContent() %></textarea><br>
								<input type="hidden" name="boardNo" value="<%=freeBoard.getFreeNo()%>"/>
							</form>
	
							<button id="deleteBtn">삭제</button>
							<button id="updateBtn">수정</button>
							<button id="cancleBtn" style="display: none;">취소</button>
							
							<%}else{ %>
								<textarea cols="50" disabled="true"><%= freeBoard.getFreeContent() %></textarea><br>
							<%} %>
                        </div>
                    </div>
                    <div id="comment">
<table>
<!--<tr><th>작성자</th><th>댓글</th><th>날짜</th></tr>-->
	<tr class="tr1">
        <td class="writer">이롸롸: </td>
        <td class="button">
            <button class="coModifyBtn">수정</button> <button class="coDeleteBtn">삭제</button>
        </td>
    </tr>
    <tr>
        <td class="comment">헤이 맘맘맘마 헤이 맘맘맘마!</td>
        <td></td>
	</tr>
</table>
                    </div>
                    <div id="back">
                        <a href=""><img src="../image/common/back.png"/>이전 글</a>&nbsp&nbsp&nbsp<a src="">다음 글<img  src="../image/common/front.png"/></a><br>
                        <a href="">목록으로</a>
                    </div>
                </div>
            </div>
        </div>
        </div>   
        
        <div id="footer">
            
        </div>
    </div>

<script>
	var updateBtnFlag = false;
	var boardData;
	$('#updateBtn').click(function(){
		if(updateBtnFlag==false)
			{
				$('#content').prop('disabled',false);
				$('#updateBtn').text('완료');
				$('#cancleBtn').css('display','inline');	
				updateBtnFlag=true;
				boardData = $('#content').html();
			}
		else if(updateBtnFlag==true){
			$('#updateForm').submit();
		}
	});
	
	$('#cancleBtn').click(function(){
		location.replace('/board/free/selectOne.do?freeNo=<%=freeBoard.getFreeNo()%>');
	});
	
	$('#deleteBtn').click(function(){
		var result = window.confirm("삭제하시겠습니까?");
		if(result==true)
		{
			location.replace("/board/free/delete.do?freeNo=<%=freeBoard.getFreeNo()%>");	
		}
	});
</script>
</body>
</html>