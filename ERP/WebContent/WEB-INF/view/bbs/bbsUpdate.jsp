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
		if($("input[name='bbsTitle']").val() == "") {
			alert("제목을 입력해주세요!");
		}else if($("[name='bbsCon']").val() == ""){
			alert("내용을 입력해주세요!");
		}else if($("[name='bbsCon']").val().length < 5) {
			alert("글 내용은 5글자 이상 입력해주세요!");
		}else {
			var updateForm = $("#updateForm");
			
			updateForm.ajaxForm(uploadResultCallBack);
			updateForm.submit();	
		}
		
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
		<c:import url="/top"></c:import>
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
									<textarea rows="30" cols="100" name="bbsCon"
										class="bbsCon">${con.CON}</textarea>
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
		<c:import url="/bottom"></c:import>
</body>
</html>