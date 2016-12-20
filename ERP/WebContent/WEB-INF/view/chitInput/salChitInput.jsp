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
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/detailInput.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript" src="resources/script/erp_script/detailInput.js"></script>
<style type="text/css">
table
</style>
<script type="text/javascript">
var lastNum = null;
$(document).ready(function() {
	$( "#dealDateText" ).datepicker({
		dateFormat: 'yymmdd'
	});
	
	$("input[name=detailDate]").datepicker({
		dateFormat: 'yymmdd'
	});
	
	$("#deptBtn").click(function() {
		window.open("deptPopup","dept",'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#cusBtn").click(function() {
		window.open("customerPopup","cus",'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#creBtn").click(function() {
		window.open("subjectPopup?con=cre","cus",'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	})
	
	$("#debBtn").click(function() {
		window.open("subjectPopup?con=deb","cus",'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	})
	
	//상세입력 부분
	$("#tb").on("click","[type=button]", function() {
		addList();
		$("input[name=detailDate]").datepicker({
			dateFormat: 'yymmdd'
		});
	});
	
	$("#detail :text").not(".kor").attr( "onkeydown", "return showKeyCode(event)" );
	$("#detail :text.am_pr").attr( "onblur", "amntXprice($(this))" );
	$("#detailInput").on("click", function name() {
		if($("#detail").css("display") == "none"){   
	        $("#detail").css("display", "block");   
	    } else {  
	        $("#detail").css("display", "none");   
	    } 
	});
	
	$("#closeBtn").click(function() {
        $("#detail").css("display", "none");   
	});
	
	$("#saveBtn").click(function() {
		if()
		if(confirm("입력 하시겠습니까?") == true){
			insertSal();
		}
	});
});

function insertSal() {
	var params = $("#actionMain").serializeArray();
	
	$.ajax({
		type: "post",
		url: "insertSal",
		dataType: "json",
		data: params,
		success: function(result) {
			alert("입력이 완료되었습니다.");
		},
		error: function() {
			alert("error");
		}
	});
}
</script>
</head>
<body>
<c:import url="/top"></c:import>
<form action="#" id="actionMain" method="post">
<div class="contents">
	<input type="hidden" name="memNo" id="memNo" value="${sMemNo}"/>
	<div class="chitBody">
		<table border="1" >
			<tr>
				<th>전표일자</th>
				<td colspan="3"><input type="text" id="dealDateText" name="dealDateText"/></td>
			</tr>
			<tr>
				<th>부서코드</th>
				<td><input type="text" id="deptNoText" name="deptNoText"/></td>
				<td><input type="text" id="deptNameText"/></td>
				<td><input type="button" value="부서검색" id="deptBtn"/></td>				
			</tr>
			<tr>
				<th>거래처코드</th>
				<td><input type="text" id="cusNoText" name="cusNoText" /></td>
				<td><input type="text" id="cusNameText" /></td>
				<td><input type="button" value="거래처검색" id="cusBtn"/></td>				
			</tr>
			<tr>
				<th>금액</th>
				<td colspan="3"><input type="text" id="moneyText" name="moneyText"></td>
			</tr>
			<tr>
				<th>세부내역</th>
				<td colspan="3"><input type="button" id="detailInput" value="세부내역입력" /></td>
			</tr>
			<tr>
				<th>매출계정</th>
				<td><input type="text" id="creNoText" name="creNoText"/></td>
				<td><input type="text" id="creNameText" name="creNameText" /></td>
				<td><input type="button" value="계정과목검색" id="creBtn"/></td>				
			</tr>
			<tr>
				<th>돈들어온계정과목</th>
				<td><input type="text" id="debNoText" name="debNoText" /></td>
				<td><input type="text" id="debNameText" name="debNameText" /></td>
				<td><input type="button" value="계정과목검색" id="debBtn"/></td>
			</tr>
			<tr>
				<th>적요</th>
				<td colspan="3"><input type="text" id="etcText" name="etcText"/></td>
			</tr>
		</table>
		<input type="button" value="저장" id="saveBtn"/>		
	</div>
</div>
<c:import url="/bottom"></c:import>

<div id="detail">
	<table width="676px" >
	    <tr style="text-align: right;">
			<td><input type="button" id="closeBtn" value="X"/></td>
		</tr>
	</table>
</div>

<div class="detailBody">
	<table border="1px" width="676px">
	 	<colgroup>
	 	<col span="2" width="20" />
	 	<col span="1" width="40" />
        <col span="6" width="70" />
        </colgroup>
        <thead>
		<tr>
			<th>버튼</th>
			<th>거래일자</th>
			<th>품명</th>
			<th>규격</th>
			<th>수량</th>
			<th>단가</th>
			<th>합계</th>
			<th>비고</th>
		</tr>
		</thead>
		<tbody id="tb">
		<tr>
			<!-- class kor=한글도 입력가능함 kor이 아니면 숫자만 가능-->
			<!-- class am_pr=갯수와 단가를 묶어둔것 change이벤트를 주기위하여 -->
			<!-- class money=(am * pr) = (갯수 * 단가) =금액-->
			<!-- id money=class money들의 합계-->
			<td><input type="button" ></td>
			<td><input type="text" name="detailDate"></td>
			<td><input type="text" name="detailName" class="kor"></td>
			<td><input type="text" name="detailStan" class="kor"></td>
			<td><input type="text" name="detailAmnt" class="am_pr"></td>
			<td><input type="text" name="detailPrice" class="am_pr"></td>
			<td><input type="text" class="money" readonly="readonly"></td>
			<td><input type="text" name="detailEtc" class="kor"></td>
		</tr>
		<tr>
			<td><input type="button"></td>
			<td><input type="text" name="detailDate"></td>
			<td><input type="text" name="detailName" class="kor"></td>
			<td><input type="text" name="detailStan" class="kor"></td>
			<td><input type="text" name="detailAmnt" class="am_pr"></td>
			<td><input type="text" name="detailPrice" class="am_pr"></td>
			<td><input type="text" class="money" readonly="readonly"></td>
			<td><input type="text" name="detailEtc" class="kor"></td>
		</tr>
		<tr>
			<td><input type="button"></td>
			<td><input type="text" name="detailDate"></td>
			<td><input type="text" name="detailName" class="kor"></td>
			<td><input type="text" name="detailStan" class="kor"></td>
			<td><input type="text" name="detailAmnt" class="am_pr"></td>
			<td><input type="text" name="detailPrice" class="am_pr"></td>
			<td><input type="text" class="money" readonly="readonly"></td>
			<td><input type="text" name="detailEtc" class="kor"></td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
			<td colspan="2"></td>
			<td></td>
			<td></td>
			<td></td>
			<td>총 합계</td>
			<td><input type="text" readonly="readonly" id="money"></td>
			<td></td>
		</tr>
		</tfoot>
	</table>
	</div>
</form>
</body>
</html>