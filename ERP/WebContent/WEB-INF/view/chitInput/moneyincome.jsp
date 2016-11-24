<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현금입금입력</title>
<style type="text/css">
body {
	margin: 0px;
}
.bg {
	width: 100%;
	height: 960px;
	background-color: #ff0000;
	font-size: 0px;
	margin: 0px;
}

.b {
	width: 100%;
	margin: 0 auto;
	border: 1px solid #000000;
	text-align: center;
}

.c {
	display: inline-block;
}

.e {
	display: table-cell;;
	vertical-align: middle; /* table cell(td)에서 밖에 사용 못함 */
}

.d {
	display: table-row;
	height: 100%;
}

/* 주 메뉴 */
.depth1_Body {
	display: inline-block;
	width: 100%;
	height: 5%;
	background-color: #cc99ff;
	font-size: 20px;
	text-align: center;
}
.menu {
	display: inline-block;
	width: 100%;
	height: 100%;
	background-color: #ffffff;
}
/* 주 메뉴 상세 */
.menu_1 {
	display: inline-block;
	width: 15%;
	height: 100%;
	background-color: #aa55cf;
}
.menu_2 {
	display: inline-block;
	width: 15%;
	height: 100%;
	background-color: #bb55cf;
}
.menu_3 {
	display: inline-block;
	width: 15%;
	height: 100%;
	background-color: #cc55cf;
}
.menu_4 {
	display: inline-block;
	width: 15%;
	height: 100%;
	background-color: #dd55cf;
}
.menu_5 {
	display: inline-block;
	width: 15%;
	height: 100%;
	background-color: #ee55cf;
}
.menu_6 {
	display: inline-block;
	width: 15%;
	height: 100%;
	background-color: #ff55cf;
}



/* 서브메뉴 */
.depth2 {
	display: none;
	width: 100%;
	height: 5%;
	background-color: #eeffcc;
	font-size: 20px;
	text-align: center;
}
/* 내용부분 */
.contents {
	display: inline-block;
	width: 100%;
	height: 85%;
	background-color: #ddff00; 
	font-size: 20px;
	text-align: center;
}
/* 상단 탑 */
.top {
	display: inline-block;
	width: 100%;
	height: 10%;
	background-color: #000000; 
}
.logo {
	display: inline-block;
	width: 15%;
	height: 100%;
	background-color: #ffffff;
	font-size: 20px;
	text-align: center;
}
/* 유저 로그인정보 */
.loginInfo {
	display: inline-block;
	width: 85%;
	height: 100%;
	background-color: #000000; 
	vertical-align: top;
}

.login {
	display: inline-block;
	width: 100%;
	height: 50%;
	background-color: #cacffe;
	
}
.blank {
	display: inline-block;
	width: 80%;
	height: 100%;
	background-color: #eecc99;
}
.user {
	display: inline-block;
	width: 20%;
	height: 100%;
	background-color: #999999;
	font-size: 20px;
	text-align: right;
		vertical-align: top;
}
/* 공지사항 */
.noticeInfo {
	display: inline-block;
	width: 100%;
	height: 50%;
	background-color: #000000;

}
.notice {
	display: inline-block;
	width: 80%;
	height: 100%;
	background-color: #ffeedd;
	font-size: 20px;
	text-align: center;
		vertical-align: top;

}

.blank2 {
	display: inline-block;
	width: 20%;
	height: 100%;
	background-color: #00ff99;
}

</style>
</head>
<body>
<div class="bg">
	<div class="top">
		<div class="logo">로고</div>
		<div class="loginInfo">
			<div class="login">
				<div class="blank"></div>
				<div class="user">로그인 정보</div>
			</div>
			<div class="noticeInfo">
				<div class= "notice">공지사항~</div>
				<div class="blank2"></div>
			</div>
		</div>
	</div>	
	<div class="depth1_Body">
		<div class="menu">
			<div class="menu_1"></div>
			<div class="menu_2"></div>
			<div class="menu_3"></div>
			<div class="menu_4"></div>
			<div class="menu_5"></div>
			<div class="menu_6"></div>
		</div>
	</div>
	<div class="depth2">서브 메뉴</div>
	<div class="contents">내용
	
	<table border="1" align="center">
			<tr>
				<th>구분</th>
				<th colspan="2">
				<select>
					<option value="option">구분구분구분구분구분</option>
					</select></th>
			</tr>
			<tr>
				<th>전표일자</th>
				<th>
	  <c:set var="now" value="<%=new java.util.Date()%>" />
      <fmt:formatDate value="${now}" pattern="yyyy" var="yearStart"/> 
      <select id="selYear" name="bsnsYear">        
      <c:forEach begin="0" end="10" var="result" step="1">
      <option value="<c:out value="${yearStart - result}" />"><c:out value="${yearStart - result}" />년</option>
      </c:forEach>                
      </select>
      <select>
      <c:forEach begin="1" end="12" var="result" step="1">
      <option value="<c:out value="${result}"/>"><c:out value="${result}"/>월</option>
      </c:forEach>  
      </select>
      <select>
      <c:forEach begin="1" end="31" var="result" step="1">
      <option value="<c:out value="${result}"/>"><c:out value="${result}"/>일</option>
      </c:forEach>  
      </select>
				</th>
			</tr>
			<tr>
				<th>부서코드</th>
				<th>부서코드</th>
				<th>부서명</th>
			</tr>
			<tr>
				<th>돈들어오는 계좌번호</th>
				<th>계좌코드</th>
				<th>계좌명</th>
			</tr>
			<tr>
				<th>거래처</th>
				<th>거래처코드</th>
				<th>거래처명</th>
			</tr>
			<tr>
				<th>금액</th>
				<th colspan="2"></th>
			</tr>
			<tr>
				<th>수수료</th>
				<th colspan="2"></th>
			</tr>
			<tr>
				<th>적요</th>
				<th colspan="2"></th>
			</tr>
			
	</table>
			<input type="button" value="저장" />
</body>
</html>