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
table.tr{
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
		거래처별 원장
			<form action="#" id="ledgerForm" method="post">
			<table id="cusledger" class="cusledger" border="1">
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