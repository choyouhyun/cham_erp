<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<style type="text/css">
/*스크롤바  */
html {
	scrollbar-3dLight-Color: #efefef;
	scrollbar-arrow-color: #dfdfdf;
	scrollbar-base-color: #efefef;
	scrollbar-Face-Color: #dfdfdf;
	scrollbar-Track-Color: #efefef;
	scrollbar-DarkShadow-Color: #efefef;
	scrollbar-Highlight-Color: #efefef;
	scrollbar-Shadow-Color: #efefef
}


::-webkit-scrollbar {
	width: 8px;
	height: 8px;
	border: 3px solid #fff;
}

::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment
	{
	display: block;
	height: 10px;
	background: #efefef;
}

::-webkit-scrollbar-track {
	background: #efefef;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .2)
}

::-webkit-scrollbar-thumb {
	height: 50px;
	width: 50px;
	background: rgba(0, 0, 0, .2);
	-webkit-border-radius: 8px;
	border-radius: 8px;
	-webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .1)
}

.outSide {
	text-align: center;
	display: inline-block;
	width: 500px;
	height: 800px;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	cusAjax();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		cusAjax();
	});
	
	//눌럿을때 부모창에 입력!
	$("#tb").on("click", "tr", function() {
		$("#rankText", opener.document).val($("#rankName_"+$(this).attr("name")).text());
		$("#noText", opener.document).val($(this).attr("name"));
		window.close();
	});
	
	$("#registBtn").on("click", function() {
		//location.href("../SampleSpring/rankRegister","rankRegister", "width=400, height=400, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no");
		
		$(location).attr("href", "../SampleSpring/rankRegister");
	});
});

function cusAjax() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "rankAjax",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			for(var i = 0; i < result.list.length; i++){
				html += "<tr name='" + result.list[i].NO + "'>";
				html += "<td>"+result.list[i].NO+"</td>";
				html += "<td id='rankName_" + result.list[i].NO + "'>"+result.list[i].NAME+"</td>";
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
<div>
	<div class="outSide">
		<div>직급 리스트 
			<input type ="text" id="searchText" value=""/>
			<input type="button" value="검색" id="searchBtn"/>
		</div>
		<br/>
		<form action="#" id="actionForm" method="post">
			<input type="hidden" name="page" value="1" />
			<input type="hidden" name="rankNo" />
		</form>
		<table border="1" cellspacing="0" align="center">
			<thead>
				<tr>
					<th>직급코드 ▼</th>
					<th>직급명 ▼</th>
				</tr>
			</thead>
			<tbody id="tb">
			</tbody>
		</table>
		<div id="pagingArea">
		</div>
		<input type="button" id="registBtn" value="등록"/>
		<input type="button" id="cencleBtn" value="취소"/>
	</div>
</div>
</body>
</html>