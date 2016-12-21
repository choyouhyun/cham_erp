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

#reg,#cancel{
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
#reg:hover,#cancel:hover {
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
#reg:active,#cancel:active {
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

#checkBtn{
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

#checkBtn:active{
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
	<h1 align="center">계정코드 등록</h1>
	<b>계정정보</b>
	<form action="#" id="actionForm" method="post">
		<input type="hidden" name="NO2" value="${params.NO2}" />
		
		<table border="1" class="maintbl">
			<tr>
				<td>계정명</td>
				<td><input type="text" name="subName" /> <input type="button"
					value="중복확인" id="checkBtn"/></td>
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
	<div align="center">
	<input type="button" value="등록" id="reg">
	<input type="button" value="취소" id="cancel">
	</div>
</body>
</html>