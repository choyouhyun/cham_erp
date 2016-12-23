<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<script type="text/javascript">
$(document).ready(function() {
		chitAjax();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		chitAjax();
	});
	
	$("#tb").on("click", "td", function() {
		$("input[name=chitNo]").val($(this).parents("tr").attr("name"));
		if($(this).parents("tr").attr("gbn")==0){
			$("#actionForm").attr("action", "salChitInput");
			$("#actionForm").attr("target", "salChitInput");
			$("#actionForm").attr("onsubmit", "window.open('salChitInput', 'salChitInput', 'width=800, height=800');");
		}else if($(this).parents("tr").attr("gbn")==1){
			$("#actionForm").attr("action", "othSalChitInput");
			$("#actionForm").attr("target", "othSalChitInput");
			$("#actionForm").attr("onsubmit", "window.open('othSalChitInput', 'othSalChitInput', 'width=400, height=600');");

		}else if($(this).parents("tr").attr("gbn")==2){
			$("#actionForm").attr("action", "incChitInput");
			$("#actionForm").attr("target", "incChitInput");
			$("#actionForm").attr("onsubmit", "window.open('incChitInput', 'incChitInput', 'width=400, height=600');");

		}else if($(this).parents("tr").attr("gbn")==3){
			$("#actionForm").attr("action", "othIncChitInput");
			$("#actionForm").attr("target", "othIncChitInput");
			$("#actionForm").attr("onsubmit", "window.open('othIncChitInput', 'othIncChitInput', 'width=400, height=600');");
		}
		$("#actionForm").submit(); 
	});
	
	
});

function chitAjax() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "chitAjax",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			for(var i = 0; i < result.list.length; i++){
				if(result.list[i].SEC == "매출전표") {
					html += "<tr name='" + result.list[i].NO + "' gbn='0'>";
				} else if(result.list[i].SEC == "매출전표(기타)") {
					html += "<tr name='" + result.list[i].NO + "' gbn='1'>";
				} else if(result.list[i].SEC == "매입전표") {
					html += "<tr name='" + result.list[i].NO + "' gbn='2'>";
				} else if(result.list[i].SEC == "매입전표(기타)") {
					html += "<tr name='" + result.list[i].NO + "' gbn='3'>";
				}
				html += "<th><input type = 'checkbox' name='deleteCheck' value='"+ result.list[i].NO +"'/></th>";
				html += "<td>"+result.list[i].NO + '/' + result.list[i].INPUT_DATE+"</td>";
				html += "<td>"+result.list[i].SEC+"</td>";
				html += "<td>"+result.list[i].MONEY+"</td>";
				html += "<td>"+result.list[i].NAME+"</td>";
				html += "<td>"+result.list[i].ETC+"</td>";
				html += "</tr>";
			}
			$("#tb").html(html);
			
			html = "";
			
			html += "<span name='1'>처음</span> ";
			if($("input[name='page']").val() == 1) {
				html += "<span name='1'>이전</span> ";
			} else {
				html += "<span name='" + ($("input[name=page]").val() - 1) + "'>이전</span> ";					
			}
			
			for(var i = result.pb.startPcount; i <= result.pb.endPcount; i++){
				if(i == $("input[name = page]").val()) {
					html += "<span name='"+ i +"'><b>" + i + "</b></span>";
				} else {
					html += "<span name='" + i + "'>" + i + "</span>";
				}
			}
			
			if($("input[name='page']").val() == result.pb.maxPcount) {
				html += "<span name='" + result.pb.maxPcount + "'>다음</span> ";
			} else {
				html += "<span name='" + ($("input[name=page]").val() * 1 + 1) + "'>다음</span> ";					
			}
			html += "<span name='" + result.pb.maxPcount + "'>마지막</span>";
			
			$("#pagingArea").html(html);
		},
		error : function() {
			alert("error!!!");
		}
	});
}
</script>
</head>
<body>
<!-- 		<c:import url="/top"></c:import> -->
		<div class="contents">
		<br/>
			<div>전표관리 
			</div>
			<br/>
			<form action="#" id="actionForm" method="post">
				<input type="hidden" name="page" value="1" />
				<input type="hidden" name="chitNo" />
			<table border="1" cellspacing="0" align="center" class="tblGreen">
				<thead>
					<tr>
						<th><input type = "checkbox" id = "checkAll"/></th>
						<th>전표번호/입력일자</th>
						<th>거래유형</th>
						<th>금액</th>
						<th>거래처명</th>
						<th>적요</th>
					</tr>
				</thead>
				<tbody id="tb">
				</tbody>
			</table>
			</form>
			
			<div id="pagingArea">
			</div>
			
			<br/>
			<br/>
		
		</div>
		<!-- <c:import url="/bottom"></c:import> -->
</body>
</html>