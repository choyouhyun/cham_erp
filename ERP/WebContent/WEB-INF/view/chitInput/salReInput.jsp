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
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/detailInput.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<script type="text/javascript" src="resources/script/erp_script/detailInput.js"></script>
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


#deptBtn,#cusBtn,#debBtn,#creBtn,#detailInput{
   height: 35px;
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
   font-size: 12px;
   font-family: '맑은고딕';
   text-decoration: none;
   vertical-align: middle;
}

#deptBtn:active,#cusBtn:active,#debBtn:active,#creBtn:active,#detailInput:active{
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

/*저장 버튼 디자인  */
#saveBtn{
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
#saveBtn:hover{
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
#saveBtn:active{
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

/*세부내역 테이블 디자인  */
.subtbl { 
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #369;
  margin : 20px 10px;
}
.subtbl th {
    width: 147px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #153d73;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;

}
.subtbl td {
    width: 349px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
/*테이블 디자인  */
.maintbl {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #98bf21;
 	margin : 20px 10px;
}
.maintbl th {
    width: 110px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #A7C942;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
	font-size: 13px;
}
.maintbl td {
    width: 180px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}

</style>
<script type="text/javascript">
$(document).ready(function() {
	if($("#no").val()!=null&&$("#no").val()!=""){
		GetSal_Re_Det();
		$(".title").append(" 수정");
	}
	$( "#dealDateText" ).datepicker({
		dateFormat: 'yymmdd'
	});
	
	$("input[name=detailDate]").datepicker({
		dateFormat: 'yymmdd'
	});
	
	$("#deptBtn").click(function() {
		window.open("deptPopup","dept",'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#cusBtn").click(function() {
		window.open("customerPopup","cus",'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	
	$("#creBtn").click(function() {
		window.open("subjectPopup?con=cre","cus",'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	})
	
	$("#debBtn").click(function() {
		window.open("subjectPopup?con=deb","cus",'width=600, height=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	})
	
	//상세입력 부분
	$("#tb").on("click","[type=button]", function() {
		addList();
		$("input[name=detailDate]").datepicker({
			dateFormat: 'yymmdd'
		});
	});

	
	$("#detail :text").not(".kor").attr( "onkeydown", "return showKeyCode(event)" );
	$("#detail :text.am_pr").attr( "onblur", "amntXprice($(this))" );
	$("#detailInput").on("click", function name() {
		if($("#detail").css("display") == "none"){   
	        $("#detail").css("display", "block");   
	    } else {  
	        $("#detail").css("display", "none");   
	    } 
	});
	
	$("#closeBtn").click(function() {
        $("#detail").css("display", "none");   
	});
	
	 $(document).on("click","#saveBtn",function() {
		
		 if($("#no").val()==null||$("#no").val()==""){
			if($("#dealDateText").val() != "" && $("#deptNoText").val() != "" && $("#cusNoText").val() != "" &&
					$("#creNoText").val() != "" && $("#etcText").val() != "" && $("#dealDateText").val() != ""){	
				if(confirm("입력 하시겠습니까?") == true){
					insertSalRe();
				}
			} else {
				alert("입력값을 확인하세요");
			}
		}else{
			updateSalRe();
		}		
	}); 
});
function insertSalRe() {
	var params = $("#actionMain").serializeArray();
	
	$.ajax({
		type: "post",
		url: "insertSalRe",
		dataType: "json",
		data: params,
		success: function(result) {
			alert("입력이 완료되었습니다.");
			window.location.reload();
		},
		error: function() {
			alert("error");
		}
	});
}
function updateSalRe() {
	var params = $("#actionMain").serializeArray();
	console.log(params);
	
	$.ajax({
		type: "post",
		url: "updateSalRe",
		dataType: "json",
		data: params,
		success: function(result) {
			alert("수정이 완료되었습니다.");
	
		},
		error: function() {
			alert("error");
		}
	
	});
}


function GetSal_Re_Det() {
	var params = $("#actionMain").serializeArray();
	
	$.ajax({
		type: "post",
		url: "GetSal_Re_Det",
		dataType: "json",
		data: params,
		success: function(result) {
			$("#cusNoText").val(result.con.CUS_NO);
			$("#cusNameText").val(result.con.CUS_NAME);
			$("#deptNoText").val(result.con.DEPT_NO);
			$("#deptNameText").val(result.con.DEPT_NAME);
			$("#creNoText").val(result.con.CREDITOR_NO);
			$("#creNameText").val(result.con.CREDITOR_NAME);
			$("#debNoText").val(result.con.DEBTOR_NO);
			$("#debNameText").val(result.con.DEBTOR_NAME);
			$("#moneyText").val(result.con.MONEY);
			$("#dealDateText").val(result.con.DEAL_DATE);
			$("#etcText").val(result.con.ETC);
			var html="";
			for(var i=3;i<result.list.length;i++){
				html+="<tr>";
				html+="<td><input type=\"button\" ></td>";
				html+="<td><input type=\"text\" name=\"detailDate\"></td>";
				html+="<td><input type=\"text\" name=\"detailName\" class=\"kor\"></td>";
				html+="<td><input type=\"text\" name=\"detailStan\" class=\"kor\"></td>";
				html+="<td><input type=\"text\" name=\"detailAmnt\" class=\"am_pr\"></td>";
				html+="<td><input type=\"text\" name=\"detailPrice\" class=\"am_pr\"></td>";
				html+="<td><input type=\"text\" name=\"money\" class=\"money\" readonly=\"readonly\"></td>";
				html+="<td><input type=\"text\" name=\"detailEtc\" class=\"kor\"></td>";
				html+="</tr>";
			} 
			var hap=0;
			$("#tb").prepend(html);
			for(var i=0;i<result.list.length;i++){
				$("[name='detailDate']").eq(i).val(result.list[i].DEAL_DATE);
				$("[name='detailPrice']").eq(i).val(result.list[i].PRICE);
				$("[name='detailName']").eq(i).val(result.list[i].NAME);
				$("[name='detailAmnt']").eq(i).val(result.list[i].AMNT);
				$("[name='detailEtc']").eq(i).val(result.list[i].ETC);
				$("[name='detailStan']").eq(i).val(result.list[i].STANDARD);
				$("[name='money']").eq(i).val(result.list[i].MONEY);
				hap+=result.list[i].MONEY;
			}
			$("#money").val(hap);
			
			/* <tr>
			<td><input type="button"></td>
			<td><input type="text" name="detailDate"></td>
			<td><input type="text" name="detailName" class="kor"></td>
			<td><input type="text" name="detailStan" class="kor"></td>
			<td><input type="text" name="detailAmnt" class="am_pr"></td>
			<td><input type="text" name="detailPrice" class="am_pr"></td>
			<td><input type="text" class="money" readonly="readonly"></td>
			<td><input type="text" name="detailEtc" class="kor"></td>
		</tr> */
			/* var html = "";
			for (var i = 0; i < result.list.length; i++) {
				html += "<tr id='"+result.list[i].NO+"'>";
				html += "<td><input type=\"checkbox\" ></td>"
				html += "<td>" + result.list[i].INPUT_DATE +"-"+result.list[i].NO+"</td>";
				html += "<td>" + result.list[i].MONEY + "</td>";
				html += "<td>"+result.list[i].NAME+"</td>";
				html += "<td>"+result.list[i].ETC+"</td>";
				html += "<td>"+result.list[i].RES+"</td>";
				html += "</tr>";
			}
			$("#tb").html(html); */
			
		},
		error: function() {
			alert("error");
		}
	});
}


</script>
</head>
<body>
<c:import url="/top"></c:import>
<form action="#" id="actionMain" method="post">
<div class="contents">
	<input type="hidden" name="no" id="no" value="${param.no}" />
	<input type="hidden" name="memNo" id="memNo" value="${sMemNo}"/>
	<div class="chitBody">
		<br>
		<span id="font"> 지출결의서</span>
		<br>
		<br>
		<table class="maintbl" >
			<tr>
				<th>전표일자</th>
				<td colspan="3"><input type="text" id="dealDateText" name="dealDateText" readonly="readonly"/></td>
			</tr>
			<tr>
				<th>부서코드</th>
				<td><input type="text" id="deptNoText" name="deptNoText" readonly="readonly"/></td>
				<td><input type="text" id="deptNameText" readonly="readonly"/></td>
				<td><input type="button" value="부서검색" id="deptBtn"/></td>				
			</tr>
			<tr>
				<th>거래처코드</th>
				<td><input type="text" id="cusNoText" name="cusNoText" readonly="readonly"/></td>
				<td><input type="text" id="cusNameText" readonly="readonly"/></td>
				<td><input type="button" value="거래처검색" id="cusBtn" readonly="readonly"/></td>				
			</tr>
			<tr>
				<th>금액</th>
				<td colspan="3"><input type="text" id="moneyText" name="moneyText"></td>
			</tr>
			<tr>
				<th>세부내역</th>
				<td colspan="3"><input type="button" id="detailInput" value="세부내역입력" /></td>
			</tr>
			<tr>
				<th>매출계정</th>
				<td><input type="text" id="creNoText" name="creNoText" readonly="readonly"/></td>
				<td><input type="text" id="creNameText" name="creNameText" readonly="readonly"/></td>
				<td><input type="button" value="계정과목검색" id="creBtn"/></td>				
			</tr>
			<tr>
				<th>돈들어온계정과목</th>
				<td><input type="text" id="debNoText" name="debNoText" readonly="readonly"/></td>
				<td><input type="text" id="debNameText" name="debNameText" readonly="readonly"/></td>
				<td><input type="button" value="계정과목검색" id="debBtn"/></td>
			</tr>
			<tr>
				<th>적요</th>
				<td colspan="3"><input type="text" id="etcText" name="etcText"/></td>
			</tr>
		</table>
<input type="button" value="저장" id="saveBtn"/>		
	</div>
</div>
<div id="detail">
	<table width="676px" >
	    <tr style="text-align: right;">
			<td><input type="button" id="closeBtn" value="X"/></td>
		</tr>
	</table>

<div class="detailBody">
	<table class="subtbl" width="676px">
	 	<colgroup>
	 	<col span="2" width="20" />
	 	<col span="1" width="40" />
        <col span="6" width="70" />
        </colgroup>
        <thead>
		<tr>
			<th>버튼</th>
			<th>거래일자</th>
			<th>품명</th>
			<th>규격</th>
			<th>수량</th>
			<th>단가</th>
			<th>합계</th>
			<th>비고</th>
		</tr>
		</thead>
		<tbody id="tb">
		<tr>
			<!-- class kor=한글도 입력가능함 kor이 아니면 숫자만 가능-->
			<!-- class am_pr=갯수와 단가를 묶어둔것 change이벤트를 주기위하여 -->
			<!-- class money=(am * pr) = (갯수 * 단가) =금액-->
			<!-- id money=class money들의 합계-->
			<td><input type="button" ></td>
			<td><input type="text" name="detailDate"></td>
			<td><input type="text" name="detailName" class="kor"></td>
			<td><input type="text" name="detailStan" class="kor"></td>
			<td><input type="text" name="detailAmnt" class="am_pr"></td>
			<td><input type="text" name="detailPrice" class="am_pr"></td>
			<td><input type="text" name="money" class="money" readonly="readonly"></td>
			<td><input type="text" name="detailEtc" class="kor"></td>
		</tr>
		<tr>
			<td><input type="button"></td>
			<td><input type="text" name="detailDate"></td>
			<td><input type="text" name="detailName" class="kor"></td>
			<td><input type="text" name="detailStan" class="kor"></td>
			<td><input type="text" name="detailAmnt" class="am_pr"></td>
			<td><input type="text" name="detailPrice" class="am_pr"></td>
			<td><input type="text" name="money" class="money" readonly="readonly"></td>
			<td><input type="text" name="detailEtc" class="kor"></td>
		</tr>
		<tr>
			<td><input type="button"></td>
			<td><input type="text" name="detailDate"></td>
			<td><input type="text" name="detailName" class="kor"></td>
			<td><input type="text" name="detailStan" class="kor"></td>
			<td><input type="text" name="detailAmnt" class="am_pr"></td>
			<td><input type="text" name="detailPrice" class="am_pr"></td>
			<td><input type="text" name="money" class="money" readonly="readonly"></td>
			<td><input type="text" name="detailEtc" class="kor"></td>
		</tr>
		</tbody>
		<tfoot>
		<tr>
			<td colspan="2"></td>
			<td></td>
			<td></td>
			<td></td>
			<td>총 합계</td>
			<td><input type="text" readonly="readonly" id="money"></td>
			<td></td>
		</tr>
		</tfoot>
	</table>
	</div>
</div>
<c:import url="/bottom"></c:import>


</form>
</body>
</html>