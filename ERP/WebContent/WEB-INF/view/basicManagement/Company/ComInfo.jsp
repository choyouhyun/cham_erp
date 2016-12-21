<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<style type="text/css">
.bbsInfo {
	display: inline-block;
	width: 1024px;
	height: 100px;
	background-color: #eada99;
	font-size: 12pt;
	text-align: left;
	vertical-align: top;
}
.contents{

text-align: center;
}

#font{
	font-weight: bold;
	font-size: 20pt
}
/*테이블 디자인  */
.maintbl {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #FF4848;
 	margin : 20px 10px;
}
.maintbl th {
    width: 100px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #FF6C6C;
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


#updateBtn, #regBtn{
display: none;

}

#updateBtn{
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
#updateBtn:hover{
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
#updateBtn:active{
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

#postBtn{
   height:40px;
   border: 1px solid #ffffff;
   background: #6d6d6d;
   background: -webkit-gradient(linear, left top, left bottom, from(#BDBDBD), to(#BDBDBD));
   background: -webkit-linear-gradient(top, #BDBDBD, #6d6d6d);
   background: -moz-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -ms-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -o-linear-gradient(top, #BDBDBD, #BDBDBD);
   background-image: -ms-linear-gradient(top, #474747 0%, #474747 100%);
  
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

#postBtn:active{
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
	  	 	$("#updateBtn").css("display","inline-block");
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
				$("#updateBtn").css("display","inline-block");
			}else{
				$("#regBtn").css("display","inline-block");
			}
			
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
			<form action="#" id="actionForm"><div id="font">회사등록/회계연도</div>
			<div align="center">
			<table border="1px" width="600px" align="center" class="maintbl">
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
					<td scope="row" align="left"><input type="button" value="우편번호 검색" id="postBtn"/>
									<br /> <input type="text" maxlength="" name="address1"/>-
									<input type="text" maxlength="" name="address2"/> <br /> 
									<input type="text" maxlength="" name="address3"/></td>
				</tr>
				
			</table>
			</div>
					<input type="hidden" name="reg_up">
			</form><br/>
			<div class="btn">
			<input type="button" value="등록" id="regBtn">
			<input type="button" value="수정" id="updateBtn">
			</div>		
		</div>
		<c:import url="/bottom"></c:import>
</body>
</html>