<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<style type="text/css">
table{
	overflow: auto;
	display: inline-block;
}/* 따닥 */
table.sub th, table.code th {
    font-weight: bold;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
    border-top: 1px solid #fff;
    border-left: 1px solid #fff;
    background: #eee;
}
table.code td, table.sub td {
    padding: auto;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}
table.code{
	height: 365px;
}

</style>
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
			<table class="code" border="1px" align="center">
				<tr>
					<th>코드
					</th>
					<th>계정과목
					</th>
					<th>금액
					</th>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
				<tr>     
					<td>&nbsp;
					</td>
					<td>
					</td>
					<td>
					</td>
				</tr>
			</table>
			<table class="sub" border="1px" align="center">
				<tr>
					<th colspan="2">계정 별 합계
					</th>
				</tr>
				<tr>     
					<th>1.매출액
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>2.매출원가
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>3.매출 총이익
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>4.판매비와 관리비
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>5.영업이익
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>6.영업 외 수익
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>7.영업 외 비용
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>8.법인세 차감 전 이익
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>9.법인세등
					</th>
					<td>
					</td>
				</tr>
				<tr>     
					<th>10.당기 순이익
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