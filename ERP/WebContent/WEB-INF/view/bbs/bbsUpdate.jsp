<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/bbsList.css" /><!-- bbsList -->
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/bbsWrite.css" /><!-- bbsWrite -->
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"></script>
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<script type="text/javascript">
$(document).ready(function() {
	var html = "";
	html += "<span>" +  $("input[name='bbsName']").val()  + "</span>";
	
	$("#bbsName").html(html);
	
	html = "";
	$("#backBtn").on("click", function(){
		$("#actionForm").attr("action", "bbsShow");
		$("#actionForm").submit();
	});
	$("#updateBtn").on("click", function() {
		var updateForm = $("#updateForm");
		
		updateForm.ajaxForm(uploadResultCallBack);
		updateForm.submit();
		
	});
	$("#fileDelBtn").on("click", function() {
		$("#showFile").empty();
		$("#uploadFile").val("");
	});
});

function uploadResultCallBack(data, result) {   
	if(result =="success") {
		var resData = eval("(" + removePre(data) + ")");
		if(resData.fileName[0] != null) {
			$("#textFile").val(resData.fileName[0]);	
		}
		var params = $("#updateForm").serialize();
		
		$.ajax({
			type : "post",
			url : "updateBbs",
			dataType : "json",
			data : params,
			success : function(result) {
				if(result.res > 0) {
					$("#actionForm").attr("action", "bbsShow");
					$("#actionForm").submit();
				} else {
					alert("수정 중 문제 발생했읐요.")
				}
			},
			error : function(result) {
				alert("ERROR!!");
			}
		});
	} else {
		alert("저장안댐");
	}
}

function removePre(data) {
	if(data.indexOf("<pre>") > -1) {
		var st = data.indexOf(">");
		var ed = data.indexOf("<", st);
		
		return data.substring(st + 1, ed);
	} else {
		return data;
	}
}
</script>
</head>
<body>
<form action="#" id="actionForm" method="post" >
	<input type="hidden" name="No" value="${param.No}" />	
	<input type="hidden" name="page" value="${param.page}" />
	<input type="hidden" name="searchText" value="${param.searchText}" />
		<input type="hidden" name="bbsNo" value="${param.bbsNo}"/>
	<input type="hidden" name="userName" value="${param.userName}"/>
	<input type="hidden" name="bbsName" value="${param.bbsName}"/>
	<input type="hidden" value="${param.cap}" name="cap">
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
				<div class="bbsInfo">
					<div class="c">
						<div class="bbsInfo_d">
							<div class="e" id="bbsName">게시판 이름</div>
						</div>
					</div>
				</div>
<!-- ajax --><form action="fileUploadAjax" 
				id="updateForm" 
				method="post" 
				enctype="multipart/form-data">
				<div class="writeBody">
					<div class="writeTitle">
						<div class="c">
							<div class="title_d">
								<div class="e">
									<input type="text" class="titleText" name="bbsTitle" value="${con.TITLE}" />
								</div>
							</div>
						</div>
					</div>
					<div class="fileUplode">
						<div class="c">
							<div class="file_d">
								<div class="e">
									기존파일
									<input type="button" value="파일삭제" id="fileDelBtn" />
									<input type="file" name="att1" />
								</div>
							</div>
						</div>
					</div>
					<div class="writeContents">
						<div class="c">
							<div class="writeContents_d">
								<div class="e">
									<textarea rows="30" cols="100" name="bbsCon">${con.CON}</textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="showFile" id="showFile">
					<div class="c">
						<div class="file_d">
							<div class="e" id="uploadFile">
								<a href="resources/upload/${con.UPLOAD}"download>${con.UPLOAD}</a>
							</div>
						</div>
					</div>
				</div>
				<input type="hidden" name="textFile" id="textFile" />
				<input type="hidden" name="bbsNo" value="${param.bbsNo}"/>
	      		<input type="hidden" name="userName" value="${param.userName}"/>
				<input type="hidden" name="No" value="${param.No}" />	
			</form>
					<div class="writeBtns">
						<div class="c">
							<div class="btns_d">
								<div class="e">
									<div class="btnsBodyU">
										<div class="btnPart3">
											<input type="button" value="수정" id="updateBtn" />
										</div>
										<div class="btnPart4">
											<input type="button" value="뒤로가기" id="backBtn" />
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