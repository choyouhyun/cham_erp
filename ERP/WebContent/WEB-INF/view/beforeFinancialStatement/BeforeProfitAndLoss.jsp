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
		<c:import url="/top"></c:import>
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
		<c:import url="/bottom"></c:import>
</body>
</html>