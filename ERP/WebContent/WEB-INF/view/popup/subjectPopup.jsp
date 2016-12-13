<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
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
		<div>계정코드등록</div>
	<br />
	<form action="#" id="actionForm" method="post">
	<input type="hidden" id="con" value="${param.con}"/>
	<table border="1" cellspacing="0" align="center">
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