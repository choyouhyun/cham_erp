<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
<style type="text/css">
.outSide {
	text-align: center;
	display: inline-block;
	width: 500px;
	height: 800px;
}
</style>
<script type="text/javascript">

// 부모창에다 넣어줄 코딩
/* $("#testBtn").click(function() {
	var newWindow;
	newWindow = window.open("deptPopup","deptPopup","width=500, height=600");
}); */

$(document).ready(function() {
	deptAjax();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		deptAjax();
	});
	
	$("#tb").on("click", "tr", function() {
 		$("input[name='deptNo']").val($(this).attr("name"));
		$("#deptNameText", opener.document).val($("#deptName_"+$(this).attr("name")).text());
		$("#deptNoText", opener.document).val($(this).attr("name"));
		window.close();
	});
});

function deptAjax() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "deptAjax",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			for(var i = 0; i < result.list.length; i++){
				html += "<tr name='" + result.list[i].NO + "'>";
				html += "<td>"+result.list[i].NO+"</td>";
				html += "<td id='deptName_" + result.list[i].NO + "'>"+result.list[i].NAME+"</td>";
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
<div class="outSide">
	<div>
		거래처 리스트 <input type="text" id="searchText" value="" /> <input
			type="button" value="검색" id="searchBtn" />
	</div>
	<br />
	<form action="#" id="actionForm" method="post">
		<input type="hidden" name="page" value="1" /> 
		<input type="hidden" id="deptNo" name="deptNo" vlaue="0" />
		<input type="hidden" id="deptName" name="deptName" />
	</form>
	<table border="1" cellspacing="0" align="center">
		<thead>
			<tr>
				<th>부서코드 ▼</th>
				<th>부서명 ▼</th>
				<th>적요 ▼</th>
			</tr>
		</thead>
		<tbody id="tb">
		</tbody>
	</table>
	<div id="pagingArea"></div>
</div>
</body>
</html>