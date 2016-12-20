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
<link rel="stylesheet" type="text/css"
	href="resources/css/erp_css/basic.css" />
<script type="text/javascript">
$(document).ready(function() {
	memAjax();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		memAjax();
	});
	
	$("#searchBtn").on("click", function(){
		$("input[name='searchText']").val($("#searchText").val());
		$("input[name='page']").val("1"); // 검색결과 시 1페이지로 이동
		
		 memAjax();
	});
	
	$("#tb").on("click", "tr", function() {
		var memNo = new Object(); 
 		$("input[name='acntNo']").val($(this).attr("name"));
		$("#actionForm").attr("action", "MemRegister");
		$("#actionForm").attr("target", "Edit");
		$("#actionForm").attr("onsubmit", "window.open('../MemRegister', 'Edit', 'width=500, height=500');");
		$("#actionForm").submit(); 
	});
	$("#deleteBtn").on("click", function() {
		delMem();
	});
});
function delMem() {
	var params = $("#actionForm").serializeArray();
	
	$.ajax({
		type : "post",
		url : "delMem",
		dataType : "json",
		data : params,
		success : function(result) {
			alert("성공");
		},
		error : function() {
			alert("error!!!");
		}
	});
}
function memAjax() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "memAjax",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			for(var i = 0; i < result.list.length; i++){
				html += "<tr name='" + result.list[i].NO + "'>";
				html += "<td><input type = 'checkbox' value=\""+result.list[i].NO+"\" name=\"check\"/></td>";
				html += "<td>"+result.list[i].NO+"</td>";	
				html += "<td>"+result.list[i].NAME+"</td>";
				html += "<td>"+result.list[i].DEPT_NO+"</td>";
				html += "<td>"+result.list[i].RANK_NO+"</td>";
				html += "<td>"+result.list[i].CELL+"</td>";
				html += "<td>"+result.list[i].JOINDATE+"</td>";
				html += "<td>"+result.list[i].ADDRESS+"</td>";
				html += "</tr>";
			}
			$("#tb").html(html);
			
			html = "";
			
			html += "<span name='1'>처음</span> ";
			if($("input[name='page']").val() == 1) {
				html += "<span name='1'>이전</span> ";
			} else {
				html += "<span name='" + ($("input[name='page']").val() - 1) + "'>이전</span> ";					
			}
			
			for(var i = result.pb.startPcount; i <= result.pb.endPcount; i++){
				if(i == $("input[name = 'page']").val()) {
					html += "<span name='"+ i +"'><b>" + i + "</b></span>";
				} else {
					html += "<span name='" + i + "'>" + i + "</span>";
				}
			}
			
			if($("input[name='page']").val() == result.pb.maxPcount) {
				html += "<span name='" + result.pb.maxPcount + "'>다음</span> ";
			} else {
				html += "<span name='" + ($("input[name= 'page']").val() * 1 + 1) + "'>다음</span> ";					
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
		<c:import url="/top"></c:import>
		<div class="contents">
			<div>사원목록 
			<form action="#" id="actionForm" method="post">
				<c:choose>
					<c:when test="${empty param.page}">
						<input type = "hidden" name ="page" value="1"/> <!--넘어오면 1페이지 안넘어오면 페이지유지  -->
						<input type="hidden" name="acntNo"/>
					</c:when>
					<c:otherwise>
						<input type = "hidden" name="page" value="${param.page}"/>
						<input type="hidden" name="acntNo" />
					</c:otherwise>
				</c:choose>
				<input type="hidden" name= "searchText" value="${param.searchText}"/>
				<input type ="text" id="searchText" value=""/>
				<input type="button" value="검색" id="searchBtn"/>
			</div>
			<br/>
			<br/>
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							<th><input type = "checkbox" id = "checkAll"/></th>
							<th>사원번호 ▼</th>
							<th>성명 ▼</th>
							<th>부서번호▼</th>
							<th>직급 ▼</th>
							<th>핸드폰번호 ▼</th>
							<th>입사일자 ▼</th>
							<th>주소▼</th>
						</tr>
					</thead>
					<tbody id="tb">
					</tbody>
				</table>
			<div id="pagingArea"></div>
			<br/>
			<br/>
				<input type="button" value="등록" id="registerBtn"  onclick="window.open('MemRegister','window_name','width=1715,height=800,location=no,status=no,scrollbars=yes');" id="addBtn" />
				<input type="button" value="선택삭제" id="deleteBtn" />
			<br/>
			</form>
		</div>
		<c:import url="/bottom"></c:import>
</body>
</html>