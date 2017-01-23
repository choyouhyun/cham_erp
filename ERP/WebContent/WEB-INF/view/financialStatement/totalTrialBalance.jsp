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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<style type="text/css">
.result div{
border: 1px solid;
}
</style>
<script type="text/javascript">
$(function(){
	$("#datepicker1, #datepicker2" ).datepicker({
		dateFormat: 'yymm'
	});
	$("#searchBtn").click(function(){
		searchAjax();
	});
});

function searchAjax(){
	var params = $("#searchForm").serialize();
	$.ajax({
		url: "getTrial",
		type : "post",
		data: params,
		dataType: "json",
		success: function(result){
			
		},
		error: function(){
			alert("totalTrialAjax에러");
		}
	});
}

function chitHead(e){
	var html = "";
	
	html += "<table border='1px'>";
	html += "	<thead>";
	html += "		<tr>";
	html += "			<td colspan='2'>차변</td>";
	html += "			<td rowspan='2'>계정과목</td>";
	html += "			<td colspan='2'>대변</td>";
	html += "		</tr>";
	html += "		<tr>";
	html += "			<td>차변 잔액</td>";
	html += "			<td>차변 금액</td>";
	html += "			<td>대변 금액</td>";
	html += "			<td>대변 잔액</td>";
	html += "		</tr>";
	html += "		</thead>";
	html += "		<tbody id='resultTb'>";
	html += "		</tbody>";
	html += "</table>";

	$("#resultChit").html(html);
}

function chitSub(e){
	var html = "";
	for(var i = 0; i < e.depth; i++){
		var depthCnt = 1;
		for(var j = 0; j < e.sub.length; j++){
			if(e.sub[j].DEPTH == depthCnt){
				html += "<tr>";
				html += "	<td>차변 잔액</td>";
				html += "	<td>차변 금액</td>";
				html += "	<td>" + e.sub[j].NAME + "</td>";
				html += "	<td>대변 금액</td>";
				html += "	<td>대변 잔액</td>";
				html += "</tr>";

				if(depthCnt=1){
					$("#resultTb").html(html);
				}else{
					$(e.sub[j].SUB_NO)
				}
			}
		}
	}
}

function chitMoney(e){
	
}

function chitTotal(e){

</script>
<title>Insert title here</title>
</head>
<body>
	<c:import url="/top"></c:import>
	<div class="contents"> 
		<div id="conTitle">합계 잔액 시산표</div>
		<form action="#" id="searchForm">
			<div id="searchChit">
				<div id="chitCal">
					<span>날짜 : </span>
					<input type="text" id="datepicker1" name="startDate" placeholder="기준 시작일"/>
					<span> ~ </span>
					<input type="text" id="datepicker2" name="endDate" placeholder="기준 종료일"/>
					&nbsp
					<input type="button" id="searchBtn" value="검색" />
				</div>
			</div>
			<div id="result" class="result">
				<div id="chit">
					<div class="chitHead">
						<div class="chitTitle">
							<div calss="chitTitle_1">
								차변
							</div>
							<div calss="chitTitle_1">
								<div class="chitTitle_1_1">차변 잔액</div>
								<div class="chitTitle_1_2">차변 금액</div>
							</div>
						</div>
						<div>
							계정과목
						</div>
						<div>
							<div class="chitTitle">
								<div calss="chitTitle_1">
									대변
								</div>
								<div calss="chitTitle_1">
									<div class="chitTitle_1_1">대변 금액</div>
									<div class="chitTitle_1_2">대변 잔액</div>
								</div>
							</div>
						</div>
					</div>
					<div class="chitBody">
					</div>
				</div>
			</div>
		</form>
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>