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

#pagingArea:HOVER{
	cursor: pointer;
}

#head{
	font-size: 14pt;
	font-weight: bold;
}
/*팝업테이블 디자인  */
.poptbl {
    border-collapse: collapse;
    text-align: center;
    font-family: 'Trebuchet MS';
}
.poptbl td, th {
    font-size: 10pt;
    border: 1px solid #FFBA85;
    height: 30px;
}
.poptbl th {
    background-color:#FFCC97;
    color:#ffffff;
    font-family: Georgia;
}
.poptbl tr.alt td {
    color:#000000;
    background-color:#EAF2D3;
}
.poptbl caption {
    height: 30px;
    text-align: left;
    font-weight: bold;
}
/*검색버튼 디자인  */
#searchBtn{
   height:40px;
   border: 1px solid #ffffff;
   background: #6d6d6d;
   background: -webkit-gradient(linear, left top, left bottom, from(#BDBDBD), to(#BDBDBD));
   background: -webkit-linear-gradient(top, #BDBDBD, #6d6d6d);
   background: -moz-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -ms-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -o-linear-gradient(top, #BDBDBD, #BDBDBD);
   background-image: -ms-linear-gradient(top, #474747 0%, #474747 100%);
  
   -webkit-border-radius: 6px;
   -moz-border-radius: 6px;
   border-radius: 6px;
   /* -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0; */
  /*  box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #ffffff 0 1px 0; */
   color: #ffffff;
   font-size: 14px;
   font-family: '맑은고딕';
   text-decoration: none;
   vertical-align: middle;
}

#searchBtn:active{
   /* text-shadow: #ffffff 0 1px 0; */
   border: 1px solid #ffffff;
   background: #000000;
   background: -webkit-gradient(linear, left top, left bottom, from(#000000), to(#222222));
   background: -webkit-linear-gradient(top, #000000, #000000);
   background: -moz-linear-gradient(top, #000000, #000000);
   background: -ms-linear-gradient(top, #000000, #000000);
   background: -o-linear-gradient(top, #000000, #000000);
   background-image: -ms-linear-gradient(top, #000000 0%, #000000 100%);
   color: #fff;
}

</style>
<script type="text/javascript">
$(document).ready(function() {
	cusAjax();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		cusAjax();
	});
	
	$("#tb").on("click", "tr", function() {
 		$("input[name='cusNo']").val($(this).attr("name"));
		$("#cusNameText", opener.document).val($("#cusName_"+$(this).attr("name")).text());
		$("#cusNoText", opener.document).val($(this).attr("name"));
		window.close();
	});
});

function cusAjax() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "cusAjax",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			for(var i = 0; i < result.list.length; i++){
				html += "<tr name='" + result.list[i].NO + "'>";
				html += "<td>"+result.list[i].NO+"</td>";
				html += "<td id='cusName_" + result.list[i].NO + "'>"+result.list[i].NAME+"</td>";
				html += "<td>"+result.list[i].CEO+"</td>";
				html += "<td>"+result.list[i].ADDRESS+"</td>";
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
		<div id="head">거래처 리스트 
			<input type ="text" id="searchText" value=""/>
			<input type="button" value="검색" id="searchBtn"/>
		</div>
		<br/>
		<form action="#" id="actionForm" method="post">
			<input type="hidden" name="page" value="1" />
			<input type="hidden" name="cusNo" />
		</form>
		<table border="1" cellspacing="0" align="center" class="poptbl">
			<thead>
				<tr>
					<th>거래처코드 ▼</th>
					<th>거래처명 ▼</th>
					<th>대표자명 ▼</th>
					<th>주소 ▼</th>
				</tr>
			</thead>
			<tbody id="tb">
			</tbody>
		</table>
		<div id="pagingArea">
		</div>
	</div>
</div>
</body>
</html>