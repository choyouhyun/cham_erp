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
     		html += "<td><input type=\"checkbox\" name=\"checkBox\" value=\""+result.list[i].NO+"\"></td>";
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
				<div>계정코드등록</div>
				<br />
				<form action="#" id="actionForm" method="post">
				<table border="1" cellspacing="0" align="center">
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