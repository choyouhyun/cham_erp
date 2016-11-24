<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지출결의서</title>
<script type="text/javascript"
src="resources/script/jquery/jquery-1.11.0.js">
</script>
</head>
<body>
	<table border="1">
		<tr>
			<th>일자</th>
			<th></th>			
		</tr>
		<tr>
			<th>첨언내용</th>
			<th>첨언내용을 적으면 됩니다.</th>
		</tr>
	<table/>
		<input type="button" value="선택삭제" />			
		<input type="button" value="항목추가" />			
	<table border="1">
		<tr>
			<th>순번</th>				
			<th>돈나간 계좌코드</th>
			<th>돈나간 계좌명</th>
			<th>계정코드(차변)</th>
			<th>계정코드명</th>
			<th>거래처</th>
			<th>거래처명</th>
			<th>금액</th>
			<th>수수료</th>
			<th>적요명</th>
			<th>부서</th>
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
			<th></th>
		</tr>
		
	</table>
		<input type="button" value="저장(F8)" />
		<input type="button" value="저장/전표(F7)" />
		<input type="button" value="다시작성(F5)"/>
		<input type="button" value="리스트"/>
</body>
</html>