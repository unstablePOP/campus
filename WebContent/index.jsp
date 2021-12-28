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
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<title>Insert title here</title>
<style>
* {
	box-sizing: border-box;
}

#wrap {
	width: 1250px;
	height: 2770px;
	box-sizing: border-box;
	margin: 0px auto;
}

#header-wrap {
	width: 100%;
	height: 663px;
}

#bodyWrap {
	width: 100%;
	height: 1800px;
}
#footerWrap{
	width:1250px;
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="header-wrap">
			<%@include file="/main/include/mainHeader.jsp"%>
		</div>
		<div id="bodyWrap">
			<%@include file="/main/include/mainBody.jsp"%>
		</div>
		<div id="footerWrap">
       			<%@include file="/common/include/footer.jsp" %>
		</div>
	</div>
</body>
</html>