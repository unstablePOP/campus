<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	div{
		box-sizing: border-box;
	}
	#wrapper{
		width: 600px;
		height: 1200px;
		margin: 0px auto;
	}
	#header{
		width: 600px;
		height: 100px;
		margin: 0px auto;
		
	}
	#body{
		width: 600px;
		height: 1000px;
		margin: 0px auto;
		
	}
	#footer{
		width: 600px;
		height: 100px;
		margin: 0px auto;
    }
    #left{
 		width: 300px;
		height: 1000px;
		float: left;
		background-color: gray;
    }
    #right{
 		width: 300px;
		height: 1000px;
		float: left;	
		background-color: gray;
    }
    
    </style>
</head>
<body>
<div id="wrapper">
	<div id="header"></div>
	<div id="body">
        <div id="left"></div>
        <div id="right">
        	<div class="confirmBtn">
        		
        	</div>
        </div>
	</div>
	<div id="footer"></div>
</div>
</body>
</html>