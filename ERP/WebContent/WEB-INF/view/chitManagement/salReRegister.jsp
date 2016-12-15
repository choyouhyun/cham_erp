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
var i=1;

$(document).on("click","[name=deSub]", function() {
	con=$(this).attr("id").substring(5);
	var left=((screen.availWidth-320)/2);
	var top=((screen.availHeight-330)/2);
		window.open('subjectPopup?deCha=de&con='+con+'','popup','left='+left+',top='+top+',width=320px,height=330px'); 
});
$(document).on("click","[name=chaSub]", function() {
	/* var id=$(this).attr("id").substring(6) */;
	con=$(this).attr("id").substring(6);
	var left=((screen.availWidth-320)/2);
	var top=((screen.availHeight-330)/2);
  	window.open('subjectPopup?deCha=cha&con='+con+'','popup','left='+left+',top='+top+',width=320px,height=330px'); 
});
$(document).on("click","[name=cusNoText]", function() {
	var con=$(this).attr("id").substring(9);
	var left=((screen.availWidth-440)/2);
	var top=((screen.availHeight-400)/2);
		window.open('customerPopup?con='+con+'','popup','left='+left+',top='+top+',width=440px,height=400px'); 
});

$(document).ready(function() {
	
	$("#tb").on("click","[type=button]", function() {
		i++;
		var html="";
		html+="<tr>";
	   html +="<td><input type=\"checkbox\"></td>";
	   html +="<td><input type=\"button\"></td>"; 
	   html +="<td><input type=\"text\" readonly=\"readonly\" name=\"deSub\" id=\"deSub"+i+"\"></td>"; 
	   html +="<td><input type=\"text\" readonly=\"readonly\" id=\"deSubName"+i+"\"></td>"; 
	   html +="<td><input type=\"text\" readonly=\"readonly\" name=\"chaSub\" id=\"chaSub"+i+"\"></td>"; 
	   html +="<td><input type=\"text\" readonly=\"readonly\" id=\"chaSubName"+i+"\"></td>"; 
	   html +="<td><input type=\"text\" readonly=\"readonly\" name=\"cusNoText\" id=\"cusNoText"+i+"\"></td>"; 
	   html +="<td><input type=\"text\" readonly=\"readonly\" id=\"cusNameText"+i+"\"></td>"; 
	   html +="<td><input type=\"text\" name=\"money\"></td>"; 
	   html +="<td><input type=\"text\" name=\"comm\"></td>"; 
	   html +="<td><input type=\"text\" name=\"detEtc\"></td>"; 
	   html +="</tr>";

	   $("#tb").append(html);
	});
	$(document).on("change","[name=money]", function() {
		var moneyhap=0;
		$("[name=money]").each(function () {
			moneyhap+=Number($(this).val());
		});
		$("#moneyhap").val(moneyhap);
	});
	$(document).on("change","[name=comm]", function() {
		var commhap=0;
		$("[name=comm]").each(function () {
			commhap+=Number($(this).val());
		});
		$("#commhap").val(commhap);
	});
	$("#regBtn").on("click", function() {
			 var params2 = $("#actionForm").serialize();   
			 var params= $("#actionForm").serializeArray();
		   $.ajax({
		      type : "post",
		      url : "Sal_ReInsert",
		      dataType : "json",
		      data : params2,
		      success : function(result) {
		   	   alert("success");
		      },
		      error : function(result) {
		         alert("error!!");
		     	}
		  });
	});
	
});
$(function() {
	$( "#datepicker" ).datepicker({
	dateFormat: 'yy-mm-dd' 
	});
});

</script>
<style type="text/css">
tr{
	height: 30px;
	
}
 
input[type=text]{
	width: 100px;
	text-align: right;
}
</style>
</head>
<body>
<form id="actionForm" name="regForm">
<table border="1" width="500px" cellpadding="1" cellspacing="0">
	<colgroup>
	 	<col span="2" width="10%" />
	 	<col span="9" width="90%" />
    </colgroup>
    <thead>
	<tr>
		<th colspan="3">일자
		</th>
		<td colspan="8"><input type="text" class="form-control" id="datepicker" name="date_sal" placeholder="기준 시작일"/>
		</td>
	</tr>
	<tr>
		<th colspan="3">첨언내용
		</th>
		<td colspan="8"><input type="text" name="etc">
		</td>
	</tr>
	<tr>
		<th>체크
		</th>
		<th>버튼
		</th>
		<th>대변 계좌코드
		</th>
		<th>계좌명
		</th>
		<th>차변 계정코드
		</th>
		<th>계정코드 명
		</th>
		<th>거래처
		</th>
		<th>거래처명
		</th>
		<th>금액
		</th>
		<th>수수료
		</th>
		<th>적요
		</th>
	</tr>
	</thead>
	<tbody id="tb">
		<tr>
			<td><input type="checkbox">
			</td>
			<td><input type="button">
			</td>
			<td><input type="text" readonly="readonly" id="deSub1" name="deSub">
			</td>
			<td><input type="text" readonly="readonly" id="deSubName1" >
			</td>
			<td><input type="text" readonly="readonly" id="chaSub1" name="chaSub">
			</td>
			<td><input type="text" readonly="readonly" id="chaSubName1">
			</td>
			<td><input type="text" readonly="readonly" id="cusNoText1" name="cusNoText">
			</td>
			<td><input type="text" readonly="readonly" id="cusNameText1">
			</td>
			<td><input type="text" name="money">
			</td>
			<td><input type="text" name="comm">
			</td>
			<td><input type="text" name="detEtc">
			</td>
		</tr>
	</tbody>
	<tfoot>
	<tr>
		<td>
		</td>
		<td>
		</td>
		<td>
		</td>
		<td>
		</td>
		<td>
		</td>
		<td>
		</td>
		<td>
		</td>
		<td>
		</td>
		<td><input type="text" id="moneyhap">
		</td>
		<td><input type="text" id="commhap">
		</td>
		<td>
		</td>
	</tr>	
	</tfoot>
</table>
</form>
<input type="button" value="저장" id="regBtn">
</body>
</html>