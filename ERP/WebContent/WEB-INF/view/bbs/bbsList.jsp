<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/bbsList.css" /><!-- bbsList -->
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<script type="text/javascript">


$(document).ready(function() {
	refreshList();
	if(${sMemAuth} > 1 || $("input[name='cap']").val() == "dept") {
	$("#insertBtn").css("visibility", "visible");
	}

	$("#searchBtn").on("click", function() {
		$("input[name='searchText']").val($("#searchText").val());
		$("input[name='page']").val("1");
		
		refreshList();
	});
	
	$("#insertBtn").on("click", function() {
		$("#actionForm").attr("action", "bbsWrite");
		$("#actionForm").submit();
	});
	
	$("#pagingArea").on("click", "span", function() {
		$("input[name='page']").val($(this).attr("name"));
		refreshList();
	});

	$("#tb").on("click", "#showLink", function(){
		//$("input[name='No']").val($(this).attr("name"));
		$("input[name='No']").val($(this).closest("tr").attr("name"));
		$("#actionForm").attr("action", "bbsShow");
		$("#actionForm").submit();
	});
});

function refreshList() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "refreshList",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			 if(result.list.length == 0 && $("input[name='searchText']").val != null) {
				 
				 html += "<span id='" + "font" + "'>" + $("input[name='bbsName']").val() + "</span>";
				 $("#bbsName").html(html);
				 html = "";
				 html += "'" + $("input[name='searchText']").val() + "'" + " 에 대한 검색 결과가 없습니다.";
				 $("#bbs").html(html);
				 html= "";
					
			} else {
				for(var i = 0; i < result.list.length ; i++) {
					html += "<tr name='" + result.list[i].NO + "'>";
					html += "<td width='" + "500px" +"'>" + "<span id='" + "showLink" + "'>" + result.list[i].TITLE + "</span> </td>";
					html += "<td width='" + "300px" +"'>" 
					+ "<img alt='" + "user" + "'src='" + "resources/images/ERP/user-bbs.png" + "'/>" 
					+ result.list[i].MEMNAME + "</td>";
					html += "<td width='" + "100px" +"'>" + result.list[i].JOINDT + "</td>";
					html += "<td width='" + "100px" +"'>" + "조회수 [" + result.list[i].HITS + "]" + "</td>";
					html += "</tr>";
					}
				$("#tb").html(html);
				html = "";
				html += "<span id='" + "font" + "'>" + result.list[0].NAME + "</span>";
				$("input[name='bbsName']").val(result.list[0].NAME)
				$("#bbsName").html(html);
				html = "";
			}

			

			
			html += "<span class='" + 'first' + "' name='1'>처음</span>";
			
			if($("input[name='page']").val() == 1) {
				html += "<span name='1'>이전</span>";
			} else {
				html += "<span name='"
							+ ($("input[name='page']").val() - 1)
						+ "'>이전</span>";
			}
			for(var i = result.pb.startPcount ; i <= result.pb.endPcount ; i++) {
				if(i == $("input[name='page']").val()) {
					html += "<span name='" + i + "'><strong>" + i + "</strong></span>";
				} else {
					html += "<span name='" + i + "'>" + i + "</span>";
				}
			}
			
			if($("input[name='page']").val() == result.pb.maxPcount) {
				html += "<span name='" + result.pb.maxPcount + "'>다음</span>";
			} else {
				html += "<span name='"
							+($("input[name='page']").val() * 1 + 1)
						+ "'>다음</span>";
			}
			html 
			+= "<span name='" + result.pb.maxPcount + "'>마지막</span>";
			
			$("#pagingArea").html(html);
			
		},
		error : function(result) {
			alert("error!!");
		}
	});
}
</script>

</head>
<body>
<form action="#" method="post" id="actionForm">
<input type="hidden" value="${param.cap}" name="cap">
	<c:choose>
	<c:when test= "${empty param.page}">
		<input type="hidden" name="page" value="1" />
	</c:when>
	<c:otherwise>
		<input type="hidden" name="page" value="${param.page}" />
	</c:otherwise>
	</c:choose>
	<input type="hidden" name="searchText" value="${param.searchText}"/>
	<input type="hidden" name="No" />
	<input type="hidden" name="bbsNo" value="${sMemDn}"/>
	<input type="hidden" name="userName" value="${sMemNm}"/>
	<input type="hidden" name="bbsName" value=""/>
</form>
<%-- 
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
		</div> --%>
		<c:import url="/top"></c:import>
		<div class="contents">
			<div class="con_bbs">
				<div class="bbsInfo">
					<div class="c">
						<div class="bbsInfo_d">
							<div class="e" id="bbsName"></div>
						</div>
					</div>
				</div>
				<div class="bbs" id="bbs">
					<div class="c">
						<div class="bbs_d">
							<div class="e">
								<table class="bbsTb">
									<thead>
										<tr>
										</tr>
									</thead>
									<tbody id="tb">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="bbsSearch">
				<div class="c">
					<div class="bbsSearch_d">
						<div class="e">
							<div class="bbsSearch_Body">
								<div class="SearchText" >
									<input type="text" id="searchText" style="width: 430px" /> 
								</div>
								<div class="SearchBtn">
									<input type="button" id="searchBtn" value="검색"/>
								</div>
							</div>
						</div>
					</div>
				</div>

				</div>
				<div class="bbsControll">
					<div class="controll_blank"></div>
					<div class="paging">
						<div class="c">
							<div class="bbsControll_d">
								<div class="e">
									<div class="pagingArea" id="pagingArea"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="writeBtn">
						<div class="c">
							<div class="bbsControll_d">
								<div class="e">
									<input type="button" id="insertBtn" value="글 쓰기" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
		</div>
		<c:import url="/bottom"></c:import>
<!-- 	</div>
</div> -->
</body>
</html>