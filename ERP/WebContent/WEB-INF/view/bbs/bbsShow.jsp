<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/bbsList.css" /><!-- bbsList -->
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/bbsShows.css" /><!-- bbsShow -->
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<script type="text/javascript">
$(document).ready(function(){
	var html = "";
	html += "<span>" +  $("input[name='bbsName']").val()  + "</span>";
	
	$("#bbsName").html(html);
	$("#listBtn").on("click", function(){
		$("#actionForm").attr("action", "bbsList");
		$("#actionForm").submit();
	});
	$("#updateBtn").on("click", function(){
		$("#actionForm").attr("action", "bbsUpdate");
		$("#actionForm").submit();
	});
	$("#deleteBtn").on("click", function() {
		if(confirm("지울래?")) {
			var params = $("#actionForm").serialize();
			
			$.ajax({
				type : "post",
				url : "deleteBbs",
				dataType : "json",
				data : params,
				success : function(result) {
					if(result.res > 0) {
						var cap=$('[name="cap"]').val();
						location.href = "bbsList?cap="+cap+"";
					} else {
						alert ("삭제가 안된다.");
					}
				},
				error : function(result) {
					alert("ERROR");
				}
			});
		}
	});
});

</script>
</head>
<body>
<form action="#" id="actionForm" method="post">
	<input type="hidden" name="page" value="${param.page}" />
	<input type="hidden" name="searchText" value="${param.searchText}" />
	<input type="hidden" name="bbsNo" value="${param.bbsNo}"/>
	<input type="hidden" name="bbsName" value="${param.bbsName}"/>
	<input type="hidden" name="No" value="${param.No}" />
	<input type="hidden" name="cap" value="${param.cap}">
</form>
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
			<div class="con_bbs">
			<div class="con_bbs">
				<div class="bbsInfo">
					<div class="c">
						<div class="bbsInfo_d">
							<div class="e" id="bbsName">게시판 이름</div>
						</div>
					</div>
				</div>
			
				<div class="showBody">
					<div class="showTitle">
						<div class="c">
							<div class="title_d">
								<div class="e">
									<input type="text" class="titleText" readonly="readonly" value="${con.TITLE}" />
								</div>
							</div>
						</div>
					</div>
					<div class="showInfo">
						<div class="writer">
							<div class="c">
								<div class="writer_d">
									<div class="e">
										<div class="writerText">작성자 | ${con.MEMNAME}</div>
									</div>
								</div>
							</div>
						</div>
						<div class="date">
							<div class="c">
								<div class="date_d">
									<div class="e">
										<div class="dateText">작성일 | ${con.JOINDT}</div>
									</div>
								</div>
							</div>
						</div>
						<div class="hits">
							<div class="c">
								<div class="hits_d">
									<div class="e">
										<div class="hitsText">조회수 | ${con.HITS}</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="showContents">
						<div class="c">
							<div class="showContents_d">
								<div class="e">
									<div class="contentsText">${con.CON}</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="showFile">
					<div class="c">
						<div class="file_d">
							<div class="e">
								<a href="resources/upload/${con.UPLOAD}"download>${con.UPLOAD}</a>
							</div>
						</div>
					</div>
				</div>
				<div class="showBtns">
					<div class="c">
						<div class="btns_d">
							<div class="e">
								<div class="btnsBody">
									<div class="btnPart1">
										<input type="button" id="updateBtn" value="수정" />
									</div>
									<div class="btnPart2">
										<input type="button" id="deleteBtn"value="삭제" />
									</div>
									<div class="btnPart3">
										<input type="button" id="listBtn" value="목록" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		
		</div>
	</div>
</div>
</body>
</html>