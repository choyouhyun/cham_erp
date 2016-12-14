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
	deptAjax();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		deptAjax();
	});
	
	$("#registBtn").on("click", function() {
		window.open('deptRegister','','width=400, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#tb").on("click", "td", function() {
 		$("input[name='deptNo']").val($(this).parents("tr").attr("name"));
		$("#actionForm").attr("action", "deptRegister");
		$("#actionForm").attr("target", "deptRegister");
		$("#actionForm").attr("onsubmit", "window.open('deptRegister', 'deptRegister', 'width=300, height=300');");
		$("#actionForm").submit(); 
	});
	$("#deleteBtn").click(function() {
		deleteDept();
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
				html += "<th><input type = 'checkbox' name='deleteCheck' value='"+ result.list[i].NO +"'/></th>";
				html += "<td>"+result.list[i].NO+"</td>";
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

function deleteDept() {
	var params = $("#actionForm").serializeArray();
	
	$.ajax({
		type : "post",
		url : "deleteDept",
		dataType : "json",
		data : params,
		success : function(result) {
			deptAjax();
		},
		error : function() {
			alert("error!!!");
		}
	});
}
</script>
</head>
<body>
<div class="bg">

	<div class="range">
		<div class="top">
			<div class="logo">로곳</div>
			<div class="loginInfo">
				<div class="login">
					<div class="blank"></div>
					<div class="user">로그인 정보</div>
				</div>
				<div class="noticeInfo">
					<div class= "notice">
						<div class="c">
							<div class="d">
								<div class="e">공지사항</div>
							</div>
						</div>
					</div>
					<div class="blank2"></div>
				</div>
			</div>
		</div>	
		<div class="depth1_Body">
			<div class="menu">
				<div class="menu_1"></div>
				<div class="menu_2"></div>
				<div class="menu_3"></div>
				<div class="menu_4"></div>
				<div class="menu_5"></div>
				<div class="menu_6"></div>
			</div>
		</div>
		<div class="depth2">서브 메뉴</div>
		<div class="contents">
			<div>거래처 리스트 
				<input type ="text" id="searchText" value=""/>
				<input type="button" value="검색" id="searchBtn"/>
			</div>
			<br/>
			<div id = "">페이지 순서</div>
			<br/>
			<form action="#" id="actionForm" method="post">
				<input type="hidden" name="page" value="1" />
				<input type="hidden" name="deptNo"/>
			<table border="1" cellspacing="0" align="center">
				<thead>
					<tr>
						<th><input type = "checkbox" id = "checkAll"/></th>
						<th>부서코드 ▼</th>
						<th>부서명 ▼</th>
						<th>적요 ▼</th>
					</tr>
				</thead>
				<tbody id="tb">
				</tbody>
			</table>
			</form>
			<div id="pagingArea">
			</div>
			<br/>
			<input type="button" value="등록" id="registBtn" />
			<input type="button" value="선택삭제" id="deleteBtn" />
			<br/>
		
		</div>
	</div>
</div>


</body>
</html>