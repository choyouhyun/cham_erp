<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<style type="text/css">
table{
	display: inline-block;
}
table.th{
	font-weight: bold;
    vertical-align: top;
}
.form-control{
	font-size: 11pt;
	height: 20px;
}
.date{
	font-size: 0pt;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script type="text/javascript">
$(document).ready(function() {
	$("#deptsearchBtn").on("click", function() {
		window.open('deptPopup','','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	$("#subsearchBtn").on("click", function() {
		window.open('subjectPopup','','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	$("#cussearchBtn").on("click", function() {
		window.open('customerPopup','','width=600, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no');
	});
	$("#ledsearchBtn").on("click", function() {
		lookupList();
	});
});
function lookupList() {
	var params = $("ledgerform").serialize();
	var cusledger = $("cusledger");
		$.ajax({
			type : "post",
			url : "subList",
			dataType : "json",
			data : params,
			success : function(result) {
				cusledger.style.display = 'none';
				var html = "";
				var NAME="";	          
				for(var i = 0; i < result.list.length ; i++) {
					html += "<tr>";
					html += "<td><input type=\"text\" name=\"\" value=\""+result.list[i].NO+"\"></td>";
					html += "<td>" ;
					html += "<td>"+ result.list[i].ETC +"</td>";
					html += "<td>"+ result.list[i].chaSub +"</td>";
					html += "<td>"+result.list[i].deSub+"</td>";
					html += "<td>"+result.list[i].BALANCE +"</td>";
					html += "</tr>";
				}
				$("#tb").html(html); 
			},
			error : function(result) {
   				alert("error!!");
			}
	});
}
$(function() {
	$( "#datepicker1, #datepicker2" ).datepicker({
		dateFormat: 'yy-mm-dd'
	});
});
</script>
</head>
<body>
<div class="bg">
	<div class="range">
		<div class="top">
			<div class="logo" id="mainBtn"></div>
			<div class="loginInfo">
				<div class="login">
					<div class="blank"></div>
					<div class="user">
						 <img alt="user" src="resources/images/ERP/user.png" class="img1" border="0" />
						  <span id="logout">
						  	<span class="userName">${sMemNm}</span>
						  	<input type="image" id="logoutBtn" src="resources/images/ERP/logout.png" class="img2" border="0" />
						  </span>
					</div>
				</div>
				<div class="noticeInfo">
					<div class= "notice">
						<div class="c">
							<div class="d">
								<div class="e">
									<div><font size=4>공지사항</font>
									<marquee id=pf 
									 width="500" height="20" behavior="loop" direction="up" scrolldelay="1.5" scrollamount="1.0">
									<FONT id="topNotice" size=3pt> 
									</FONT>
									</marquee>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
		<div class="depth1_Body">
			<div class="menubar">
				<div class="menuRange">
					<ul>
					 <li><a href="#" id="current">전표입력</a>
					    <ul>
					     <li id="incChitInput"><a href="#">매입전표</a></li>
					     <li id="salChitInput"><a href="#">매출전표</a></li>
					     <li id="othSalChitInput"><a href="#">기타지출전표</a></li>
					     <li id="othIncsalChitInput"><a href="#">기타수입전표</a></li>
					     <li id="salReList"><a href="#">지출결의서</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">장부관리</a>
					   <ul>
					     <li id="customerLedger"><a href="#">거래처 원장</a></li>
					     <li id="subjectLedger"><a href="#">계정별 원장</a></li>
					     <li id="incSal"><a href="#">매입매출장</a></li>
					     <li id="chitManagement"><a href="#">전표관리</a></li>
					     <li id="chitSign"><a href="#">전표결재</a></li>					     
					    </ul>
					 </li>
					 <li><a href="#" id="current">재무재표</a><ul>
					     <li id="statementOfPosition"><a href="#">합계잔액시산표</a></li>
					     <li id="totalTrialBalance"><a href="#">재무상태표</a></li>
					     <li id="incStatement"><a href="#">손익계산서</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">전기재무재표</a><ul>
					     <li id="beforeFinancialStatement"><a href="#">전기분 재무재표</a></li>
					     <li id="beforeProfitAndLoss"><a href="#">전기분 손익 계산서</a></li>
					    </ul>
					 </li>
					 <li ><a href="#" id="current">게시판</a><ul>
					     <li id="noticePage"><a href="#">공지사항</a></li>
					     <li id="bbsPage"><a href="#">부서게시판</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">기본관리</a><ul>
					     <li id="companyRegister"><a href="#">회사등록/회계연도</a></li>
					     <li id="customerList"><a href="#">거래처 관리</a></li>
					     <li id="memList"><a href="#">사원관리</a></li>
					     <li id="deptList"><a href="#">부서관리</a></li>
					     <li id="bankList"><a href="#">계좌관리</a></li>
					     <li id="subjectList"><a href="#">계정과목관리</a></li>
					    </ul>
					 </li>
					</ul>
				</div>
			</div>
		</div>
		<div class="contents">
		거래처별 원장
			<form action="#" id="ledgerForm" method="post">
			<table id="cusledger" class="cusledger" border="1">
				<tr>
					<th>기준일자
					</th>
					<td align="left" class="date">
						<input type="text" class="form-control" id="datepicker1" name="date_sta" placeholder="기준 시작일"/> ~
						<input type="text" class="form-control" id="datepicker2" name="date_end" placeholder="기준 종료일"/>
					</td>
				</tr>
				<tr>
					<th>부서
					</th>
					<td align="left">
						<input type="button" id="deptsearchBtn" />
						<input type ="text" id="deptNameText" value="" readonly/>
						<input type="hidden" id="deptNoText">
					</td>
				</tr>
				<tr>
					<th>계정
					</th>
					<td align="left">
						<input type="button" id="subsearchBtn" />
						<input type ="text" id="NameText" value="" readonly/>
						<input type="hidden" id="NoText">
					</td>
				</tr>
				<tr>
					<th>거래처
					</th>
					<td align="left">
						<input type="button" id="cussearchBtn"/>
						<input type ="text" id="cusNameText" value="" readonly/>
						<input type="hidden" id="cusNoText">
					</td>
				</tr>
			</table><br/><br/>
			</form>
			<input type="button" id="ledsearchBtn" value="조회"/>

		
		</div>
	</div>
</div>

</body>
</html>