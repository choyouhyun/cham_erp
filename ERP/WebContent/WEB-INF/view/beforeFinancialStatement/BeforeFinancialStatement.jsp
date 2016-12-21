<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
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

#font{
	font-weight: bold;
	font-size: 20pt
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

table.ass {
	
}

table.ass td {
	padding: auto;
	vertical-align: top;
	border: 1px solid #BDBDBD;
}

table.ass th {
	font-weight: bold;
	vertical-align: top;
	border: 1px solid #BDBDBD;
	background: #484848/* #47C83E */;
	color: #FFFFFF
}

table.debt {
	
}

table.debt td {
	padding: auto;
	vertical-align: top;
	border: 1px solid #BDBDBD;
}

table.debt th {
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
		<div id="font" >전기분재무재표</div><p>
				<table class="ass" border="0px" align="center">
				<tr>
					<th colspan="3">자산
					</th>
				</tr>
				<tr>
					<th>코드
					</th>
					<th>계정과목
					</th>
					<th>금액
					</th>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<th colspan="2">차변합계
					</th>
					<td>
					</td>
				</tr>
			</table>
			<table class="debt" id="debt" border="0px" align="center">
				<tr>
					<th colspan="3">부채 및 자본
					</th>
				</tr>
				<tr>
					<th>코드
					</th>
					<th>계정과목
					</th>
					<th>금액
					</th>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<th colspan="2">대변합계
					</th>
					<td>
					</td>
				</tr>
			</table>
			<table class="sub" id="sub" border="0px" align="center">
				<tr>
					<th colspan="2">계정 별 합계
					</th>
				</tr>
				<tr>
					<th>1.유동자산
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>2.비유동자산
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>자산총계(1+2)
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>3.유동부채
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>4.비유동부채
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>부채총계(3+4)
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>5.자본금
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>6.자본잉여금
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>7.자본조정
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>8.기타 포괄 손익 누계액
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>자본총계(5+6+7+8+9)
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>부채 및 자본총계
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>대차차액
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>     
					<th>대변합계
					</th>
					<td>&nbsp;
					</td>
				</tr>
			</table>
		
		</div>
		<c:import url="/bottom"></c:import>
</body>

</html><!-- 따닥 -->