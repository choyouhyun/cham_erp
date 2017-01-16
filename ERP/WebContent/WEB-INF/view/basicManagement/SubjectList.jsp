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

input[type="text"]{
	width: 50px;
}
#tb{
	text-align: left;
}
A:LINK{
	text-decoration: none;
}
A:visited{
	text-decoration: none; color:#0000ff;
}
A:HOVER{
	text-decoration: underline;
}

#font{
font-weight: bold;
font-size: 20pt
}

#regBtn,#delBtn{
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
#regBtn:hover,#delBtn:hover{
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
#regBtn:active,#delBtn:active{
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
    text-align: center;
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
tr td:NTH-CHILD(2){
	 width: 250px; 
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	subList();
	
	$("#regBtn").on("click", function() {
		var win=((screen.availWidth-350)/2);
  		window.open('SubjectRegister?NO2=null','popup','left='+win+'top='+win+',width=350px,height=330px'); 
  	});
	$("#delBtn").on("click", function() {
		checkDelete();
  	});
	$("#tb").on("click","A", function() {
		var NO=$(this).attr('id');
		var win=((screen.availWidth-350)/2);
		window.open('SubjectRegister?NO2='+NO+'','popup','left='+win+'top='+win+',width=350px,height=330px');
		/* refreshList($(this).attr('id')); */
	});
});
function subList() {
    $.ajax({
       type : "post",
       url : "subList",
       dataType : "json",
       success : function(result) {
          var html = "";
          var NAME="";
          
          for(var i = 0; i < result.list.length ; i++) {
           html += "<tr>";
     		html += "<th><input type=\"checkbox\" name=\"checkBox\" value=\""+result.list[i].NO+"\"></th>";
     		html += "<td>" ;
     		for(var j=0; j<result.list[i].DEPTH;j++)
     			{html += "&nbsp;&nbsp;&nbsp;&nbsp;";}
     		html += "<a href=\"javascript:void(0);\" id=\""+result.list[i].NO+"\">-"+result.list[i].NAME + "</A></td>";
     		html += "<td>"+ result.list[i].DECHA +"</td>";
     		html += "<td>"+result.list[i].SUBSEC+"</td>";
     		html += "</tr>";
          }
          
          $("#tb").html(html);
          
        
       },
       error : function(result) {
          alert("error!!");
      	}
   });
}

function checkDelete() {
	var params = $("#actionForm").serializeArray();
	
	    $.ajax({
	       type : "post",
	       url : "checkDelete",
	       dataType : "json",
	       data : params,
	       success : function(result) {
	    	   subList();
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
		<br/>
				<div id="font">계정코드등록</div>
				<br />
				<form action="#" id="actionForm" method="post">
				<table border="1" cellspacing="0" align="center" class="tblGreen" >
					<colgroup>
						<col style="width:40px"/> <!-- 체크박스 -->
						<col style="width:120px"/> <!-- 계정명 -->
						<col style="width:80px"/> <!-- 대차구분 -->
						<col style="width:80px"/> <!-- 계정종류 -->
					</colgroup>
					<thead>
						<tr>
							<th><input type="checkbox" /></th>
							<th>[계정코드]계정명</th>
							<th>대차구분</th>
							<th>계정종류</th>
						</tr>
					</thead>
					<tbody id="tb">
					</tbody>
					
				</table>
				</form>
				<br /> <br /> <input type="button" id="regBtn" value="신규입력"/>
				<input type="button" value="선택삭제" id="delBtn" /> <br />
		
		</div>
		<c:import url="/bottom"></c:import>
</body>
</html>