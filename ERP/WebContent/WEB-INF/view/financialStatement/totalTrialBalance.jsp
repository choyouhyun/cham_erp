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
<<<<<<< HEAD
<style type="text/css">
.result{
border-left: 1px solid;
border-right: 1px solid;
border-top: 1px solid;
margin: 0px;
padding: 0px;
font-size: 0;
}
.chit{
display: inline-block;
}
.chitHead{
display: inline-block;
}

.result{
display: inline-block;
width: 1004px;
}
.chitHead1{
display: inline-block;
width: 402px;
}
.chitHead1_1{
border-bottom: 1px solid;
border-right: 1px solid;
font-size: 10pt;
}
.chitHead1_2{
}
.chitHead1_2_1{
display: inline-block;
border-bottom: 1px solid;
border-right: 1px solid;
width: 200px;
font-size: 10pt;
}
.chitHead1_2_2{
display: inline-block;
border-bottom: 1px solid;
border-right: 1px solid;
width: 200px;
font-size: 10pt;
}
.chitHead2{
display: inline-block;
width: 200px;
}
.chitHead2_1{
border-bottom: 1px solid;
font-size: 10pt;
}
.chitHead3{
display: inline-block;
width: 402px;
}
.chitHead3_1{
border-bottom: 1px solid;
border-left: 1px solid;
font-size: 10pt;
}
.chitHead3_2{
}
.chitHead3_2_1{
display: inline-block;
border-bottom: 1px solid;
border-left: 1px solid;
width: 200px;
font-size: 10pt;
}
.chitHead3_2_2{
display: inline-block;
border-bottom: 1px solid;
border-left: 1px solid;
width: 200px;
font-size: 10pt;
}
.chitBody{
display: inline-block;
}
.chitBody1{
display: inline-block;
border-bottom: 1px solid;
border-right: 1px solid;
width: 200px;
height: 36px;
font-size: 10pt;
vertical-align: top;
}
.chitBody2{
display: inline-block;
border-bottom: 1px solid;
border-right: 1px solid;
width: 200px;
height: 36px;
font-size: 10pt;
vertical-align: top;
}
.chitBody3{
display: inline-block;
border-bottom: 1px solid;
width: 200px;
height: 36px;
font-size: 10pt;
vertical-align: top;
}
.chitBody4{
display: inline-block;
border-bottom: 1px solid;
border-left: 1px solid;
width: 200px;
height: 36px;
font-size: 10pt;
vertical-align: top;
}
.chitBody5{
display: inline-block;
border-bottom: 1px solid;
border-left: 1px solid;
width: 200px;
height: 36px;
font-size: 10pt;
vertical-align: top;
}
[name='SEC_0']{
font-weight: bold;
font-size: 15pt;
}
[name='SEC_1']{
font-size: 10pt;
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
			chitHead(result);
			chitSub(result);
		},
		error: function(){
			alert("totalTrialAjax에러");
		}
	});
}

function chitHead(e){
	var html = "";
	
	html += "<div id='chit'>                                   ";
	html += "<div class='chitHead'>                            ";
	html += "	<div class='chitHead1'>                        ";
	html += "		<div class='chitHead1_1'>차변</div>         ";
	html += "		<div class='chitHead1_2'>                  ";
	html += "			<div class='chitHead1_2_1'>차변 잔액</div> ";
	html += "			<div class='chitHead1_2_2'>차변 금액</div> ";//시발 존나 하기 싫은데 아무도 안도와주네 진짜 시발 인생 좆같다
	html += "		</div>                                     ";
	html += "	</div>                                         ";
	html += "	<div class='chitHead2'>                        ";
	html += "		<div class='chitHead2_1'>                  ";
	html += "			계정과목                                   ";
	html += "		</div>                                     ";
	html += "	</div>                                         ";
	html += "	<div class='chitHead3'>                        ";
	html += "		<div class='chitHead3_1'>대변   </div>       ";
	html += "		<div class='chitHead3_2'>                  ";
	html += "			<div class='chitHead3_2_1'>대변 금액</div> ";
	html += "			<div class='chitHead3_2_2'>대변 잔액</div> ";
	html += "		</div>                                     ";
	html += "	</div>                                         ";
	html += "</div>                                            ";
	html += "<div class='chitBody' id='chitBody'>";
	html += "</div>";
	
	$("#result").html(html);
}

function chitSub(e){
	var html = "";

 	for(var i = 0; i < e.depth; i++){
		for(var j = 0; j < e.sub.length; j++){
			if(e.sub[j].DEPTH == (i+1)){
				var subNo = e.sub[j].NO;
				html += "<div id='sub_" + e.sub[j].NO + "'>";
				html += "	<div>";
				while(debMoneyIter.hasNext()){
					if(debMoneyIter.next() == e.sub[j].NO){
						html += "		<div class='chitBody1' id='" + subNo + "_debBalance'>" + e.money[0].no_28 + "</div>";
						html += "		<div class='chitBody2' id='" + subNo + "_debTotal'>2</div>";
						break;
					}
				}
				html += "		<div class='chitBody3' name='SEC_" + subNo + "'>" + e.sub[j].NAME + "</div>";
				html += "		<div class='chitBody4' id='" + subNo + "_creBalance'>3</div>";
				html += "		<div class='chitBody5' id='" + subNo + "_creTotal'>4</div>";
				html += "	</div>";
				html += "</div>";

				if(i==0){
					$("#chitBody").append(html);
				}else{
					$("#sub_" + e.sub[j].SUB_NO).append(html);
				}
				html = "";
			}
		}
	}
}

function chitMoney(e){
	
}

function chitTotal(e){

}

</script>
=======
>>>>>>> branch 'master' of https://github.com/choyouhyun/cham_erp.git
<title>Insert title here</title>
</head>
<body>
	<c:import url="/top"></c:import>
	<div class="contents"> 
		<div id="conTitle">합계 잔액 시산표</div>
		<div id="searchChit">
			<div id="chitCal">
				<span>날짜 : </span>
				<input type="text" placeholder="날짜선택"/>
				<span> ~ </span>
				<input type="text" placeholder="날짜선택"/>
				&nbsp
				<input type="button" id="searchBtn" value="검색" />
			</div>
<<<<<<< HEAD
			<div id="result" class="result">

				</div>
			</div>
		</form>
=======
		</div>
>>>>>>> branch 'master' of https://github.com/choyouhyun/cham_erp.git
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>