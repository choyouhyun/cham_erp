<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
<style type="text/css">
table{
	display: inline-block;
}
table.th{
	font-weight: bold;
    vertical-align: top;
}
.form-control{
	font-size: 11pt;
	height: 20px;
}
.date{
	font-size: 0pt;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script type="text/javascript">
$(function() {
	$( "#datepicker1, #datepicker2" ).datepicker({
	dateFormat: 'yy-mm-dd'
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
		<div class="contents">거래처별/계정별 원장<br/>
			<form action="#" id="ledgerForm" method="post">
			<table id="cusledger" class="cusledger" border="1">
				<tr>
					<th>기준일자
					</th>
					<td align="left" class="date">
						<input type="text" class="form-control" id="datepicker1" name="date_sta" placeholder="기준 시작일"/> ~
						<input type="text" class="form-control" id="datepicker2" name="date_end" placeholder="기준 종료일"/>
					</td>
				</tr>
				<tr>
					<th>부서
					</th>
					<td align="left">
						<input type="button" id="deptsearchBtn" />
						<input type ="text" id="deptText" value=""/>
					</td>
				</tr>
				<tr>
					<th>계정
					</th>
					<td align="left">
						<input type="button" id="subsearchBtn" />
						<input type ="text" id="subText" value=""/>
					</td>
				</tr>
				<tr>
					<th>거래처
					</th>
					<td align="left">
						<input type="button" id="cussearchBtn"/>
						<input type ="text" id="cusText" value=""/>
					</td>
				</tr>
			</table><br/><br/>
			</form>
			<input type="button" id="ledsearchBtn" value="조회"/>
		</div>
	</div>
</div>

</body>
</html>