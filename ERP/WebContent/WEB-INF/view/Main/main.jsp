<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<title>Insert title here</title>
</head>
<script type="text/javascript">
$(document).ready(function () {
	noticeList();
	deptBbsList();
	
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
</script>
<body>
<form action="#" method="post" id="actionForm">
	<c:choose>
	<c:when test= "${empty param.page}">
		<input type="hidden" name="page" value="1" />
	</c:when>
	<c:otherwise>
		<input type="hidden" name="page" value="${param.page}" />
	</c:otherwise>
	</c:choose>
	<input type="hidden" name="No" />
	<input type="hidden" name="bbsNo" value="${sMemDn}"/>
	<input type="hidden" name="userName" value="${sMemNm}"/>
	<input type="hidden" name="bbsName" value=""/>
</form>
<form action="#" method="post" id="actionForm2">
<input type="hidden" value="${param.cap}" name="cap">
	<c:choose>
	<c:when test= "${empty param.page}">
		<input type="hidden" name="page" value="1" />
	</c:when>
	<c:otherwise>
		<input type="hidden" name="page" value="${param.page}" />
	</c:otherwise>
	</c:choose>
	<input type="hidden" name="No" />
	<input type="hidden" name="bbsNo" value="${sMemDn}"/>
	<input type="hidden" name="userName" value="${sMemNm}"/>
	<input type="hidden" name="bbsName" value=""/>
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
					 <li ><a href="#" id="current">게시판</a><ul>
					     <li id="noticePage"><a href="#">공지사항</a></li>
					     <li id="bbsPage"><a href="#">부서게시판</a></li>
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
			<div class="memInfo">
				<div class="pictureBody">
					<div class="c">
						<div class="memPicture_d">
							<div class="e">
								<div class="memPicture"><img alt="memImg" src="resources/images/memImg/${sMemImg}"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="infoBody">
					<div class="c">
						<div class="memInfo_d">
							<div class="e">
								<div class="memInfo_range">
									<div class="memNo">사원번호 : ${sMemNo}</div>
									<div class="memNameNRank"><b>${sMemNm}</b>&nbsp<font size=1pt>${sMemRname}</font></div>
									<div class="memDept">부서 : ${sMemDname}</div>
									<div class="memCell">H.P : ${sMemCell}</div>
									<div class="memEmail">E-mail : ${sMemEmail} </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="boards">
				<div class="noticeBody">
					<div class="boardName">공지사항</div>
					<div class="bbsNotice">
						<table class="mainTb">
							<tbody class="mainTb" id="noticeTb">
							</tbody>
						</table>
					</div>
				</div>
				<div class="deptBbsBody">
					<div class="boardName">부서게시판</div>
					<div class="bbsDept">
						<table>
							<tbody class="mainTb" id="deptBbsTb">
							</tbody>
						</table>
					</div>
				</div>
			</div>
		
		</div>
	</div>
</div>
</body>
</html>