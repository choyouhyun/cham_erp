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
var leftMoney = new Array();
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
	})
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
		},
		error: function() {
			alert("에러");
		}
	});
}

function resultChit(e){
	var html = "";
	for(var i = 0; i < e.cusNo.length; i++){
		html += "<div>";
		html += "	<div class='pull'>";
		html += "		<div class='pull_left'>회사명 : " + e.cusNo[i].NAME + "</div>";
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
		$("#leftMoney_"+e.beforeMoney[i].CUS_NO).val
		html += "			<tr>";
		html += "				<td colspan='2'>전월이월</td>";
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
		html += "				<td>"+ e.chit[i].NO +"</td>";
		html += "				<td>"+ e.chit[i].ETC +"</td>";
		if(e.chit[i].DECHA == 0){
			html += "				<td>"+ e.chit[i].MONEY +"</td>";
			html += "				<td></td>";
			if(leftMoney[e.chit[i].CUS_NO] != null){
				leftMoney[e.chit[i].CUS_NO] += e.chit[i].MONEY;
			}else{
				leftMoney[e.chit[i].CUS_NO] = e.chit[i].MONEY;
			}
		}else{
			html += "				<td></td>";
			html += "				<td>"+ e.chit[i].MONEY +"</td>";
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
</script>
</head>
<body>
	<c:import url="/top"></c:import>
	<div class="contents">거래처별/계정별 원장<br/>
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
						<input type ="text" id="subNoText" name="subNoText"/>
						<input type ="text" id="subNameText" name="subNameText"/>
					</td>
				</tr>
				<tr>
					<th>거래처
					</th>
					<td align="left">
						<input type="button" id="cusSearchBtn"/>
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