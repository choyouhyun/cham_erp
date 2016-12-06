<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: 0px;
}
table{
	display: inline-block;
	border: 1px solid #000000;
}
td{
	width: 400px;
}

#logoutBtn{
	
}
#memWelcome{
	display: inline-block;
	width:1280px;
	height: 30px;
	text-align: right;
	background-color: #FABCAB;
}
.main{
	display: inline-block;
	width: 1920px;
	min-height: 960px;
	background-color: #ABCABC;
	font-size: 20pt;
	text-align: center;
}
.mainList{
	display: inline-block;
	width: 1280px;
	min-height: 910px;
	background-color: #79a8ca;
	font-size: 20pt;
	text-align: center;
}
.teamName{
	text-align: left;
	background-color: rgba(191, 218, 14, 0.39);
	display: inline-block;
	width: 1280px;
	height: 36px;
}
.c{
	display: inline-block;
}
.d{
	display: table-row;
	height: 30px;
}
.e{
	display: table-cell;
	vertical-align: middle;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   $("#logoutBtn").on("click", function() {
      location.href="Logout";
   });
});
</script>
</head>
<body>
	<div id="main" class="main">
		<div id="memWelcome">
			${sMemNm}님 어서오세요.
		<div class="c">
				<div class="d">
					<div class="e">
						<input type="button" value="로그아웃" id="logoutBtn" />
					</div>
				</div>
		</div>
			
		</div>
		<div id="teamName" class="teamName"><b>참교육 IT</b></div>
		<div id="mainList" class="mainList">
		<br/>
			<table border="1">
				<tr>
					<th>전표입력
					</th>
				</tr>
				<tr>
					<td>매입전표 입력
					</td>
				</tr>
				<tr>
					<td>매출전표 입력
					</td>
				</tr>
				<tr>
					<td>현금 입금 입력
					</td>
				</tr>
				<tr>
					<td>현금 지출 입력
					</td>
				</tr>
				<tr>
					<td>지출 결의서
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
				</tr>
			</table>
			<table border="1">
				<tr>
					<th>장부관리
					</th>
				</tr>
				<tr>
					<td>거래처 원장
					</td>
				</tr>
				<tr>
					<td>계정별 원장
					</td>
				</tr>
				<tr>
					<td>매입매출장
					</td>
				</tr>
				<tr>
					<td>전표관리
					</td>
				</tr>
				<tr>
					<td>전표 결재
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
				</tr>
			</table>
			<table border="1">
				<tr>
					<th>재무재표
					</th>
				</tr>
				<tr>
					<td>합계잔액 시산표
					</td>
				</tr>
				<tr>
					<td>재무상태표
					</td>
				</tr>
				<tr>
					<td>손익계산서
					</td>
				</tr>
				<tr>
					<td>제조원가 명세서
					</td>
				</tr>
				<tr>
					<td>기간별 손익 계산서
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
				</tr>
			</table>
			<table border="1">
				<tr>
					<th>전기재무제표
					</th>
				</tr>
				<tr>
					<td>전기분 재무상태표
					</td>
				</tr>
				<tr>
					<td>전기분 손익계산서
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<td>&nbsp;
					</td>
				</tr>
			</table>
			<table border="1">
				<tr>
					<th>기본관리
					</th>
				</tr>
				<tr>
					<td>회사등록 / 회계연도
					</td>
				</tr>
				<tr>
					<td>거래처 등록
					</td>
				</tr>
				<tr>
					<td>사원등록
					</td>
				</tr>
				<tr>
					<td>품목등록
					</td>
				</tr>
				<tr>
					<td>계정과요 및 적요
					</td>
				</tr>
				<tr>
					<td>계좌관리
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>