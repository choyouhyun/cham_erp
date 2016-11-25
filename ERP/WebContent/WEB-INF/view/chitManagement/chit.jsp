<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(":checkbox:first").click(function() {
		if($(":checkbox:first").is(":checked")==true){
			$(":checkbox:not(:first)").prop("checked", true);
		}else {
			$(":checkbox:not(:first)").prop("checked", false);
		}
	});
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
		<div class="contents">
		<h1>전표관리</h1>
<input type="button" value="결재중"><input type="button" value="확인"><input type="button" value="전체">
<table border="1" align="center">
<tr>
	<th><input type="checkbox"></th>
	<th>전표번호</th>
	<th>거래유형</th>
	<th>금액</th>
	<th>거래처명</th>
	<th>적요</th>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
<tr>
	<td><input type="checkbox"></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
</tr>
</table>
[이전][1][2][3][4][5][다음]<br/>
		</div>
	</div>
</div>
</body>
</html>