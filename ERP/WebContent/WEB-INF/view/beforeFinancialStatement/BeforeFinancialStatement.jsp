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
					     <li id="incChitInput"><a href="#">매입전표</a></li>
					     <li id="salChitInput"><a href="#">매출전표</a></li>
					     <li id="othSalChitInput"><a href="#">기타지출전표</a></li>
					     <li id="othIncsalChitInput"><a href="#">기타수입전표</a></li>
					     <li id="salReList"><a href="#">지출결의서</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">장부관리</a>
					   <ul>
					     <li id="customerLedger"><a href="#">거래처 원장</a></li>
					     <li id="subjectLedger"><a href="#">계정별 원장</a></li>
					     <li id="incSal"><a href="#">매입매출장</a></li>
					     <li id="chitManagement"><a href="#">전표관리</a></li>
					     <li id="chitSign"><a href="#">전표결재</a></li>					     
					    </ul>
					 </li>
					 <li><a href="#" id="current">재무재표</a><ul>
					     <li id="statementOfPosition"><a href="#">합계잔액시산표</a></li>
					     <li id="totalTrialBalance"><a href="#">재무상태표</a></li>
					     <li id="incStatement"><a href="#">손익계산서</a></li>
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
					     <li id="companyRegister"><a href="#">회사등록/회계연도</a></li>
					     <li id="customerList"><a href="#">거래처 관리</a></li>
					     <li id="memList"><a href="#">사원관리</a></li>
					     <li id="deptList"><a href="#">부서관리</a></li>
					     <li id="bankList"><a href="#">계좌관리</a></li>
					     <li id="subjectList"><a href="#">계정과목관리</a></li>
					    </ul>
					 </li>
					</ul>
				</div>
			</div>
		</div>
		<div class="contents">전기분재무재표<p>




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
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>2.비유동자산
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>자산총계(1+2)
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>3.유동부채
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>4.비유동부채
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>부채총계(3+4)
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>5.자본금
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>6.자본잉여금
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>7.자본조정
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>8.기타 포괄 손익 누계액
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>자본총계(5+6+7+8+9)
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>부채 및 자본총계
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<th>대차차액
					</th>
					<td>&nbsp;
					</td>
				</tr>
				<tr>     
					<th>대변합계
					</th>
					<td>&nbsp;
					</td>
				</tr>
			</table>
		
		</div>
	</div>
</div>
</body>

</html><!-- 따닥 -->