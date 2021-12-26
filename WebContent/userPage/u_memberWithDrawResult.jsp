<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
		boolean result = (boolean)request.getAttribute("result");
		
	%>
	
	<script>
	<%if(result){ %>
		alert('<%=(String)request.getAttribute("userId")%> 회원 탈퇴되었습니다. 언제든지 돌아오세요!');
	<%}else{ %>
		alert('회원탈퇴틑 실패하였습니다. \n -지속적인 문제 발생시 관리자에게 문의해주세요 - ');
	<%} %>
	
	location.replace("/");
	
	</script>
	

</body>
</html>