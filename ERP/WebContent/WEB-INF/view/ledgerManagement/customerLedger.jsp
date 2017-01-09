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
}
.pull_left{
	text-align: left;
}
.pull_right{
	text-align: right;
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
		$("#subNoText").val("");
		$("#subNameText").val("");
		window.open("subjectLedgerPopup?con=sub","sub" ,'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#deptSearchBtn").click(function() {
		window.open("deptPopup?con=sub","sub" ,'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#cusSearchBtn").click(function() {
		window.open("customerPopup?con=sub","sub" ,'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#ledSearchBtn").click(function() {
		subLedgerGet();
	});
});

function subLedgerGet() {
	var params = $("#searchForm").serialize();
	
	$.ajax({
		url: "customerLedgerGet",
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
	for(var i = 0; i < e.subNo.length; i++){
		html += "<div>";
		html += "	<div class='pull'>";
		html += "		<div class='pull_left'>거래처명 : " + e.subNo[i].NAME + "</div>";
		html += "		<div class='pull_right'>" + $("#datepicker1").val() + "~" +$("#datepicker2").val() + "</div>";
		html += "	</div>";
		html += "	<table>";
		html += "		<thead>";
		html += "			<tr>";
		html += "				<th>전표번호</th>";
		html += "				<th>적요</th>";
		html += "				<th>차변</th>";
		html += "				<th>대변</th>";
		html += "				<th>잔액</th>";
		html += "			</tr>";
		html += "		</thead>";
		html += "		<tbody id='tb_" + e.subNo[i].SUB + "'>";
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
		html += "				<td colspan='2'>전월이월</td>";
		html += "				<td>"+ e.beforeMoney[i].DEBTOR_MONEY +"</td>";
		html += "				<td>"+ e.beforeMoney[i].CREDITOR_MONEY +"</td>";
		html += "				<td>"+ (e.beforeMoney[i].DEBTOR_MONEY - e.beforeMoney[i].CREDITOR_MONEY) +"</td>";
		html += "			</tr>";
		
		$("#tb_"+e.beforeMoney[i].SUB).append(html);
		html = "";
		
		leftMoney[e.beforeMoney[i].SUB] = (e.beforeMoney[i].DEBTOR_MONEY - e.beforeMoney[i].CREDITOR_MONEY);
			
	}
}

function resultChitDeteil(e) {
	var html = "";
	
	for(var i = 0; i < e.chit.length; i++){
		html += "			<tr>";
		html += "				<td>"+ e.chit[i].NO +"</td>";
		html += "				<td>"+ e.chit[i].ETC +"</td>";
		if(e.chit[i].DECHA == 0){
			html += "				<td>"+ e.chit[i].MONEY +"</td>";
			html += "				<td></td>";
			
			if(debTotalMoney[e.chit[i].SUB] != null){
				debTotalMoney[e.chit[i].SUB] += e.chit[i].MONEY;				
			}else{
				debTotalMoney[e.chit[i].SUB] = e.chit[i].MONEY;				
			}
			
			if(leftMoney[e.chit[i].SUB] != null){
				leftMoney[e.chit[i].SUB] += e.chit[i].MONEY;
			}else{
				leftMoney[e.chit[i].SUB] = e.chit[i].MONEY;
			}
		}else{
			html += "				<td></td>";
			html += "				<td>"+ e.chit[i].MONEY +"</td>";
			
			if(creTotalMoney[e.chit[i].SUB] != null){
				creTotalMoney[e.chit[i].SUB] += e.chit[i].MONEY;				
			}else{
				creTotalMoney[e.chit[i].SUB] = e.chit[i].MONEY;				
			}
			
			if(leftMoney[e.chit[i].SUB] != null){
				leftMoney[e.chit[i].SUB] -= e.chit[i].MONEY;
			}else{
				leftMoney[e.chit[i].SUB] = -e.chit[i].MONEY;
			}
		}
		html += "				<td>" + leftMoney[e.chit[i].SUB] + "</td>";
		html += "			</tr>";
		
		$("#tb_"+e.chit[i].SUB).append(html);
		html = "";
	}
}

function totalMoney(e) {
	var html = "";
	for(var i = 0; i < e.subNo.length; i++){
		html += "<tr>";
		html += "	<td colspan=2;>총액</td>";
		if(debTotalMoney[e.subNo[i].SUB] != null){
			html += "	<td>" + debTotalMoney[e.subNo[i].SUB] + "</td>";
		}else{
			html += "	<td></td>";
		}
		if(creTotalMoney[e.subNo[i].SUB] != null){
			html += "	<td>" + creTotalMoney[e.subNo[i].SUB] + "</td>";
		}else{
			html += "	<td></td>";
		}
		html += "	<td>" + leftMoney[e.subNo[i].SUB] + "</td>";
		html += "</tr>";
		
		$("#tb_" + e.subNo[i].SUB).append(html);
		html = "";
	}
}
</script>
</head>
<body>
	<c:import url="/top"></c:import>
	<div class="contents">거래처별 원장<br/>
		<div class="search">
			<form action="#" id="searchForm" method="post">
			<table id="cusledger" class="cusledger" border="1">
				<tr>
					<th>기준일자
					</th>
					<td align="left" class="date">
						<input type="text" class="form-control" id="datepicker1" name="startDate" placeholder="기준 시작일"/>
						<span style="font-size: 15pt; font-weight: bold;"> ~ </span>
						<input type="text" class="form-control" id="datepicker2" name="endDate" placeholder="기준 종료일"/>
					</td>
				</tr>
				<tr>
					<th>부서
					</th>
					<td align="left">
						<input type="button" id="deptSearchBtn" />
						<input type ="text" id="deptNoText" name="deptNoText"/>
						<input type ="text" id="deptNameText" name="deptNameText"/>
					</td>
				</tr>
				<tr>
					<th>계정
					</th>
					<td align="left">
						<input type="button" id="subSearchBtn" />
						<input type ="hidden" id="subNoText" name="subNoText"/>
						<input type ="text" id="subNameText" name="subNameText" style="width: 300px;"/>
					</td>
				</tr>
				<tr>
					<th>거래처
					</th>
					<td align="left">
						<input type="button" id="cusSearchBtn"/>
						<input type ="text" id="cusNoText" name="cusNoText"/>
						<input type ="text" id="cusNameText" name="cusNameText"/>
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