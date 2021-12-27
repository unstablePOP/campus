<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	boolean result = (boolean)request.getAttribute("backUpdateResult");
%>

	<script>
		<%if(result){%>
			alert('배경화면이 변경 되었습니다.');
		<%}else{%>
			alert('변경 실패!! -지속저인 문제 발생 시 관리자에게 문의해주세요 -');
		<%}%>
		location.replace('/diary/allView.do');
	</script>
	
</body>
</html>