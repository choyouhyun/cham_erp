$(document).ready(function(){
	noticeList();
	deptBbsList();
/*	메뉴 링크*/
	/*게시판*/
	$("#noticePage").on("click", function(){ 
		location.href="bbsList";
	});
	$("#bbsPage").on("click", function(){
		location.href="bbsList?cap=dept";
	});
	/*전기재무재표*/
	$("#beforeFinancialStatement").on("click", function(){
		location.href="BeforeFinancialStatement";
	});
	$("#beforeProfitAndLoss").on("click", function(){
		location.href="BeforeProfitAndLoss";
	});
	/*장부관리*/
	$("#customerLedger").on("click", function(){
		location.href="customerLedger";
	});
	$("#subjectLedger").on("click", function(){
		location.href="subjectLedger";
	});
	/*전표입력*/
	$("#incChitInput").on("click", function(){
		location.href="incChitInput";
	});
	$("#salChitInput").on("click", function(){
		location.href="salChitInput";
	});
	$("#othSalChitInput").on("click", function(){
		location.href="othSalChitInput";
	});
	$("#othIncsalChitInput").on("click", function(){
		location.href="othIncChitInput";
	});
	$("#salReList").on("click", function(){
		location.href="salReList";
	});
/*	$("#othSalChitInput").on("click", function(){
		location.href="othSalChitInput";
	});
	$("#othIncsalChitInput").on("click", function(){
		location.href="othIncsalChitInput";
	});
	$("#salReList").on("click", function(){
		location.href="salReList";
	});*/
	/*재무재표*/
/*	$("#statementOfPosition").on("click", function(){
		location.href="statementOfPosition";
	});
	$("#totalTrialBalance").on("click", function(){
		location.href="totalTrialBalance";
	});*/
	/*기본관리*/
	$("#companyRegister").on("click", function(){
		location.href="ComInfo";
	});
	$("#customerList").on("click", function(){
		location.href="customerList";
	});
	$("#memList").on("click", function(){
		location.href="MemList";
	});
	$("#deptList").on("click", function(){
		location.href="deptList";
	});
	$("#bankList").on("click", function(){
		location.href="BankList";
	});
	$("#subjectList").on("click", function(){
		location.href="SubjectList";
	});
	/* 로그아웃 */
	$("#logoutBtn").on("click", function() {
		location.href="Logout";
	});	
	/* 메인으로 이동 */
	$("#mainBtn").on("click", function() {
		location.href="main";
	});
	/*메인 아래 게시판*/
	$("#noticeTb").on("click", "tr", function(){
		$("input[name='No']").val($(this).attr("name"));
		$("#mainForm").attr("action", "bbsShow");
		$("#mainForm").submit();
	});
	$("#deptBbsTb").on("click", "tr", function(){
		$("input[name='No']").val($(this).attr("name"));
		$("#mainForm2").attr("action", "bbsShow?cap=dept");
		$("#mainForm2").submit();
	});
	$(document).on("click","#noticeMar", function(){
		$("input[name='No']").val($(this).attr("name"));
		$("#mainForm").attr("action", "bbsShow");
		$("#mainForm").submit();
	});
	
});

function noticeList() {
	var params = $("#mainForm").serialize();
	
	$.ajax({
		type : "post",
		url : "noticeList",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			
			for(var i = 0; i < result.list.length ; i++) {
				html += "<UL id='" + "noticeMar" + "' name='" + result.list[i].NO + "'>" + result.list[i].TITLE + "</UL>";
			}
			$("#topNotice").html(html);
			
			html = "";
			
			for(var i = 0; i < result.list.length ; i++) {
				html += "<tr name='" + result.list[i].NO + "'>";
				html += "<td class='" + "mainTd" + "' width='" + "300px" +"'>" + result.list[i].TITLE + "</td>";
				html += "<td class='" + "mainTd" + "' width='" + "100px" +"'>" + result.list[i].JOINDT + "</td>";
				html += "<td class='" + "mainTd" + "'>" + result.list[i].MEMNAME + "</td>";
				html += "</tr>";
			}

			$("#noticeTb").html(html);
			
			html = "";
			
			
		},
		error : function(result) {
			alert("error!!");
		}
	});
}
function deptBbsList() {
	var params = $("#mainForm2").serialize();
	
	$.ajax({
		type : "post",
		url : "deptBbsList",
		dataType : "json",
		data : params,
		success : function(result) {
			var html = "";
			
			for(var i = 0; i < result.list.length ; i++) {
				html += "<tr name='" + result.list[i].NO + "'>";
				html += "<td class='" + "mainTd" + "' width='" + "300px" +"'>" + result.list[i].TITLE + "</td>";
				html += "<td class='" + "mainTd" + "' width='" + "100px" +"'>" + result.list[i].JOINDT + "</td>";
				html += "<td class='" + "mainTd" + "'>" + result.list[i].MEMNAME + "</td>";
				html += "</tr>";
			}

			$("#deptBbsTb").html(html);
			
			html = "";
			
			
		},
		error : function(result) {
			alert("error!!");
		}
	});
}