<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>

</head>
<body>

<script type="text/javascript">

function show_layer(div_name){

 

 document.all.div_01.style.display="none";

 document.all.div_02.style.display="none";

 document.all.div_03.style.display="none";

 document.all.div_04.style.display="none"; // 메뉴 숫자에 따라 늘려주세요

 

 switch(div_name)

 {

  case '1':

  document.all.div_01.style.display="";

  break;

  case '2':

  document.all.div_02.style.display="";

  break;

  case '3':

  document.all.div_03.style.display="";

  break;

  case '4':

  document.all.div_04.style.display="";

  break;

 }

}

</script>

	<div id="weatherArea">
		<DIV id=div_01>

			<table width="350px" cellspacing="0" cellpadding="0" border="0"
				align="center" style="margin-top: 30px;">

				<tr>

					<td>인천</td>

					<td><a href="javascript:show_layer('2');">춘천</a></td>

					<td><a href="javascript:show_layer('3');">대구</a></td>

					<td><a href="javascript:show_layer('4');">경주</a></td>

				</tr>

				<tr>
					<td colspan=4 align=center style='padding-top: 20px;'>내용1</td>
				</tr>

			</table>

		</DIV>
		<DIV id=div_02 style="DISPLAY: none">

			<table width="707px" cellspacing="0" cellpadding="0" border="0"
				align="center" style="margin-top: 30px;">

				<tr>

					<td><a href="javascript:show_layer('1');">메뉴 또는 탭 1</a></td>

					<td>메뉴 또는 탭2</td>

					<td><a href="javascript:show_layer('3');">메뉴 또는 탭3</a></td>

					<td><a href="javascript:show_layer('4');">메뉴 또는 탭4</a></td>

				</tr>

				<tr>
					<td colspan=4 align=center style='padding-top: 20px;'> 내용2</td>
				</tr>

			</table>

		</DIV>




		<DIV id=div_03 style="DISPLAY: none">



			<table width="707px" cellspacing="0" cellpadding="0" border="0"
				align="center" style="margin-top: 30px;">

				<tr>

					<td><a href="javascript:show_layer('1');">메뉴 또는 탭1</a></td>

					<td><a href="javascript:show_layer('2');">메뉴 또는 탭2</a></td>

					<td>메뉴 또는 탭3</td>

					<td><a href="javascript:show_layer('4');">메뉴 또는 탭4</a></td>

				</tr>

				<tr>
					<td colspan=4 align=center style='padding-top: 20px;'>내용3</td>
				</tr>

			</table>

		</DIV>

		<DIV id=div_04 style="DISPLAY: none">



			<table width="707px" cellspacing="0" cellpadding="0" border="0"
				align="center" style="margin-top: 30px;">

				<tr>

					<td><a href="javascript:show_layer('1');">메뉴 또는 탭1</a></td>

					<td><a href="javascript:show_layer('2');">메뉴 또는 탭2</a></td>

					<td><a href="javascript:show_layer('3');">메뉴 또는 탭3</a></td>

					<td>메뉴 또는 탭4</td>

				</tr>

				<tr>
					<td colspan=4 align=center style='padding-top: 20px;'>내용4</td>
				</tr>

			</table>

		</DIV>

	</div>







</body>
</html>