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
table.sub th, table.ass th, table.debt th {
    font-weight: bold;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    border-top: 1px solid #fff;
    border-left: 1px solid #fff;
    background: #eee;
}
table.sub td, table.ass td, table.debt td {
    padding: 1px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
table.ass, table.debt{
	height: 497px;
}
</style>
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
			<div class="contents">전기분 재무재표<br/>
				<table class="ass" border="1px" align="center">
				<tr>
					<th colspan="3">자산
					</th>
				</tr>
				<tr>
					<th>코드
					</th>
					<th>계정과목
					</th>
					<th>금액
					</th>
				</tr>
				<tr>     
					<td>123
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>123
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>123
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>123
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<th colspan="2">차변합계
					</th>
					<td>
					</td>
				</tr>
			</table>
			<table class="debt" id="debt" border="1px" align="center">
				<tr>
					<th colspan="3">부채 및 자본
					</th>
				</tr>
				<tr>
					<th>코드
					</th>
					<th>계정과목
					</th>
					<th>금액
					</th>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<th colspan="2">대변합계
					</th>
					<td>
					</td>
				</tr>
			</table>
			<table class="sub" id="sub" border="1px" align="center">
				<tr>
					<th colspan="2">계정 별 합계
					</th>
				</tr>
				<tr>
					<th>1.유동자산
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>2.비유동자산
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>자산총계(1+2)
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>3.유동부채
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>4.비유동부채
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>부채총계(3+4)
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>5.자본금
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>6.자본잉여금
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>7.자본조정
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>8.기타 포괄 손익 누계액
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>자본총계(5+6+7+8+9)
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>부채 및 자본총계
					</th>
					<td>
					</td>
				</tr>
				<tr>
					<th>대차차액
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>대변합계
					</th>
					<td>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
</body>

</html>