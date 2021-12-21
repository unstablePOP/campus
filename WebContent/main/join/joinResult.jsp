<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}
/* 전체 Wrap */
#AllWrap {
	width: 500px;
	height: 600px;
	margin: 100px auto;
}
/* logo Wrap */
#logoWrap {
	width: 100%;
	height: 150px;
	padding: 10px;
	text-align: center;
}
/* login Wrap */
#mainLoginWrap {
	border: 1px solid grey;
	width: 100%;
	height: 300px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	border-bottom-left-radius: 10px;
	border-bottom-right-radius: 10px;
	text-align: center;
	padding-top: 100px;
}

a {
	color: dodgerblue;
	text-decoration: none;
}
</style>
</head>
<body>
	<div id="AllWrap">
		<div id="logoWrap">
			<a href="/"><img src="/main/image/logo/logo.png" alt=""></a>
		</div>
		<%-- Main 부분 --%>
		<div id="mainLoginWrap">
			<c:choose>
				<c:when test="${result==true }">
					<h3>Campus 가입을 축하합니다.</h3>
					<a href="/">메인페이지로 이동</a>
				</c:when>
				<c:otherwise>
					<h3>오류가 발생했습니다. 관리자에게 문의바랍니다.</h3>
					<a href="/">메인페이지로 이동</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<%-- script 부분 --%>
	<script>
		
	</script>
</body>
</html>