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
	html += "<span id='" + "font" +"'>" +  $("input[name='bbsName']").val()  + "</span>";
	$("#bbsName").html(html);
 	if('${sMemNm}' == '${con.MEMNAME}') {
 		$("#updateBtn").css("visibility", "visible");
 		$("#deleteBtn").css("visibility", "visible");
	} 
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


		<c:import url="/top"></c:import>
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
										<div class="writerText"><b>작성자</b> | ${con.MEMNAME}</div>
									</div>
								</div>
							</div>
						</div>
						<div class="date">
							<div class="c">
								<div class="date_d">
									<div class="e">
										<div class="dateText"><b>작성일</b> | ${con.JOINDT}</div>
									</div>
								</div>
							</div>
						</div>
						<div class="hits">
							<div class="c">
								<div class="hits_d">
									<div class="e">
										<div class="hitsText"><b>조회수</b> | ${con.HITS}</div>
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
								<c:choose>
									<c:when test= "${empty con.UPLOAD}">
										파일없음
									</c:when>
									<c:otherwise>
										<a href="resources/upload/${con.UPLOAD}"download>${con.UPLOAD}</a>
									</c:otherwise>
								</c:choose>
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


		<c:import url="/bottom"></c:import>
</body>
</html>