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

}

function chitSub(e){
	
}

function chitMoney(e){
	
}

function chitTotal(e){
	
}
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
			<div id="resultChit">
				<
			</div>
		</form>
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>