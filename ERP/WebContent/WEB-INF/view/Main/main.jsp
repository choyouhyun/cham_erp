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
<body>

<form action="#" method="post" id="mainForm2">
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
		<c:import url="/top"></c:import>
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
						<table class="mainTb">
							<tbody class="mainTb" id="deptBbsTb">
							</tbody>
						</table>
					</div>
				</div>
			</div>
		
		</div>
		<c:import url="/bottom"></c:import>
</body>
</html>