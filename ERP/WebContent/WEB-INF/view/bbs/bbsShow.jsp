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
						location.href = "bbsList";
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
<div class="bg">
<form action="#" id="actionForm" method="post">
	<input type="hidden" name="page" value="${param.page}" />
	<input type="hidden" name="searchText" value="${param.searchText}" />
	<input type="hidden" name="bbsNo" value="${param.bbsNo}"/>
	<input type="hidden" name="bbsName" value="${param.bbsName}"/>
	<input type="hidden" name="No" value="${param.No}" />
</form>
	<div class="range">
		<div class="top">
			<div class="logo"></div>
			<div class="loginInfo">
				<div class="login">
					<div class="blank"></div>
					<div class="user">
						 <img alt="user" src="resources/images/ERP/user.png" class="img1" border="0" />
						  <span id="logout">
						  	<span class="userName">홍주완님</span>
						  	<input type="image" src="resources/images/ERP/logout.png" class="img2" border="0" />
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
									<FONT size=3pt> 
									 <UL>※농부 후안은 바리스타 입니다.※</UL>
									 <UL>※로스팅하는 엠마도 바리스타입니다.※</UL>
									 <UL>※추출하는 폴도 바리스타입니다.※</UL>
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
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">장부관리</a>
					   <ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">재무재표</a><ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">전기재무재표</a><ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">게시판</a><ul>
					     <li><a href="#">공지사항</a></li>
					     <li><a href="#">부서게시판</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">기본관리</a><ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
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