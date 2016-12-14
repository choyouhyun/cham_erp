$(document).ready(function(){
	noticeList();
	deptBbsList();
/*	메뉴 링크*/
	/* 공지사항페이지 */
	$("#noticePage").on("click", function(){ 
		location.href="bbsList";
		
	});
	/* 부서게시판 페이지 */
	$("#bbsPage").on("click", function(){
		location.href="bbsList?cap=dept";
	});
	
	$("#beforeFinancialStatement").on("click", function(){
		location.href="BeforeFinancialStatement";
	});
	$("#beforeProfitAndLoss").on("click", function(){
		location.href="BeforeProfitAndLoss";
	});
	$("#cusLedSearch").on("click", function(){
		location.href="cusLedSearch";
	});
	/* 로그아웃 */
	$("#logoutBtn").on("click", function() {
		location.href="Logout";
	});	
	/* 메인으로 이동 */
	$("#mainBtn").on("click", function() {
		location.href="main";
	});
	$("#noticeTb").on("click", "tr", function(){
		$("input[name='No']").val($(this).attr("name"));
		$("#actionForm").attr("action", "bbsShow");
		$("#actionForm").submit();
	});
	$("#deptBbsTb").on("click", "tr", function(){
		$("input[name='No']").val($(this).attr("name"));
		$("#actionForm2").attr("action", "bbsShow?cap=dept");
		$("#actionForm2").submit();
	});
	$(document).on("click","#noticeMar", function(){
		alert("클릭");
		$("input[name='No']").val($(this).attr("name"));
		$("#actionForm").attr("action", "bbsShow");
		$("#actionForm").submit();
	});
	
});

function noticeList() {
	var params = $("#actionForm").serialize();
	
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
	var params = $("#actionForm2").serialize();
	
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