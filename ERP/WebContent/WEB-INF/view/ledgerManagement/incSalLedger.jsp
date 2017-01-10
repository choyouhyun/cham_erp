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
var incTotalMoney;
var salTotalMoney;
$(function() {
	$( "#datepicker1, #datepicker2" ).datepicker({
	dateFormat: 'yymm'
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
		getIncSalChit();
	});
});

function getIncSalChit() {
	var params = $("#searchForm").serialize();
	
	$.ajax({
		url: "getIncSalChit",
		type: "post",
		data: params,
		dataType: "json",
		success: function(result) {
		},
		error: function() {
			alert("에러");
		}
	});
}


</script>
</head>
<body>
	<c:import url="/top"></c:import>
	<div class="contents">매입매출장<br/>
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
					<th>매입/매출구분</th>
					<td align="left">
						<input type="radio" id="incRadio" name="subRadio" value="inc"/>매입
						<input type="radio" id="salRadio" name="subRadio" value="sal"/>매출
						<input type="radio" id="incSalRadio" name="subRadio" value="incSal"/>매입/매출
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