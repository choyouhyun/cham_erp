<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
</head>
<body>
<div class="bg">
	<div class="range">
		<div class="top">
			<div class="logo">로곳</div>
			<div class="loginInfo">
				<div class="login">
					<div class="blank"></div>
					<div class="user">로그인 정보</div>
				</div>
				<div class="noticeInfo">
					<div class= "notice">
						<div class="c">
							<div class="d">
								<div class="e">공지사항</div>
							</div>
						</div>
					</div>
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
		<div class="contents">
		★계정별원장
<form action="#">
<table border="1" align="center">
<tr>
	<th>구분</th>
	<td>
	<input type="radio" name="구분" value="건별">건별 
	<input type="radio" name="구분" value="일별">일별 
	<input type="radio" name="구분" value="월별">월별 
	<input type="radio" name="구분" value="계정별집계">계정별집계 
	<input type="radio" name="구분" value="번호별집계">번호별집계
	</td>
</tr>
<tr>
	<th>기준일자</th>
	<td><c:set var="now" value="<%=new java.util.Date()%>" />
		<fmt:formatDate value="${now}" pattern="yyyy" var="yearStart"/> 
		<select>        
			<c:forEach begin="0" end="10" var="result" step="1">
				<option value="<c:out value="${yearStart - result}" />">
				<c:out value="${yearStart - result}" />년</option>
			</c:forEach>                
		</select>
		<select>
			<c:forEach begin="1" end="12" var="result" step="1">
				<option value="<c:out value="${result}"/>">
				<c:out value="${result}"/>월</option>
			</c:forEach>  
		</select>
		<select>
			<c:forEach begin="1" end="31" var="result" step="1">
				<option value="<c:out value="${result}"/>">
				<c:out value="${result}"/>일</option>
			</c:forEach>  
		</select>
		~
		<select>        
			<c:forEach begin="0" end="10" var="result" step="1">
				<option value="<c:out value="${yearStart - result}" />">
				<c:out value="${yearStart - result}" />년</option>
			</c:forEach>                
		</select>
		<select>
			<c:forEach begin="1" end="12" var="result" step="1">
				<option value="<c:out value="${result}"/>">
				<c:out value="${result}"/>월</option>
			</c:forEach>  
		</select>
		<select>
			<c:forEach begin="1" end="31" var="result" step="1">
				<option value="<c:out value="${result}"/>">
				<c:out value="${result}"/>일</option>
			</c:forEach>  
		</select>
		
	</td>
</tr>
<tr>
	<th>부서</th>
	<td>
	
		<input  type="text" />
		<img src="resources/images/kitty.png" alt="이미지" width="15px" />
				
	</td>
</tr>
<tr>
	<th>계정</th>
	<td>
		<input  type="text" />
		<img src="resources/images/kitty.png" alt="이미지" width="15px" />
	</td>
</tr>
</table>
</form>
<input type="button" value="조회">
		</div>
	</div>
</div>

</body>
</html>