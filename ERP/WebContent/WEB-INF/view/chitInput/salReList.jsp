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
<script type="text/javascript">
$(document).ready(function() {
	GetSal_Re();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		cusAjax();
	});
	$("#salRe").on("click", function() {
		location.href="salReInput";
	});
	$("#tb").on("click","td", function() {
		if($(this).parent("tr").attr("name")==$("[name=mem_no]").val()){
			var no=$(this).parent("tr").attr("id");
			location.href="salReInput?no="+no+"";
		}else{
			var no=$(this).parent("tr").attr("id");
			location.href="salReSign?no="+no+"";
		}
	});
});
function GetSal_Re() {
	var params = $("#actionSalRe").serialize();
	$.ajax({
		type : "post",
		url : "GetSal_Re",
		dataType : "json",
		data : params,
		success : function(result) {
			
			var html = "";
			for (var i = 0; i < result.list.length; i++) {
				html += "<tr id='"+result.list[i].NO+"' name='"+result.list[i].MEM_NO+"'>";
				html += "<td><input type=\"checkbox\" ></td>"
				html += "<td>" + result.list[i].INPUT_DATE +"-"+result.list[i].NO+"</td>";
				html += "<td>" + result.list[i].MONEY + "</td>";
				html += "<td>"+result.list[i].NAME+"</td>";
				html += "<td>"+result.list[i].ETC+"</td>";
				html += "<td>"+result.list[i].RES+"</td>";
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
<form action="#" id="actionSalRe">
<c:choose>
					<c:when test="${empty param.page}">
						<input type = "hidden" name ="page" value="1"/> <!--넘어오면 1페이지 안넘어오면 페이지유지  -->
					</c:when>
					<c:otherwise>
						<input type = "hidden" name="page" value="${param.page}"/>
					</c:otherwise>
</c:choose>
</form>
<input type="hidden" value="${sMemNo}" name="mem_no">
	<table border="1px" align="center">
		<thead>
		<tr>
			<td>체크</td>
			<td>전표번호</td>
			<td>금액</td>
			<td>거래처명</td>
			<td>적요</td>
			<td>결제</td>
		</tr>
		</thead>
		<tbody id="tb">
		
		</tbody>
	</table>
	<input type="button" value="지출 결의서 등록" id="salRe">
	</div>
	<c:import url="/bottom"></c:import>
</body>
</html>