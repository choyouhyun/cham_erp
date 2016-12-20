<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
</head>
<body>
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
					     <li><a href="#">매입매출전표</a></li>
					     <li><a href="#">일반전표</a></li>
					     <li><a href="#">자금전표</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">장부관리</a>
					   <ul>
					     <li id="cusLedSearch"><a href="#">거래처 원장</a></li>
					     <li><a href="#">계정별 원장</a></li>
					     <li><a href="#">매입매출장</a></li>
					     <li><a href="#">거래처별 매입매출장</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">재무재표</a><ul>
					     <li><a href="#">합계잔액시산표</a></li>
					     <li><a href="#">재무상태표</a></li>
					     <li><a href="#">손익계산서</a></li>
					     <li><a href="#">제조원가명세서</a></li>
					     <li><a href="#">기간별손익계산서</a></li>
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
					     <li><a href="#">회사등록/회계연도</a></li>
					     <li><a href="#">거래처 관리</a></li>
					     <li><a href="#">사원관리</a></li>
					     <li><a href="#">부서관리</a></li>
					     <li><a href="#">계정과목</a></li>
					    </ul>
					 </li>
					</ul>
				</div>
			</div>
		</div>
		<div class="contents">
				★거래처별 원장
				<form action="#">
					<table border="1" align="center">
						<tr>
							<th>구분</th>
							<td>
							<!-- name 건별 일별 월별 계정별 집계 변경해야함 -->
							<input type="radio" name="sec" value="건별">건별 
							<input type="radio" name="sec" value="일별">일별 
							<input type="radio" name="sec" value="월별">월별 
							<input type="radio" name="sec" value="계정별집계">계정별집계
							</td>
						</tr>
						<tr>
							<th>기준일자</th>
							<td>
								<c:set var="now" value="<%=new java.util.Date()%>" /> 
								<fmt:formatDate value="${now}" pattern="yyyy" var="yearStart" /> 
								<select>
									<c:forEach begin="0" end="10" var="result" step="1">
										<option value="<c:out value="${yearStart - result}" />">
											<c:out value="${yearStart - result}" />년
										</option>
									</c:forEach>
								</select> 
								<select>
									<c:forEach begin="1" end="12" var="result" step="1">
										<option value="<c:out value="${result}"/>">
											<c:out value="${result}" />월
										</option>
									</c:forEach>
								</select> 
								<select>
									<c:forEach begin="1" end="31" var="result" step="1">
										<option value="<c:out value="${result}"/>">
											<c:out value="${result}" />일
										</option>
									</c:forEach>
								</select> ~ 
								<select>
									<c:forEach begin="0" end="10" var="result" step="1">
										<option value="<c:out value="${yearStart - result}" />">
											<c:out value="${yearStart - result}" />년
										</option>
									</c:forEach>
								</select> 
								<select>
									<c:forEach begin="1" end="12" var="result" step="1">
										<option value="<c:out value="${result}"/>">
											<c:out value="${result}" />월
										</option>
									</c:forEach>
								</select> 
								<select>
									<c:forEach begin="1" end="31" var="result" step="1">
										<option value="<c:out value="${result}"/>">
											<c:out value="${result}" />일
										</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<th>부서</th>
							<td></td>
						</tr>
						<tr>
							<th>계정</th>
							<td></td>
						</tr>
						<tr>
							<th>거래처</th>
							<td></td>
						</tr>
					</table>
				</form>
				<input type="button" value="조회">

		</div>
	</div>
</div>
</body>
</html>