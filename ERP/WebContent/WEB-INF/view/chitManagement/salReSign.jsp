<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script type="text/javascript">
$(document).ready(function(){
	Sal_ReDetGet();
});

function Sal_ReDetGet() {
	var params = $("#select").serialize();
	$.ajax({
		type : "post",
		url : "Sal_ReDetGet",
		dataType : "json",
		data : params,
		success : function(result) {
			$("#datepicker").val(result.con.INPUT_DATE);
			$("#etc").val(result.con.ETC);
			$("#state").val(result.con.STATE);
			var html="";
			var money=0;
			var comm=0;
			for (var i=0; i<result.list.length;i++){
				
		
				html += "<tr>";
				html += "<td>"+result.list[i].DE_SUB_NO+"</td>";
				html += "<td>"+result.list[i].DE_SUB_NAME+"</td>";
				html += "<td>"+result.list[i].CHA_SUB_NO+"</td>";
				html += "<td>"+result.list[i].CHA_SUB_NAME+"</td>";
				html += "<td>"+result.list[i].CUS_NO+"</td>";
				html += "<td>"+result.list[i].CUS_NAME+"</td>";
				html += "<td>"+result.list[i].MONEY+"</td>";
				html += "<td>"+result.list[i].COMM+"</td>";
				html += "<td>"+result.list[i].ETC+"</td>";
				html += "</tr>";
				money+=result.list[i].MONEY;
				comm+=result.list[i].COMM;
			}
				$("#moneyhap").val(money);
				$("#commhap").val(comm);
			$("#tb").html(html); 
			
		},
		error : function(result) {
			alert("error!!");
		}
	});
}
</script>
<style type="text/css">
tr{
	height: 30px;
	
}
 
input[type=text]{
	width: 100px;
	text-align: right;
}
</style>
</head>
<body>
<form action="#" id="select">
		<input type="hidden" name="no" value="${param.no}">
</form>
		
<form id="actionForm" name="actionForm">
<table border="1" width="800px" cellpadding="1" cellspacing="0">
	<colgroup>
	 	<col span="2" width="10%" />
	 	<col span="7" width="90%" />
    </colgroup>
    <thead>
	<tr>
		<th colspan="3">일자
		</th>
		<td colspan="4"><input type="text" class="form-control" id="datepicker" name="date_sal" placeholder="기준 시작일"/>
		</td>
		<td>상태
		</td>
		<td><input type="text" id="state">
		</td>
	</tr>
	<tr>
		<th colspan="3">첨언내용
		</th>
		<td colspan="6"><input type="text" name="etc" id="etc">
		</td>
	</tr>
	<tr>
		
		<th>대변 계좌코드
		</th>
		<th>계좌명
		</th>
		<th>차변 계정코드
		</th>
		<th>계정코드 명
		</th>
		<th>거래처
		</th>
		<th>거래처명
		</th>
		<th>금액
		</th>
		<th>수수료
		</th>
		<th>적요
		</th>
	</tr>
	</thead>
	<tbody id="tb">
		
	</tbody>
	<tfoot>
	<tr>
		
		<td><input type="text">
		</td>
		<td><input type="text">
		</td>
		<td><input type="text">
		</td>
		<td><input type="text">
		</td>
		<td><input type="text">
		</td>
		<td><input type="text">
		</td>
		<td><input type="text" id="moneyhap">
		</td>
		<td><input type="text" id="commhap">
		</td>
		<td>
		</td>
	</tr>	
	</tfoot>
</table>
</form>
<input type="button" value="결제">
</body>
</html>