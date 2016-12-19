<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
#updateBtn, #regBtn{
display: none;

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
			<form action="#" id="actionForm">회사등록/회계연도
			<table border="1px" width="600px" align="center">
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
			</form><br/>
			<div class="btn">
			<input type="button" value="등록" id="regBtn">
			<input type="button" value="수정" id="updateBtn">
			</div>		
		</div>
	</div>
</div>
</body>
</html>