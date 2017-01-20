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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/erp_css/basic.css" />

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

#font{
	color:#153d73;
	font-weight: bold;
	font-size: 20pt;
}

/*테이블 디자인*/
.maintbl {
    border-collapse: collapse;
    text-align: center;
    font-family: 'Trebuchet MS';
}
.maintbl td, th {
    font-size: 10pt;
    border: 1px solid #98bf21;
    height: 30px;
}
.maintbl th {
    background-color:#A7C942;
    color:#ffffff;
    font-family: Georgia;
}
.maintbl tr.alt td {
    color:#000000;
    background-color:#EAF2D3;
}
.maintbl caption {
    height: 30px;
    text-align: left;
    font-weight: bold;
}
</style>
	
	
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
			$("#actionForm").attr("onsubmit", "window.open('salChitInput', 'salChitInput', 'width=900, height=900, scrollbars=yes');");
		}else if($(this).parents("tr").attr("gbn")==1){
			$("#actionForm").attr("action", "othSalChitInput");
			$("#actionForm").attr("target", "othSalChitInput");
			$("#actionForm").attr("onsubmit", "window.open('othSalChitInput', 'othSalChitInput', 'width=900, height=900, scrollbars=yes');");

		}else if($(this).parents("tr").attr("gbn")==2){
			$("#actionForm").attr("action", "incChitInput");
			$("#actionForm").attr("target", "incChitInput");
			$("#actionForm").attr("onsubmit", "window.open('incChitInput', 'incChitInput', 'width=900, height=900, scrollbars=yes');");

		}else if($(this).parents("tr").attr("gbn")==3){
			$("#actionForm").attr("action", "othIncChitInput");
			$("#actionForm").attr("target", "othIncChitInput");
			$("#actionForm").attr("onsubmit", "window.open('othIncChitInput', 'othIncChitInput', 'width=900, height=900, scrollbars=yes');");
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
			
			html += "<span class='" + 'first' + "' name='1'>처음</span> ";
			if($("input[name='page']").val() == 1) {
				html += "<span name='1'>이전</span> ";
			} else {
				html += "<span name='" + ($("input[name=page]").val() - 1) + "'>이전</span> ";					
			}
			
			for(var i = result.pb.startPcount; i <= result.pb.endPcount; i++){
				if(i == $("input[name = page]").val()) {
					html += "<span name='"+ i +"'><strong>" + i + "</strong></span>";
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

<script type="text/javascript"> //전체 체크박스 선택,해제
$(document).ready(function(){
    
    $("#checkAll").click(function(){
        
        if($("#checkAll").prop("checked")){
            
            $("input[type=checkbox]").prop("checked",true);
            
        }else{
           
            $("input[type=checkbox]").prop("checked",false);
        }
    });
});
</script>
</head>
<body>
		<c:import url="/top"></c:import>
		<div class="contents">
			<br/>
			<span id="font">전표관리</span>
			<br/>
			<br/>
			<form action="#" id="actionForm" method="post">
				<input type="hidden" name="page" value="1" />
				<input type="hidden" name="chitNo" />
			<table border="1" cellspacing="0" align="center" class="maintbl">
				<colgroup>
					<col style="width:40px"/> <!-- 체크박스 -->
					<col style="width:150px"/> <!-- 전표번호/입력일자 -->
					<col style="width:150px"/> <!-- 거래유형 -->
					<col style="width:120px"/> <!-- 금액 -->
					<col style="width:100px"/> <!-- 거래처명 -->
					<col style="width:350px"/> <!-- 적요 -->
				</colgroup>
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
			
			<div class="paging">
				<div class="c">
					<div class="bbsControll_d">
						<div class="e">
							<div class="pagingArea" id="pagingArea"></div>
						</div>
					</div>
				</div>
			</div>
			
			<br/>
			<br/>
		
		</div>
		 <c:import url="/bottom"></c:import>
</body>
</html>