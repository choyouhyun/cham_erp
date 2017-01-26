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
	font-weight: bold;
	font-size: 20pt
}

#registBtn,#deleteBtn{
   border: 1px solid #ffffff;
   background: #474747;
   background: -webkit-gradient(linear, left top, left bottom, from(#6d6d6d), to(#474747));
   background: -webkit-linear-gradient(top, #6d6d6d, #474747);
   background: -moz-linear-gradient(top, #6d6d6d, #474747);
   background: -ms-linear-gradient(top, #6d6d6d, #474747);
   background: -o-linear-gradient(top, #6d6d6d, #474747);
   background-image: -ms-linear-gradient(top, #6d6d6d 0%, #474747 100%);
   padding: 10.5px 21px;
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
#registBtn:hover,#deleteBtn:hover{
   border: 1px solid #ffffff;
   /* text-shadow: #ffffff 0 1px 0; */
   background: #222222;
   background: -webkit-gradient(linear, left top, left bottom, from(#474747), to(#222222));
   background: -webkit-linear-gradient(top, #474747, #222222);
   background: -moz-linear-gradient(top, #474747, #222222);
   background: -ms-linear-gradient(top, #474747, #222222);
   background: -o-linear-gradient(top, #474747, #222222);
   background-image: -ms-linear-gradient(top, #474747 0%, #222222 100%);
   color: #ffffff;
   }
#registBtn:active,#deleteBtn:active{
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
#searchBtn{
   border: 1px solid #ffffff;
   background: #6d6d6d;
   background: -webkit-gradient(linear, left top, left bottom, from(#BDBDBD), to(#BDBDBD));
   background: -webkit-linear-gradient(top, #BDBDBD, #6d6d6d);
   background: -moz-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -ms-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -o-linear-gradient(top, #BDBDBD, #BDBDBD);
   background-image: -ms-linear-gradient(top, #474747 0%, #474747 100%);
   padding: 7.2px 13px;
   -webkit-border-radius: 6px;
   -moz-border-radius: 6px;
   border-radius: 6px;
   color: #ffffff;
   font-size: 10px;
   font-family: '맑은고딕';
   text-decoration: none;
   vertical-align: middle;
   }
#searchBtn:hover{
   border: 1px solid #ffffff;
   background: #222222;
   background: -webkit-gradient(linear, left top, left bottom, from(#474747), to(#222222));
   background: -webkit-linear-gradient(top, #474747, #222222);
   background: -moz-linear-gradient(top, #474747, #222222);
   background: -ms-linear-gradient(top, #474747, #222222);
   background: -o-linear-gradient(top, #474747, #222222);
   background-image: -ms-linear-gradient(top, #474747 0%, #222222 100%);
   color: #ffffff;
   }

#pagingArea:HOVER{
	cursor: pointer;
}

.tblGreen {
    border-collapse: collapse;
    text-align: center;
    font-family: 'Trebuchet MS';
}
.tblGreen td, th {
    font-size: 10pt;
    border: 1px solid #98bf21;
    height: 30px;
}
.tblGreen th {
    background-color:#A7C942;
    color:#ffffff;
    font-family: Georgia;
}
.tblGreen tr.alt td {
    color:#000000;
    background-color:#EAF2D3;
}
.tblGreen caption {
    height: 30px;
    text-align: left;
    font-weight: bold;
}
</style>


<script type="text/javascript">
$(document).ready(function() {
	cusAjax();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		cusAjax();
	});
	
	$("#registBtn").on("click", function() {
		window.open('customerRegister','','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#tb").on("click", "td", function() {
		var cusNo = new Object(); 
 		$("input[name='cusNo']").val($(this).parents("tr").attr("name"));
		$("#actionForm").attr("action", "customerRegister");
		$("#actionForm").attr("target", "Edit");
		$("#actionForm").attr("onsubmit", "window.open('customerRegister', 'Edit', 'width=400, height=600');");
		$("#actionForm").submit(); 
	});
	
	$("#deleteBtn").click(function() {
		deleteCus();
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
				html += "<th><input type = 'checkbox' name='deleteCheck' value='"+ result.list[i].NO +"'/></th>";
				html += "<td>"+result.list[i].NO+"</td>";
				html += "<td>"+result.list[i].NAME+"</td>";
				html += "<td>"+result.list[i].CEO+"</td>";
				html += "<td>"+result.list[i].TEL+"</td>";
				html += "<td>"+result.list[i].CELL+"</td>";
				html += "<td>"+result.list[i].POST+"</td>";
				html += "<td>"+result.list[i].ADDRESS+"</td>";
				html += "<td>"+result.list[i].EMAIL+"</td>";
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

function deleteCus() {
	var params = $("#actionForm").serializeArray();
	
	$.ajax({
		type : "post",
		url : "deleteCus",
		dataType : "json",
		data : params,
		success : function(result) {
			cusAjax();
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
			<div id="font">거래처 리스트 
				<input type ="text" id="searchText" value=""/>
				<input type="button" value="검색" id="searchBtn"/>
			</div>
			<br/>
			<form action="#" id="actionForm" method="post">
				<input type="hidden" name="page" value="1" />
				<input type="hidden" name="cusNo" />
			<table border="1" cellspacing="0" align="center" class="tblGreen">
				<colgroup>
					<col style="width:40px"/> <!-- 체크박스 -->
					<col style="width:90px"/> <!-- 코드 -->
					<col style="width:150px"/> <!-- 거래처명 -->
					<col style="width:100px"/> <!-- 대표자명 -->
					<col span="2" style="width:120px"/> <!-- 전화/핸드폰 -->
					<col style="width:100px"/> <!-- 우편 -->
					<col style="width:350px"/> <!-- 주소 -->
					<col style="width:150px"/> <!-- 이메일 -->
				</colgroup>
				<thead>
					<tr>
						<th><input type = "checkbox" id = "checkAll"/></th>
						<th>거래처코드 ▼</th>
						<th>거래처명 ▼</th>
						<th>대표자명 ▼</th>
						<th>전화번호 ▼</th>
						<th>핸드폰번호 ▼</th>
						<th>우편번호 ▼</th>
						<th>주소 ▼</th>
						<th>이메일 ▼</th>
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
			<input type="button" value="등록" id="registBtn" />
			<input type="button" value="선택삭제" id="deleteBtn" />
			<br/>
		
		
		</div>
		<c:import url="/bottom"></c:import>
</body>
</html>