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
<link rel="stylesheet" type="text/css"
	href="resources/css/erp_css/basic.css" />
<script type="text/javascript">
$(document).ready(function() {
	memAjax();
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		memAjax();
	});
	
	$("#searchBtn").on("click", function(){
		$("input[name='searchText']").val($("#searchText").val());
		$("input[name='page']").val("1"); // 검색결과 시 1페이지로 이동
		
		 memAjax();
	});
	
	$("#tb").on("click", "tr", function() {
		var memNo = new Object(); 
 		$("input[name='acntNo']").val($(this).attr("name"));
		$("#actionForm").attr("action", "MemRegister");
		$("#actionForm").attr("target", "Edit");
		$("#actionForm").attr("onsubmit", "window.open('../MemRegister', 'Edit', 'width=500, height=500');");
		$("#actionForm").submit(); 
	});
	$("#deleteBtn").on("click", function() {
		delMem();
	});
});
function delMem() {
	var params = $("#actionForm").serializeArray();
	
	$.ajax({
		type : "post",
		url : "delMem",
		dataType : "json",
		data : params,
		success : function(result) {
			alert("성공");
		},
		error : function() {
			alert("error!!!");
		}
	});
}
function memAjax() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "memAjax",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			for(var i = 0; i < result.list.length; i++){
				html += "<tr name='" + result.list[i].NO + "'>";
				html += "<td><input type = 'checkbox' value=\""+result.list[i].NO+"\" name=\"check\"/></td>";
				html += "<td>"+result.list[i].NO+"</td>";	
				html += "<td>"+result.list[i].NAME+"</td>";
				html += "<td>"+result.list[i].DEPT_NO+"</td>";
				html += "<td>"+result.list[i].RANK_NO+"</td>";
				html += "<td>"+result.list[i].CELL+"</td>";
				html += "<td>"+result.list[i].JOINDATE+"</td>";
				html += "<td>"+result.list[i].ADDRESS+"</td>";
				html += "</tr>";
			}
			$("#tb").html(html);
			
			html = "";
			
			html += "<span name='1'>처음</span> ";
			if($("input[name='page']").val() == 1) {
				html += "<span name='1'>이전</span> ";
			} else {
				html += "<span name='" + ($("input[name='page']").val() - 1) + "'>이전</span> ";					
			}
			
			for(var i = result.pb.startPcount; i <= result.pb.endPcount; i++){
				if(i == $("input[name = 'page']").val()) {
					html += "<span name='"+ i +"'><b>" + i + "</b></span>";
				} else {
					html += "<span name='" + i + "'>" + i + "</span>";
				}
			}
			
			if($("input[name='page']").val() == result.pb.maxPcount) {
				html += "<span name='" + result.pb.maxPcount + "'>다음</span> ";
			} else {
				html += "<span name='" + ($("input[name= 'page']").val() * 1 + 1) + "'>다음</span> ";					
			}
			html += "<span name='" + result.pb.maxPcount + "'>마지막</span>";
			
			$("#pagingArea").html(html);
		},
		error : function() {
			alert("error!!!");
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
			<div>사원목록 
			<form action="#" id="actionForm" method="post">
				<c:choose>
					<c:when test="${empty param.page}">
						<input type = "hidden" name ="page" value="1"/> <!--넘어오면 1페이지 안넘어오면 페이지유지  -->
						<input type="hidden" name="acntNo"/>
					</c:when>
					<c:otherwise>
						<input type = "hidden" name="page" value="${param.page}"/>
						<input type="hidden" name="acntNo" />
					</c:otherwise>
				</c:choose>
				<input type="hidden" name= "searchText" value="${param.searchText}"/>
				<input type ="text" id="searchText" value=""/>
				<input type="button" value="검색" id="searchBtn"/>
			</div>
			<br/>
			<br/>
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							<th><input type = "checkbox" id = "checkAll"/></th>
							<th>사원번호 ▼</th>
							<th>성명 ▼</th>
							<th>부서번호▼</th>
							<th>직급 ▼</th>
							<th>핸드폰번호 ▼</th>
							<th>입사일자 ▼</th>
							<th>주소▼</th>
						</tr>
					</thead>
					<tbody id="tb">
					</tbody>
				</table>
			<div id="pagingArea"></div>
			<br/>
			<br/>
				<input type="button" value="등록" id="registerBtn"  onclick="window.open('MemRegister','window_name','width=1715,height=800,location=no,status=no,scrollbars=yes');" id="addBtn" />
				<input type="button" value="선택삭제" id="deleteBtn" />
			<br/>
			</form>
		</div>
	</div>
</div>
</body>
</html>