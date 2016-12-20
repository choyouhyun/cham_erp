<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js">
</script>
<script type="text/javascript">
var NO2=${params.NO2};
$(document).ready(function(){

	subInput();	
	$("#reg").on("click", function() {
	if(NO2 != null){
		$("#subSelect").removeAttr("disabled");
		subUpdate();
	}else{
		subInsert();
	}
	});
});
function subInput() {
	 var params = $("#actionForm").serialize();   
   $.ajax({
      type : "post",
      url : "subInput",
      dataType : "json",
      data : params,
      success : function(result) {
         var html = "";
         var html2="";
      html+="<select name=\"subNo\" id=\"subSelect\" >";
      for(var i=0;i<result.list.length;i++){
      	if(result.list[i].NO == NO2){
      		html2="<input type=\"hidden\" id=\"subNo\" value=\""+result.list[i].SUB_NO+"\">";
      		$('[name="subName"]').val(result.list[i].NAME);
      		if(result.list[i].DECHA=="대변"){
      			$("input:radio[value='대변']").prop("checked",true);
      		}
      		$('[name="etc"]').val(result.list[i].ETC);
      	}
      	html+="<option value=\""+result.list[i].NO+"\">";
      	for(var j=0; j<result.list[i].DEPTH;j++){
      		html += "&nbsp;&nbsp;&nbsp;&nbsp;";
      		}
      	html+=result.list[i].NAME+"</option>";
      }
      html+="</select>";
         $("#up").html(html); 
         $("#up").append(html2);
         if(NO2!=null){	
         	$("#subSelect").val($("#subNo").val()).prop("selected", true);
         	$("#subSelect").attr('disabled', 'true');
         }
      },
      error : function(result) {
         alert("error!!");
     	}
  });
}
function subInsert() {
	 var params = $("#actionForm").serialize();   
   $.ajax({
      type : "post",
      url : "subInsert",
      dataType : "json",
      data : params,
      success : function(result) {
   	   window.opener.location.reload();
   	   window.close();
      },
      error : function(result) {
         alert("error!!");
     	}
  });
}
function subUpdate() {
	 var params = $("#actionForm").serialize();   
   $.ajax({
      type : "post",
      url : "subUpdate",
      dataType : "json",
      data : params,
      success : function(result) {
   	   window.opener.location.reload();
   	   window.close();
      },
      error : function(result) {
         alert("error!!");
     	}
  });
}

</script>

</head>
<body>
	<h1>계정코드 등록</h1>
	<b>계정정보</b>
	<form action="#" id="actionForm" method="post">
		<input type="hidden" name="NO2" value="${params.NO2}" />
		
		<table border="1">
			<tr>
				<td>계정명</td>
				<td><input type="text" name="subName" /> <input type="button"
					value="중복확인" /></td>
			</tr>
			<tr>
				<td>대차구분</td>
				<td><input type="radio" name="dechaSec" value="차변"
					checked="checked">차변 &nbsp; <input type="radio"
					name="dechaSec" value="대변">대변</td>
			</tr>
			<tr>
				<td>상위계정</td>

				<td id="up"></td>
			</tr>
			<tr>
				<td>적요</td>
				<td><input type="text" name="etc"></td>
			</tr>
		</table>
	</form>
	<input type="button" value="등록" id="reg">
	<input type="button" value="취소">
</body>
</html>