<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script>
<style type="text/css">
body{
	font-size: 20pt;
}
#ac input[type="text"] {
	text-align: right;
	font-size: 12pt;
	width: 220px;
	border: none;
	
}
table {
	text-align: right;
}
.sub td{
	/* border-bottom: 5px solid black;  */
}
.sub2 td{
	/* color:gray; */
}
.content_{
	display: inline-block;
	text-align: left;
	font-size: 12pt;
}
#tbl{
	background-color:#A7C942;
	color:#ffffff;
}
#ac{
	border-collapse: collapse;
    text-align: left;
   /*  line-height: 1.5;
    border-top: 1px solid #ccc; */
    /* border-left: 3px solid #98bf21; */
 	margin : 20px 10px;
}
#ac th,td{
	border: 1px solid #98bf21;
}
.tbHeader th {
	text-align: center;
}	
#tbl td {
	font-size: 10pt;
}
</style>

<script type="text/javascript">
$(document).ready(function() {
	getIncomeData("2017");
});
function aa(aa){
	$("#sysdate").html(aa);
	$("#sysdate_1").html(aa-1);
	$(".sub2").not();
	$(".sub2").remove();
	getIncomeData(aa);
}
function getIncomeData(year) {
	var Year={"year":year};
	$.ajax({
		type : "post",
		url : "getIncomeData",
		dataType : "json",
		data : Year,
		success : function(result) {
			var html = new Array(3);
			for(var i = 0; i < 4; i++){
				var str = new Array(0);
				var beStr = new Array(0);
			if(result.list[i].MONEY==null){
				$("#moneyHap"+i).val(0);
			}
			else{
				$("#moneyHap"+i).val(result.list[i].MONEY);
				str=result.list[i].SUBMONEY.split(',');
			}
			if(result.list2[i].MONEY==null){
				$("#beMoneyHap"+i).val(0);
			}
			else{
				$("#beMoneyHap"+i).val(result.list2[i].MONEY);
				beStr=result.list2[i].SUBMONEY.split(',');
			}
				var k=0;
			if(str.length<beStr.length){
				k=beStr.length;
			}else {
				k=str.length;
			}
			for(var j=0;j<k;j+=2){
				if(str[j]==null){
					str[j]=" ";
					str[j+1]=" ";
				}
				if(beStr[j]==null){
					beStr[j]=" ";
					beStr[j+1]=" ";
				}
				html[i]+="<tr class=\"sub2";
				if(j==k-2){
					html[i]+=" sub";
				}
				html[i]+="\">";
				html[i]+="<td id=tbl>"+str[j]+"</td>";
				html[i]+="<td>"+str[j+1]+"</td>";
				html[i]+="<td></td>";
				html[i]+="<td id=tbl>"+beStr[j]+"</td>";
				html[i]+="<td>"+beStr[j+1]+"</td>";
				html[i]+="<td></td>";
					html[i]+="</tr>";
				}
			}
			for(var j=0;j<4;j++){
				$("#sub"+j).after(html[j]);
			}
		$("#moneySalInc1").val($("#moneyHap0").val()-$("#moneyHap1").val());
		$("#moneySalInc2").val($("#moneySalInc1").val()-$("#moneyHap2").val());
		$("#moneySalInc3").val($("#moneySalInc2").val()-$("#moneyHap3").val());
		$("#beMoneySalInc1").val($("#beMoneyHap0").val()-$("#beMoneyHap1").val());
		$("#beMoneySalInc2").val($("#beMoneySalInc1").val()-$("#beMoneyHap2").val());
		$("#beMoneySalInc3").val($("#beMoneySalInc2").val()-$("#beMoneyHap3").val());
		},
		error : function(result) {
			alert("error!!");
		}
	});
}
</script>
</head>
<body>
<c:import url="/top"></c:import>
<div class="contents">
		</br>
		<div id="font">손익계산서</div>
		</br>
		</br>
<div class="content_">
<div style="display: inline-block;">
<c:set var="now" value="<%=new java.util.Date()%>" /> 
								<fmt:formatDate value="${now}" pattern="yyyy" var="yearStart" /> 
								당기 선택 : 
								<select onchange="aa(this.value)" style="font-size: 15pt;">
									<c:forEach begin="0" end="10" var="result" step="1">
										<option value="<c:out value="${yearStart - result}" />">
											<c:out value="${yearStart - result}" />년
										</option>
									</c:forEach>
								</select>
</div>								
<table id="ac" border="0" align="center">
	<colgroup>
		<col style="width:160px"/> <!-- 재무제표표시명 -->
		<col span="2" style="width:150px"/> <!--당기 -->
		<col style="width:160px"/> <!-- 공백 -->
		<col span="2" style="width:150px"/> <!-- 전기 -->
	</colgroup>
	<thead>
	<tr class="tbHeader">
		<th id="tbl">재무제표표시명
		</th>
		<th colspan="2" id="tbl">
		당기 (<b id="sysdate">2017</b>)
		</th>
		<td id="tbl"></td>
		<th colspan="2" id="tbl">
		전기 (<b id="sysdate_1">2016</b>)
		</th>
	</tr>
	</thead>
	<tr id="sub0">
		<th id="tbl">1.매출
		</th>
		<th width="100px;">
		</th>
		<th><input type="text" readonly="readonly" id="moneyHap0"> <!-- 당기의 매출 총합  -->
		</th>
		<th id="tbl">1.매출
		</th>
		<td width="100px;"></td>
		<th><input type="text" readonly="readonly" id="beMoneyHap0"><!-- 전기의 매출 총합 -->
		</th>
	</tr >
	<!-- 매출계정 이하의 계정과목을 검색해 그 계정들의 대변 차변을 가져온다. -->
	<!-- 제품매출 , 상품매출 , 용역매출 등등으로 벌어온 돈들이 들어간다. -->
	<tr id="sub1">
		<th id="tbl">2.매출원가
		</th>
		<td>&nbsp;&nbsp;
		</td>
		<th><input type="text" readonly="readonly" id="moneyHap1"><!-- 당기의 매출원가 총합 -->
		</th>
		<th id="tbl">2.매출원가
		</th>
		<td></td>
		<th><input type="text" readonly="readonly" id="beMoneyHap1"><!-- 전기의 매출원가 총합 -->
		</th>
	</tr>
	<!-- 매출원가계정 이하의 계정과목을 검색해 그 계정들의 대변 차변을 가져온다. -->
	<!-- 기초재고액과 당기매입액 기말재고액계정을 검색하며 기초재고액은 전기의 남은 상품을 입력시키고 당기의 매입액은 당기의 매입액을 검색하고 기말재고액은 남아있는 재고를 검색한다. -->
	<tr>
		<th id=tbl>3.매출총이익
		</th>
		<td>&nbsp;&nbsp;
		</td>
		<th><input type="text" readonly="readonly" id="moneySalInc1"><!-- 당기의 매출총합 - 매출원가 의 값을 입력한다. -->
		</th>
		<th id=tbl>3.매출총이익
		</th>
		<td></td>
		<th><input type="text" readonly="readonly" id="beMoneySalInc1"><!-- 전기의 매출총합 - 매출원가 의 값을 입력한다. -->
		</th>
	</tr>
	<!-- 사이에 아무것도 안들어간다. -->
	<tr id="sub2">
		<th id=tbl>4.판매비 및<br/>일반관리비
		</th>
		<td>&nbsp;&nbsp;
		</td>
		<th><input type="text" readonly="readonly" id="moneyHap2"><!-- 당기의 판매비 및 일반관리비의 총합을 입력한다. -->
		</th>
		<th id=tbl>4.판매비 및<br/>일반관리비
		</th>
		<td></td>
		<th><input type="text" readonly="readonly" id="beMoneyHap2"><!-- 전기의 판매비 및 일반관리비의 총합을 입력한다. -->
		</th>
	</tr>
	<!-- 사이에 판매비 및 일반 관리비 계정(직원급여, 복리 후생비, 여비교통비등등이 들어간다.) -->
	<tr>
		<th id=tbl>5.영업손익
		</th>
		<td>&nbsp;&nbsp;
		</td>
		<th><input type="text" readonly="readonly" id="moneySalInc2"><!-- 당기의 (매출 총이익) - (판매비 및 일반관리비) 값을 넣는다. -->
		</th>
		<th id=tbl>5.영업손익
		</th>
		<td></td>
		<th><input type="text" readonly="readonly" id="beMoneySalInc2"><!-- 전기의 (매출 총이익) - (판매비 및 일반관리비) 값을 넣는다. -->
		</th>
	</tr>
	<!-- 사이에 아무것도 안들어간다. -->
	<tr id="sub3">
		<th id=tbl>6.영업외 수익
		</th>
		<td>&nbsp;&nbsp;
		</td>
		<th><input type="text" readonly="readonly" id="moneyHap3"><!-- 당기의 영업외 수익의 총합을 입력한다. -->
		</th>
		<th id=tbl>6.영업외 수익
		</th>
		<td></td>
		<th><input type="text" readonly="readonly" id="beMoneyHap3"><!-- 전기의 영업외 수익의 총합을 입력한다. -->
		</th>
	</tr>
	<!-- 사이에 영업외 수익의 계정(이자수익 ..등등이 들어간다.)  -->
	<tr>
		<th id=tbl>7.당기 순이익
		</th>
		<td>&nbsp;&nbsp;
		</td>
		<th><input type="text" readonly="readonly" id="moneySalInc3"><!-- 당기의 (영업손익) - (영업외 수익)의 값을 입력한다. -->
		</th>
		<th id=tbl>7.당기 순이익
		</th>
		<td></td>
		<th><input type="text" readonly="readonly" id="beMoneySalInc3"><!-- 전기의 (영업손익) - (영업외 수익)의 값을 입력한다. -->
		</th>
	</tr>
	<!--  -->
</table>
</div>
</div>
<c:import url="/bottom"></c:import>
</body>
</html>