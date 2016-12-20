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
input[type="text"]{
	width: 50px;
}
#tb{
	text-align: left;
}
A:LINK{
	text-decoration: none;
}
A:visited{
	text-decoration: none; color:#0000ff;
}
A:HOVER{
	text-decoration: underline;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js">
</script>
<script type="text/javascript">
$(document).ready(function(){
	subList();
	
	$("#regBtn").on("click", function() {
		var win=((screen.availWidth-350)/2);
  		window.open('SubjectRegister?NO2=null','popup','left='+win+'top='+win+',width=350px,height=330px'); 
  	});
	$("#delBtn").on("click", function() {
		checkDelete();
  	});
	$("#tb").on("click","A", function() {
		var NO=$(this).attr('id');
		var win=((screen.availWidth-350)/2);
		window.open('SubjectRegister?NO2='+NO+'','popup','left='+win+'top='+win+',width=350px,height=330px');
		/* refreshList($(this).attr('id')); */
	});
});
function subList() {
    $.ajax({
       type : "post",
       url : "subList",
       dataType : "json",
       success : function(result) {
          var html = "";
          var NAME="";
          
          for(var i = 0; i < result.list.length ; i++) {
           html += "<tr>";
     		html += "<td><input type=\"checkbox\" name=\"checkBox\" value=\""+result.list[i].NO+"\"></td>";
     		html += "<td>" ;
     		for(var j=0; j<result.list[i].DEPTH;j++)
     			{html += "&nbsp;&nbsp;&nbsp;&nbsp;";}
     		html += "<a href=\"javascript:void(0);\" id=\""+result.list[i].NO+"\">-"+result.list[i].NAME + "</A></td>";
     		html += "<td>"+ result.list[i].DECHA +"</td>";
     		html += "<td>"+result.list[i].SUBSEC+"</td>";
     		html += "</tr>";
          }
          
          $("#tb").html(html);
          
        
       },
       error : function(result) {
          alert("error!!");
      	}
   });
}

function checkDelete() {
	var params = $("#actionForm").serializeArray();
	
	    $.ajax({
	       type : "post",
	       url : "checkDelete",
	       dataType : "json",
	       data : params,
	       success : function(result) {
	    	   subList();
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
				<div>계정코드등록</div>
				<br />
				<form action="#" id="actionForm" method="post">
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							<th><input type="checkbox" /></th>
							<th>[계정코드]계정명</th>
							<th>대차구분</th>
							<th>계정종류</th>
						</tr>
					</thead>
					<tbody id="tb">
					</tbody>
					
				</table>
				</form>
				<br /> <br /> <input type="button" id="regBtn" value="신규입력"/>
				<input type="button" value="선택삭제" id="delBtn" /> <br />
		
		</div>
	</div>
</div>
</body>
</html>