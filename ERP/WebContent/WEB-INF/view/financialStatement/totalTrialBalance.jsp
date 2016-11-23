<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
<style type="text/css">
[name=tableTitle] {
	width : 100%;
}

.chit {
	width: 900px;
	
}
.chitOut{
	display: inline-block;
	margin-top: 20px;
}
.chitCal{
	height: 50px;
	border: solid 1px;
	text-align: left;
}
.conTitle {
	font-size: 30pt;
	font-weight: bold;
	margin-top: 60px;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">
$(document).ready(function() {
});
</script>
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
		<!--------------------기본 레이아웃-------------------->
		<div class="contents" style="text-align: center;">
			<div class="conTitle">합계 잔액 시산표</div>
			<div class="chitOut">
				<div class="chitCal">
					<span>날짜 : </span>
					<input type="text" placeholder="날짜선택"/>
					<span> ~ </span>
					<input type="text" placeholder="날짜선택"/>
				</div>
				<table border="1" class="chit">
					<thead>
						<tr>
							<th colspan="2">
								<table name="tableTitle" border="1px">
									<tr>
										<td colspan="2">차변</td>
									</tr>
									<tr>
										<td>금액</td>
										<td>합계</td>
									</tr>
								</table>
							</th>
							<th>계정과목</th>
							<th colspan="2">
								<table name="tableTitle" border="1px">
									<tr>
										<td colspan="2">대변</td>
									</tr>
									<tr>
										<td>금액</td>
										<td>합계</td>
									</tr>
								</table>
							</th>					
						</tr>
					</thead>
					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

</body>
</html>