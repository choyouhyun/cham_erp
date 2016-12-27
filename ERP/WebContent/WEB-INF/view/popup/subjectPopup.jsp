<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
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

#pagingArea:HOVER{
	cursor: pointer;
}

#head{
	font-size: 14pt;
	font-weight: bold;
	text-align: center;
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

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	subList();
	$("#tb").on("click","a", function() {
		var name = $(this).text().split("-");
		$("#" + $("#con").val() + "NameText", opener.document).val(name[1]);
		$("#" + $("#con").val() + "NoText", opener.document).val($(this).attr("id"));
		window.close();
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
        	  /* for(var j=0; j<result.list.length; j++){
         			if(result.list[i].NUM==result.list[j].NO){
         				NAME=result.list[j].NAME
         				break;
         			}
         		} */
           html += "<tr>";
     		html += "<td>" ;
     		for(var j=0; j<result.list[i].DEPTH;j++)
     			{html += "&nbsp;&nbsp;&nbsp;&nbsp;";}
     		html += "<a href=\"javascript:void(0);\" id=\""+result.list[i].NO+"\">-"+result.list[i].NAME + "</a></td>";
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
</script>
</head>
<body>
<div class="outSide">
		<div id="head">계정코드등록</div>
	<br />
	<form action="#" id="actionForm" method="post">
	<input type="hidden" id="con" value="${param.con}"/>
	<table border="1" cellspacing="0" align="center" class="poptbl">
		<colgroup>
			<col style="width:120px"/> <!-- 계정명 -->
			<col style="width:80px"/> <!-- 대차구분 -->
			<col style="width:80px"/> <!-- 계정종류 -->
		</colgroup>
		<thead>
			<tr>
				<th>[계정코드]계정명</th>
				<th>대차구분</th>
				<th>계정종류</th>
			</tr>
		</thead>
		<tbody id="tb">
		</tbody>
		
	</table>
	</form>
</div>
</body>
</html>