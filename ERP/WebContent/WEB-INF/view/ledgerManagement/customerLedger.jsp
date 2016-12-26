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
/* .date{
	font-size: 0pt;
} */

#font{
	font-weight: bold;
	font-size: 20pt
}
/*테이블 디자인  */
.cusledger {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #FF4848;
 	margin : 20px 10px;
}
.cusledger th {
    width: 100px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #FF6C6C;
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

#ledsearchBtn{
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
#ledsearchBtn:hover{
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
#ledsearchBtn:active{
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
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script type="text/javascript">
$(document).ready(function() {
	$("#deptsearchBtn").on("click", function() {
		window.open('deptPopup','','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	$("#subsearchBtn").on("click", function() {
		window.open('subjectPopup','','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	$("#cussearchBtn").on("click", function() {
		window.open('customerPopup','','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	$("#ledsearchBtn").on("click", function() {
		lookupList();
	});
});
function lookupList() {
	var params = $("ledgerform").serialize();
	var cusledger = $("cusledger");
	var ledLookup = $("ledLookup");
		$.ajax({
			type : "post",
			url : "subList",
			dataType : "json",
			data : params,
			success : function(result) {
				cusledger.style.display = 'none';
				var html = "";
				var NAME="";
				for(var i = 0; i < result.list.length ; i++) {
					html += "<tr>";
					html += "<td>" + result.list[i].NO + "</td>";	/* 전표번호 */
					html += "<td>"+ result.list[i].ETC +"</td>";	/* 적요 */
					html += "<td>"+ result.list[i].chaSub +"</td>"; /* 차변 */
					html += "<td>"+result.list[i].deSub+"</td>";	/* 대변 */
					html += "<td>"+result.list[i].BALANCE +"</td>"; /* 잔액 */
					html += "</tr>";
				}
				
				$("#tb").html(html);
			},
			error : function(result) {
   				alert("error!!");
			}
	});
}
$(function() {
	$( "#datepicker1, #datepicker2" ).datepicker({
		dateFormat: 'yy-mm-dd'
	});
});
</script>
</head>
<body>
		<c:import url="/top"></c:import>
		<div class="contents">
		<br/>
		<div id="font">거래처별 원장</div>
		<br/>
			<form action="#" id="ledgerForm" method="post">
			<table id="cusledger" class="cusledger" border="0">
				<tr>
					<th>기준일자
					</th>
					<td align="left" class="date">
						<input type="text" class="form-control" id="datepicker1" name="date_sta" placeholder="기준 시작일"/> ~
						<input type="text" class="form-control" id="datepicker2" name="date_end" placeholder="기준 종료일"/>
					</td>
				</tr>
				<tr>
					<th>부서
					</th>
					<td align="left">
						<input type="button" id="deptsearchBtn" />
						<input type ="text" id="deptNameText" value="" readOnly/>
						<input type="hidden" id="deptNoText">
					</td>
				</tr>
				<tr>
					<th>계정
					</th>
					<td align="left">
						<input type="button" id="subsearchBtn" />
						<input type ="text" id="NameText" value="" readOnly/>
						<input type="hidden" id="NoText">
					</td>
				</tr>
				<tr>
					<th>거래처
					</th>
					<td align="left">
						<input type="button" id="cussearchBtn"/>
						<input type ="text" id="cusNameText" value="" readOnly/>
						<input type="hidden" id="cusNoText">
					</td>
				</tr>
			</table><br/><br/>
			</form>
			<input type="button" id="ledsearchBtn" value="조회"/>
<<<<<<< HEAD
			<table class="ledLookup" border="1" style="display:none">
				<thead align="center">
					<tr>
					<th>전표번호</th>
					<th>적요</th>
					<th>차변</th>
					<th>대변</th>
					<th>잔액</th>
					</tr>
				</thead>
				<tbody id="tb">
				</tbody>
			</table>
=======
>>>>>>> branch 'master' of https://github.com/choyouhyun/cham_erp
		</div>
		<c:import url="/bottom"></c:import>

</body>
</html>