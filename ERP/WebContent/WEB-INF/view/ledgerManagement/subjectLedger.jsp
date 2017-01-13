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
    width:180px;
}
.tblGreen th {
    background-color:#A7C942;
    color:#ffffff;
    font-family: Georgia;
    width:180px;
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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script type="text/javascript">
var leftMoney;
var debTotalMoney;
var creTotalMoney;
$(function() {
	$( "#datepicker1, #datepicker2" ).datepicker({
	dateFormat: 'yymm'
	});
	
	$("#subSearchBtn").click(function() {
		window.open("subjectPopup?con=sub","sub" ,'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#deptSearchBtn").click(function() {
		window.open("deptPopup?con=sub","sub" ,'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#cusSearchBtn").click(function() {
		$("#cusNoText").val("");
		$("#cusNameText").val("");
		window.open("customerLedgerPopup?con=sub","sub" ,'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#ledSearchBtn").click(function() {
		
		subLedgerGet();
	});
});

function subLedgerGet() {
	var params = $("#searchForm").serialize();
	
	$.ajax({
		url: "subLedgerGet",
		type: "post",
		data: params,
		dataType: "json",
		success: function(result) {
			resultChit(result);
			resultBeforeMoney(result);
			resultChitDeteil(result);
			totalMoney(result);
		},
		error: function() {
			alert("에러");
		}
	});
}

function resultChit(e){
	$("#result").html("");
	leftMoney = new Array();
	debTotalMoney = new Array();
	creTotalMoney = new Array();
	var html = "";
	for(var i = 0; i < e.cusNo.length; i++){
		html += "<div>";
		html += "	<div class='pull'>";
		html += "		<div class='pull_left'><b>회사명</b> : " + e.cusNo[i].NAME + "</div>";
		html += "	</div>";
		html += "	<table class=tblGreen>";
		html += "		<caption> <b>기준일자 </b> : " + $("#datepicker1").val() + "~" +$("#datepicker2").val() + "</caption>";
		html += "		<thead>";
		html += "			<tr>";
		html += "				<th>거래일자</th>";
		html += "				<th>전표번호</th>";
		html += "				<th>적요</th>";
		html += "				<th>차변</th>";
		html += "				<th>대변</th>";
		html += "				<th>잔액</th>";
		html += "			</tr>";
		html += "		</thead>";
		html += "		<tbody id='tb_" + e.cusNo[i].CUS_NO + "'>";
		html += "		</tbody>";
		html += "	</table>";
		html += "</div>";
		
		$("#result").append(html);
		html = "";
	}
}

function resultBeforeMoney(e) {
	var html = "";
	
	for(var i = 0; i < e.beforeMoney.length; i++){
		html += "			<tr>";
		html += "				<td colspan='3'>전월이월</td>";
		html += "				<td>"+ e.beforeMoney[i].DEBTOR_MONEY +"</td>";
		html += "				<td>"+ e.beforeMoney[i].CREDITOR_MONEY +"</td>";
		html += "				<td>"+ (e.beforeMoney[i].DEBTOR_MONEY - e.beforeMoney[i].CREDITOR_MONEY) +"</td>";
		html += "			</tr>";
		
		$("#tb_"+e.beforeMoney[i].CUS_NO).append(html);
		html = "";
		
		leftMoney[e.beforeMoney[i].CUS_NO] = (e.beforeMoney[i].DEBTOR_MONEY - e.beforeMoney[i].CREDITOR_MONEY);
			
	}
}

function resultChitDeteil(e) {
	var html = "";
	
	for(var i = 0; i < e.chit.length; i++){
		html += "			<tr>";
		html += "				<td>" + e.chit[i].DEAL_DATE + "</td>";
		html += "				<td>"+ e.chit[i].NO +"</td>";
		html += "				<td>"+ e.chit[i].ETC +"</td>";
		if(e.chit[i].DECHA == 0){
			html += "				<td>"+ e.chit[i].MONEY +"</td>";
			html += "				<td></td>";
			if(debTotalMoney[e.chit[i].CUS_NO] != null){
				debTotalMoney[e.chit[i].CUS_NO] += e.chit[i].MONEY;				
			}else{
				debTotalMoney[e.chit[i].CUS_NO] = e.chit[i].MONEY;				
			}
			if(leftMoney[e.chit[i].CUS_NO] != null){
				leftMoney[e.chit[i].CUS_NO] += e.chit[i].MONEY;
			}else{
				leftMoney[e.chit[i].CUS_NO] = e.chit[i].MONEY;
			}
		}else{
			html += "				<td></td>";
			html += "				<td>"+ e.chit[i].MONEY +"</td>";
			
			if(creTotalMoney[e.chit[i].CUS_NO] != null){
				creTotalMoney[e.chit[i].CUS_NO] += e.chit[i].MONEY;				
			}else{
				creTotalMoney[e.chit[i].CUS_NO] = e.chit[i].MONEY;				
			}
			
			if(leftMoney[e.chit[i].CUS_NO] != null){
				leftMoney[e.chit[i].CUS_NO] -= e.chit[i].MONEY;
			}else{
				leftMoney[e.chit[i].CUS_NO] = -e.chit[i].MONEY;
			}
		}
		html += "				<td>" + leftMoney[e.chit[i].CUS_NO] + "</td>";
		html += "			</tr>";
		
		$("#tb_"+e.chit[i].CUS_NO).append(html);
		html = "";
	}
}

function totalMoney(e) {
	var html = "";
	for(var i = 0; i < e.cusNo.length; i++){
		html += "<tr>";
		html += "	<td colspan=3>총액</td>";
		if(debTotalMoney[e.cusNo[i].CUS_NO] != null){
			html += "	<td>" + debTotalMoney[e.cusNo[i].CUS_NO] + "</td>";
		} else{
			html += "	<td></td>";
		}
		if(creTotalMoney[e.cusNo[i].CUS_NO] != null){
			html += "	<td>" + creTotalMoney[e.cusNo[i].CUS_NO] + "</td>";
		} else{
			html += "	<td></td>";
		}
		html += "	<td>" + leftMoney[e.cusNo[i].CUS_NO] + "</td>";
		html += "</tr>";
		
		$("#tb_" + e.cusNo[i].CUS_NO).append(html);
		html = "";
	}
}
</script>
</head>
<body>
	<c:import url="/top"></c:import>
	<div class="contents"><div id="font">계정별 원장</div><br/>
		<div class="search">
			<form action="#" id="searchForm" method="post">
			<table id="cusledger" class="cusledger" >
				<tr>
					<th>기준일자
					</th>
					<td align="left" class="date">
						<input type="text" class="form-control" id="datepicker1" name="startDate" placeholder="기준 시작일"/>
						<span style="font-size: 15pt; font-weight: bold;">  ~ </span>
						<input type="text" class="form-control" id="datepicker2" name="endDate" placeholder="기준 종료일"/>
					</td>
				</tr>
				<tr>
					<th>부서
					</th>
					<td align="left">
						<input type="button" id="deptSearchBtn" value="검색" />
						<input type ="text" id="deptNoText" name="deptNoText"/>
						<input type ="text" id="deptNameText" name="deptNameText"/>
					</td>
				</tr>
				<tr>
					<th>계정
					</th>
					<td align="left">
						<input type="button" id="subSearchBtn" value="검색"/>
						<input type ="text" id="subNoText" name="subNoText"/>
						<input type ="text" id="subNameText" name="subNameText"/>
					</td>
				</tr>
				<tr>
					<th>거래처
					</th>
					<td align="left">
						<input type="button" id="cusSearchBtn" value="검색"/>
						<input type ="hidden" id="cusNoText" name="cusNoText"/>
						<input type ="text" id="cusNameText" name="cusNameText" style="width: 300px;"/>
					</td>
				</tr>
			</table><br/><br/>
			</form>
			<input type="button" id="ledSearchBtn" value="조회"/>
		</div>
		<br>
		<br>
		<div class="result" id="result">
		</div>
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>