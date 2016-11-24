<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세부내역</title>
<script type="text/javascript"
src="resources/script/jquery/jquery-1.11.0.js">
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th colspan="2">세부내역</th>			
		</tr>
		<tr>
			<th>일련번호</th>
			<th><input type="text"/></th>
		</tr>
		<tr>
			<th>비고</th>
			<th colspan="8">
			<input type="radio" name="청구"/>청구
			<input type="radio" name="청구"/>영수
			</th>
		</tr>
	</table>
	<input type="button" value="추가" />
	<table border="1">
		<tr>
			<th>순번</th>				
			<th>월</th>
			<th>일</th>
			<th>품명</th>
			<th>규격</th>
			<th>수량</th>
			<th>단가</th>
			<th>공급가액</th>
			<th>비고</th>
		</tr>
		<tr>
			<th>1</th>				
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		</table>
		<table border="1">
		<tr>
			<th>현금</th>
			<th><input type="text"/></th>
		</tr>
		<tr>
			<th>수표</th>
			<th><input type="text"/></th>
		</tr>
		<tr>
			<th>어음</th>
			<th><input type="text"/></th>
		</tr>
		<tr>
			<th>외상매출금</th>
			<th><input type="text"/></th>
		</tr>
	</table>
	<input type="button" value="적용(F8)" /> 
	<input type="button" value="닫기" /> 
</body>
</html>