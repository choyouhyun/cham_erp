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
$(document).ready(function() {
	Sal_ReGet();
	$(document).on("click","[name=signBtn]", function () {
		var no=$(this).parent("td").parent("tr").attr("id");
		location.href="salReSign?no="+no+"";
	});
	$("#salRe").on("click", function() {
		location.href="salReRegister";
	});
});
function Sal_ReGet() {
	$.ajax({
		type : "post",
		url : "Sal_ReGet",
		dataType : "json",
		success : function(result) {
			var html = "";
			for (var i = 0; i < result.list.length; i++) {
				html += "<tr id='"+result.list[i].NO+"'>";
				html += "<td>" + result.list[i].SAL_DATE +"-"+result.list[i].NO+"</td>";
				html += "<td>" + result.list[i].NAME + "</td>";
				html += "<td>"+result.list[i].RES+"</td>";
				html += "<td><input type=\"button\" name=\"signBtn\"></td>";
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
전표결제함
<table border="1">
	<thead>
	<tr>
		<th>전표일자
		</th>
		<th>결재자
		</th>
		<th>결재상태
		</th>
		<th><input type="button" >
		</th>
	</tr>
	</thead>
	<tbody id="tb">
	
	</tbody>
</table>
<input type="button" value="지출 결의서 등록" id="salRe">
</body>
</html>