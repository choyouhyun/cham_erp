$(document).ready(function () {
	/* 공지사항페이지 */
 	$("#noticePage").on("click", function(){ 
 		location.href="bbsList";

	});
/* 부서게시판 페이지 */
	$("#bbsPage").on("click", function(){
		  location.href="bbsList?cap=dept";
	});
/* 로그아웃 */
	$("#logoutBtn").on("click", function() {
		  location.href="Logout";
	});
	/* 메인으로 이동 */
	$("#mainBtn").on("click", function() {
		  location.href="main";
	});
});