<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script type="text/javascript">
$(document).ready(function() {
	ComInfoGet();
	$("#regBtn,#updateBtn").on("click", function() {
		ComInsert();
	})
});
$(function() {
	$( "#datepicker1, #datepicker2" ).datepicker({
	dateFormat: 'yy-mm-dd'
	});
});
function ComInsert() {
	 var params = $("#actionForm").serialize();
	
  $.ajax({
     type : "post",
     url : "ComInsert",
     dataType : "json",
     data : params,
     success : function(result) {
    	if(result.res){
	  	 	$("#regBtn").css("display","none");
	  	 	$("#updateBtn").css("display","block");
	  	   	alert("등록 되었습니다.");
    	}else{
    		alert("업데이트 되었습니다.");
    	}
     },
     error : function(result) {
        alert("error!!");
    	}
 });
}
function ComInfoGet() {
	$.ajax({
		type : "post",
		url : "ComInfoGet",
		dataType : "json",
		success : function(result) {
			if(result.con!=null){
				$("[name='comName']").val(result.con.NAME);
				$("[name='date_sta']").val(result.con.DATE_STA);
				$("[name='date_end']").val(result.con.DATE_END);
				$("[name='num']").val(result.con.NUM);
				$("[name='ceo']").val(result.con.CEO);
				$("[name='tel']").val(result.con.TEL);
				$("[name='address1']").val(result.con.POST);
				$("[name='address2']").val(result.con.ADDRESS);
				$("[name='address3']").val(result.con.SUB_ADDRESS);
				$("[name='reg_up']").val("update");
				$("#updateBtn").css("display","block");
			}else{
				$("#regBtn").css("display","block");
			}
			
		},
		error : function(result) {
			alert("error!!");
		}
	});
}
</script>
<style type="text/css">
tr{
	height: 30px;
}
body>input[type=button]{
	display: none ;
}
</style>
</head>
<body>
<form action="#" id="actionForm">
<table border="1px" width="600px" >
	<colgroup>	
	 	<col width="170" />
        <col width="430" />
    </colgroup>
	<tr>
		<th>회계기준일
		</th>
		<td scope="row" align="left">
			<input type="text" class="form-control" id="datepicker1" name="date_sta" placeholder="기준 시작일"/> ~
			<input type="text" class="form-control" id="datepicker2" name="date_end" placeholder="기준 종료일"/>
		</td>
	</tr>
	<tr>
		<th>회사명
		</th>
		<td><input type="text" name="comName">
		</td>
	</tr>
	<tr>
		<th>사업자 등록번호
		</th>
		<td><input type="text" name="num">
		</td>
	</tr>
	<tr>
		<th>대표자명
		</th>
		<td><input type="text" name="ceo">
		</td>
	</tr>
	<tr>
		<th>전화번호
		</th>
		<td><input type="text" name="tel">
		</td>
	</tr>
	<tr>
		<th>주소
		</th>
		<td scope="row" align="left"><input type="button" value="우편번호 검색" />
						<br /> <input type="text" maxlength="" name="address1"/>-
						<input type="text" maxlength="" name="address2"/> <br /> 
						<input type="text" maxlength="" name="address3"/></td>
	</tr>
	
</table>
		<input type="hidden" name="reg_up">
</form>
<input type="button" value="등록" id="regBtn">
<input type="button" value="수정" id="updateBtn">

</body>
</html>