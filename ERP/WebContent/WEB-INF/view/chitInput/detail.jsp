<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/chitInput/detailInput.css" />
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js">
</script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#tb").on("click","[type=button]", function() {
		var html="";
		html+="<tr>";
	   html +="<td><input type=\"checkbox\"></td>";
	   html +="<td><input type=\"button\"></td>"; 
	   html +="<td><input type=\"text\" onkeydown=\"return showKeyCode(event)\" style=\"width: 15px;\" maxlength=\"2\"><input type=\"text\" onkeydown=\"return showKeyCode(event)\" style=\"width: 15px;\" maxlength=\"2\"></td>"; 
	   html +="<td><input type=\"text\" class=\"kor\"></td>"; 
	   html +="<td><input type=\"text\" class=\"kor\"></td>"; 
	   html +="<td><input type=\"text\" class=\"am_pr\"></td>"; 
	   html +="<td><input type=\"text\" class=\"am_pr\"></td>"; 
	   html +="<td><input type=\"text\" class=\"money\"></td>"; 
	   html +="<td><input type=\"text\" class=\"kor\"></td>"; 
	   html +="</tr>";
	   $("#tb").append(html);
		$("#detail :text").not(".kor").attr( "onkeydown", "return showKeyCode(event)" );
		$("#detail :text.am_pr").attr( "onblur", "amntXprice($(this))" );
	});
	$("#detail :text").not(".kor").attr( "onkeydown", "return showKeyCode(event)" );
	$("#detail :text.am_pr").attr( "onblur", "amntXprice($(this))" );
	$("#dis").on("click", function name() {
		if($("#detail").css("display") == "none"){   
	        $("#detail").css("display", "block");   
	    } else {  
	        $("#detail").css("display", "none");   
	    } 
	})
});
//amnt 수량 price 단가  수량 X 단가= 금액
function amntXprice(am_pr) {
	
	var money=1;

	am_pr.parent().parent().children("td").children(":text.am_pr").each(
			function() {
				money *= Number($(this).val());
		});
	am_pr.parent().parent().children("td").children(":text.money").val(money); 
	add();
}
// 금액들의 합계 = 총금액
function add() {
	var money=0;
	$(".money").each(function() {
		money += Number($(this).val());
	})
	$("#money").val(money);
}
//숫자키만 입력받는다
function showKeyCode(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39|| keyID == 9|| keyID == 116 )
	{
		return;
	}
	else
	{
		return false;
	}
	
}
</script>
</head>
<body>

<div id="detail">
<form action="">
	<table width="676px">
	    <tr style="text-align: right;">
			<td><input type="button" id="closeBtn" value="X"/></td>
		</tr>
	</table>
	<table border="1px" width="676px" >
	 	<colgroup>
	 	<col span="2" width="20" />
	 	<col span="1" width="40" />
        <col span="6" width="70" />
        </colgroup>
        <thead>
		<tr>
			<th>체크</th>
			<th>버튼</th>
			<th>월/일</th>
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
			<td><input type="checkbox"> </td>
			<td><input type="button" ></td>
			<!-- class kor=한글도 입력가능함 kor이 아니면 숫자만 가능-->
			<!-- class am_pr=갯수와 단가를 묶어둔것 change이벤트를 주기위하여 -->
			<!-- class money=(am * pr) = (갯수 * 단가) =금액-->
			<!-- id money=class money들의 합계-->
			<td><input type="text" style="width: 15px;" maxlength="2"><input type="text" maxlength="2" style="width: 15px;"></td>
			<td><input type="text" class="kor"></td>
			<td><input type="text" class="kor"></td>
			<td><input type="text" class="am_pr"></td>
			<td><input type="text" class="am_pr"></td>
			<td><input type="text" class="money" readonly="readonly"></td>
			<td><input type="text" class="kor"></td>
		</tr>
		<tr>
			<td><input type="checkbox"> </td>
			<td><input type="button"></td>
			<td><input type="text" style="width: 15px;" maxlength="2"><input type="text" maxlength="2" style="width: 15px;"></td>
			<td><input type="text" class="kor"></td>
			<td><input type="text" class="kor"></td>
			<td><input type="text" class="am_pr"></td>
			<td><input type="text" class="am_pr"></td>
			<td><input type="text" class="money" readonly="readonly"></td>
			<td><input type="text" class="kor"></td>
		</tr>
		<tr>
			<td><input type="checkbox"> </td>
			<td><input type="button"></td>
			<td><input type="text" style="width: 15px;" maxlength="2"><input type="text" maxlength="2" style="width: 15px;"></td>
			<td><input type="text" class="kor"></td>
			<td><input type="text" class="kor"></td>
			<td><input type="text" class="am_pr"></td>
			<td><input type="text" class="am_pr"></td>
			<td><input type="text" class="money" readonly="readonly"></td>
			<td><input type="text" class="kor"></td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
			<td colspan="3"></td>
			<td></td>
			<td></td>
			<td></td>
			<td>총 합계</td>
			<td><input type="text" readonly="readonly" id="money"></td>
			<td></td>
		</tr>
		<!-- 등록 버튼을 누를경우 현금+수표+어음+외상매출금 = -->
		</tfoot>
	</table>
</form>
</div>
<input type="button" id="dis">
</body>
</html>