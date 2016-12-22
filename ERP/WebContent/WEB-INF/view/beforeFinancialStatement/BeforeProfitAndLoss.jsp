<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/erp_css/basic.css" />
<!-- basic -->
<script type="text/javascript"
	src="resources/script/erp_script/main_script.js"></script>
<!-- basic -->
<style type="text/css">
html {
	scrollbar-3dLight-Color: #efefef;
	scrollbar-arrow-color: #dfdfdf;
	scrollbar-base-color: #efefef;
	scrollbar-Face-Color: #dfdfdf;
	scrollbar-Track-Color: #efefef;
	scrollbar-DarkShadow-Color: #efefef;
	scrollbar-Highlight-Color: #efefef;
	scrollbar-Shadow-Color: #efefef
}


::-webkit-scrollbar {
	width: 8px;
	height: 8px;
	border: 3px solid #fff;
}

::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment
	{
	display: block;
	height: 10px;
	background: #efefef;
}

::-webkit-scrollbar-track {
	background: #efefef;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .2)
}

::-webkit-scrollbar-thumb {
	height: 50px;
	width: 50px;
	background: rgba(0, 0, 0, .2);
	-webkit-border-radius: 8px;
	border-radius: 8px;
	-webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .1)
} 

table {
	overflow: auto;
	display: inline-block;
}

table.sub{
	text-align: left;
    /* line-height: 1.5; */
    border-top: 1px solid #ccc;
    border-left: 3px solid #484848;
 	
}

table.sub th {
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #fff;
	border-left: 1px solid #fff;
	background: #FFFFFF;
	
}

table.sub td {
	padding: auto;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

table.code {
	height: 365px;
}

table.code td {
	padding: auto;
	vertical-align: top;
	border: 1px solid #BDBDBD;
}

table.code th {
	font-weight: bold;
	vertical-align: top;
	border: 1px solid #BDBDBD;
	background: #484848/* #47C83E */;
	color: #FFFFFF
}




</style>
</head>
<body>
	<c:import url="/top"></c:import>
	<div class="contents">
	<br/>
		<table class="code" border="0px" align="center">
			<tr>
				<th>코드</th>
				<th>계정과목</th>
				<th>금액</th>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td></td>
				<td></td>
			</tr>
		</table>
		
		<table class="sub" border="1px" align="center">
			<tr>
				<th colspan="2">계정 별 합계</th>
			</tr>
			<tr>
				<th>1.매출액</th>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<th>2.매출원가</th>
				<td></td>
			</tr>
			<tr>
				<th>3.매출 총이익</th>
				<td></td>
			</tr>
			<tr>
				<th>4.판매비와 관리비</th>
				<td></td>
			</tr>
			<tr>
				<th>5.영업이익</th>
				<td></td>
			</tr>
			<tr>
				<th>6.영업 외 수익</th>
				<td></td>
			</tr>
			<tr>
				<th>7.영업 외 비용</th>
				<td></td>
			</tr>
			<tr>
				<th>8.법인세 차감 전 이익</th>
				<td></td>
			</tr>
			<tr>
				<th>9.법인세등</th>
				<td></td>
			</tr>
			<tr>
				<th>10.당기 순이익</th>
				<td></td>
			</tr>
		</table>
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>