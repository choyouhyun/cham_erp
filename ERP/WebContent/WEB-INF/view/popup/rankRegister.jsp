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
<script type="text/javascript">
$(document).ready(function() {
	
	//저장버튼
	$("#saveBtn").on("click", function() {
		insertDept();
	});
	
	
	//취소버튼
	$("#cancleBtn").on("click", function() {
		window.close();
	});
});

function insertDept() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "insertRank",
		dataType : "json",
		data : params,
		success : function() {
			window.close();
		}, 
		error : function() {
			alert("error!");
		}
	});
}
</script>
</head>
<body onresize="parent.resizeTo(800,600)"
	onload="parent.resizeTo(800,600)">
	<h1>
		<center>직급 등록</center>
	</h1>
	<center>
		<form action="#" id="actionForm" method="post">
			<input type="hidden" id="deptNo" name="deptNo" value="${param.deptNo}" />
			<table border=1 cellspacing="0">
				</center>
				<caption></caption>
				<tbody>
					<tr>
						<th scope="row">직급명</th>
						<td scope="row">
							<input type="text" maxlength="" id="textName" name="textName"/>
						</td>
					</tr>
					<tr>
						<th scope="row">적요</th>
						<td scope="row">
							<input type="text" maxlength="" id="textEtc" name="textEtc"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		<br /> 
		<input type="button" value="저장" id="saveBtn"/> 
		<input type="button" value="취소" id="cancleBtn"/>
</body>
</html>