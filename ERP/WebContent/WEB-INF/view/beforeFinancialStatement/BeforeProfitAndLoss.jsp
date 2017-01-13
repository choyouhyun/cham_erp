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
.searchBtn{
   border: 1px solid #ffffff;
   background: #6d6d6d;
   background: -webkit-gradient(linear, left top, left bottom, from(#BDBDBD), to(#BDBDBD));
   background: -webkit-linear-gradient(top, #BDBDBD, #6d6d6d);
   background: -moz-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -ms-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -o-linear-gradient(top, #BDBDBD, #BDBDBD);
   background-image: -ms-linear-gradient(top, #474747 0%, #474747 100%);
   padding: 7.2px 13px;
   -webkit-border-radius: 6px;
   -moz-border-radius: 6px;
   border-radius: 6px;
   color: #ffffff;
   font-size: 10px;
   font-family: '맑은고딕';
   text-decoration: none;
   vertical-align: middle;
   }
.searchBtn:hover{
   border: 1px solid #ffffff;
   background: #222222;
   background: -webkit-gradient(linear, left top, left bottom, from(#474747), to(#222222));
   background: -webkit-linear-gradient(top, #474747, #222222);
   background: -moz-linear-gradient(top, #474747, #222222);
   background: -ms-linear-gradient(top, #474747, #222222);
   background: -o-linear-gradient(top, #474747, #222222);
   background-image: -ms-linear-gradient(top, #474747 0%, #222222 100%);
   color: #ffffff;
   }

/*스크롤바  */
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

.title{
	font-size: 25pt;
	font-weight: bold;
}
#font{
	color:#153d73;
	font-weight: bold;
}
/* 텍스트 박스 크기 */
#deptNoText, #deptNameText, #subNoText, #subNameText {
 width: 160px;
}

/*테이블 디자인  */
.cusledger {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #98bf21;
 	margin : 20px 10px;
}
.cusledger th {
    width: 100px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #A7C942;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;

}
.cusledger td {
    width: 400px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
table{
	display: inline-block;
}
table.th{
	font-weight: bold;
    vertical-align: top;
}
.form-control{
	font-size: 11pt;
	height: 20px;
}
.date{
	font-size: 0pt;
}
.pull{
	margin-top: 10px;
	text-align: center;
	height: 50px;
	
}
.pull_left{
	display: inline-block;
	width: 916px;
	text-align: left;
	border-bottom: 1px solid #A7C942;
	margin-bottom: 5px; 
	padding-bottom: 3px; 
}
.pull_right{
	display: inline-block;
	width : 600px;
	text-align: right;
}

#ledSearchBtn{
   border: 1px solid #ffffff;
   background: #474747;
   background: -webkit-gradient(linear, left top, left bottom, from(#6d6d6d), to(#474747));
   background: -webkit-linear-gradient(top, #6d6d6d, #474747);
   background: -moz-linear-gradient(top, #6d6d6d, #474747);
   background: -ms-linear-gradient(top, #6d6d6d, #474747);
   background: -o-linear-gradient(top, #6d6d6d, #474747);
   background-image: -ms-linear-gradient(top, #6d6d6d 0%, #474747 100%);
   padding: 10.5px 21px;
   -webkit-border-radius: 6px;
   -moz-border-radius: 6px;
   border-radius: 6px;
   /* -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0; */
  /*  box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #ffffff 0 1px 0; */
   color: #ffffff;
   font-size: 14px;
   font-family: '맑은고딕';
   text-decoration: none;
   vertical-align: middle;
   }
#ledSearchBtn:hover{
   border: 1px solid #ffffff;
   /* text-shadow: #ffffff 0 1px 0; */
   background: #222222;
   background: -webkit-gradient(linear, left top, left bottom, from(#474747), to(#222222));
   background: -webkit-linear-gradient(top, #474747, #222222);
   background: -moz-linear-gradient(top, #474747, #222222);
   background: -ms-linear-gradient(top, #474747, #222222);
   background: -o-linear-gradient(top, #474747, #222222);
   background-image: -ms-linear-gradient(top, #474747 0%, #222222 100%);
   color: #ffffff;
   }
#ledSearchBtn:active{
   /* text-shadow: #ffffff 0 1px 0; */
   border: 1px solid #ffffff;
   background: #000000;
   background: -webkit-gradient(linear, left top, left bottom, from(#000000), to(#222222));
   background: -webkit-linear-gradient(top, #000000, #000000);
   background: -moz-linear-gradient(top, #000000, #000000);
   background: -ms-linear-gradient(top, #000000, #000000);
   background: -o-linear-gradient(top, #000000, #000000);
   background-image: -ms-linear-gradient(top, #000000 0%, #000000 100%);
   color: #fff;
}
.tblGreen {
    border-collapse: collapse;
    text-align: center;
    font-family: 'Trebuchet MS';
}
.tblGreen td, th {
    font-size: 10pt;
    border: 1px solid #98bf21;
    height: 30px;
    width:120px;
}
.tblGreen th {
    background-color:#A7C942;
    color:#ffffff;
    font-family: Georgia;
    width:120px;
}
.tblGreen tr.alt td {
    color:#000000;
    background-color:#EAF2D3;
}
.tblGreen caption {
    height: 30px;
    font-weight: bold;
    font-size: 10pt;
	text-align: center;
}

</style>
</head>
<body>
	<c:import url="/top"></c:import>
	<div class="contents">
			<br/>
			<span id="font">전기분 손익계산서</span>
			<br/>
			<br/>
		<table class="tblGreen" border="0px" align="center">
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
		
		<table class="tblGreen" align="center">
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