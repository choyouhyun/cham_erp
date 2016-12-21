<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />

<style type="text/css">
/*테이블 디자인  */
.maintbl {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #FF7012;
 	margin : 20px 10px;
}
.maintbl th {
    width: 100px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #FF9436;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;

}
.maintbl td {
    width: 180px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}

/* 저장 취소버튼 디자인 */

#saveBtn,#cancleBtn{
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
#saveBtn:hover,#cancleBtn:hover {
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
#saveBtn:active,#cancleBtn:active {
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
	if($("#deptNo").val() != ""){
		getDeptCon();
		$("#saveBtn").val("수정");
	}
	//저장버튼
	$("#saveBtn").on("click", function() {
		if($("#deptNo").val() != ""){
			updateDept();
		}else {
			insertDept();
		}
	});
	
	
	//취소버튼
	$("#cancleBtn").on("click", function() {
		window.close();
	});
});

function insertDept() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "insertDept",
		dataType : "json",
		data : params,
		success : function() {
			window.close();
		}, 
		error : function() {
			alert("error!");
		}
	});
}

function getDeptCon() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "getDeptCon",
		dataType : "json",
		data : params,
		success : function(result) {
			$("#textName").val(result.list.NAME);
			$("#textEtc").val(result.list.ETC);
		},
		error : function() {
			alert("error!");
		}
	});
}

function updateDept() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "updateDept",
		dataType : "json",
		data : params,
		success : function() {
			window.close();
		},
		error : function() {
			alert("error!");
		}
	});
}
</script>
</head>
<body>
	<h1>
		<center>부서 등록</center>
	</h1>
	<center>
		<form action="#" id="actionForm" method="post">
			<input type="hidden" id="deptNo" name="deptNo" value="${param.deptNo}" />
			<table border=1 cellspacing="0" class="maintbl">
				</center>
				<caption></caption>
				<tbody>
					<tr>
						<th scope="row">부서 명</th>
						<td scope="row">
							<input type="text" maxlength="" id="textName" name="textName"/>
						</td>
					</tr>
					<tr>
						<th scope="row">적요</th>
						<td scope="row">
							<input type="text" maxlength="" id="textEtc" name="textEtc"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		<br /> 
		<input type="button" value="저장" id="saveBtn"/> 
		<input type="button" value="취소" id="cancleBtn"/>
</body>
</html>