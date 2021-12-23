<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
<c:choose>
	<c:when test="${result==true }">
		<script>
			alert("문의가 접수되었습니다.");
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("오류가 발생하였습니다. \n 지속적인 문제 발생시 관리자에게 문의 바랍니다.");
		</script>
	</c:otherwise>
</c:choose>
	<script>
		location.replace("/main/service/M_service.jsp")
	</script>
</body>
</html>