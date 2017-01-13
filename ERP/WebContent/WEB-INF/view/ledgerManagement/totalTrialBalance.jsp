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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<title>Insert title here</title>
</head>
<body>
	<c:import url="/top"></c:import>
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
	<c:import url="/bottom"></c:import>
</body>
</html>