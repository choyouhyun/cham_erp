<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="resources/css/erp_css/basic.css" />
<title>Insert title here</title>

<!-- <script type="text/javascript">
$(function () {
    from =
        $("#txtStartDate").datepicker()
        .on("change", function () {
            to.datepicker("option", "minDate", getDate(this));
        });;
    to =
        $("#txtEndDate").datepicker()
        .on("change", function () {
            from.datepicker("option", "maxDate", getDate(this));
        });

    function getDate(element) {
        var date;
        try {
            date = $.datepicker.parseDate("yy-mm-dd", element.value);
        } catch (error) {
            date = null;
        }
        return date;
    }
});
</script> -->
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
						<div class="notice">
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

	<h1>
		<center>사원 등록</center>
	</h1>
	
		<table border=1 cellspacing="0" width=75% height=300%  align="center" >
		
			<caption></caption>
			<tbody>
				<tr>
					<td rowspan=9 width=30%>이미지 <img src=" " width=100
						height=100></td>
				<tr>
					<th scope="row">사원번호</th>
					<td scope="row" align="left"><input type="text" maxlength=""> <input
						type="button" value="중복확인" />
					<th scope="row">성명</th>
					<td scope="row" align="left"><input type="text" maxlength=""> <!-- <input type="radio" name="" /><label>개인</label> -->
					</td>
				</tr>
				<tr>
					<th scope="row">제2외국어성명</th>
					<td scope="row" align="left"><input type="text" maxlength="" />
					<th scope="row">영문성명</th>
					<td scope="row" align="left"><input type="text" maxlength="" /></td>
				</tr>
				<tr>
					<th scope="row">주민등록번호</th>
					<td scope="row" align="left"><input type="text" maxlength="" />-<input
						type="text" maxlength="" />
					<th scope="row">부서코드</th>
					<td scope="row" align="left"><input type="text" id="searchText" value="">
						<input type="button" value="검색" id="searchBtn" /></td>
				</tr>

				<tr>
					<th scope="row">입사일자</th>
					<td scope="row" align="left"><input type="text" class="form-control"
						id="datepicker1" name="" placeholder="날짜선택"/></td>
						<!-- readonly value="" -->
					<th scope="row">입사구분</th>
					<td scope="row" align="left"><input type="text" id="searchText" value="">
						<input type="button" value="검색" id="searchBtn" /></td>
				</tr>
				<tr>
					<th scope="row">직위/직급</th>
					<td scope="row" align="left"><input type="text" id="searchText" value="">
						<input type="button" value="검색" id="searchBtn" /></td>
					<th scope="row">직책</th>
					<td scope="row" align="left"><input type="text" id="searchText" value="">
						<input type="button" value="검색" id="searchBtn" /></td>
				</tr>
				<tr>
					<th scope="row">퇴사일자</th>
					<td scope="row" align="left"><input type="text" class="form-control"
						id="datepicker2" name="" placeholder="날짜선택" /></td>
					<th scope="row">퇴사사유</th>
					<td scope="row" align="left"><input type="text" id="" value=""></td>
				</tr>
				<tr>
					<th scope="row">전화번호</th>
					<td scope="row" align="left"><input type="text" maxlength="" />-<input
						type="text" maxlength="" /></td>
					<th scope="row">휴대전화</th>
					<td scope="row" align="left"><input type="text" maxlength="" />-<input
						type="text" maxlength="" /></td>
				</tr>

				<tr>
					<th scope="row">여권번호</th>
					<td scope="row" align="left"><input type="text" maxlength="" />-<input
						type="text" maxlength="" /></td>
					<th scope="row"><p>
							<!-- <font color="#FFBB00"> </font> -->
							Email
						</p></th>
					<td scope="row" colspan=3 align="left"><input type="text" /> <select>
							<option>선택</option>
							<option>직접입력</option>
							<option>@naver.com</option>
							<option>@daum.net</option>
							<option>@gmail.com</option>
							<option>@nate.com</option>
					</select></td>
				</tr>
				<tr>
					<th scope="row">급여통장</th>
					<td scope="row" colspan=4 align="left"><input type="text" id="searchText" value="">
						<input type="button" value="검색" id="searchBtn" >
					계좌번호 : <input type="text" maxlength="" >
					예금주 : <input type="text" maxlength="" /></td>
				</tr>
				<tr>
					<th scope="row">주소</th>
					<td scope="row" colspan=4 align="left"><input type="button" value="우편번호 검색" />
						<br /> <input type="text" maxlength="" />-<input type="text"
						maxlength="" /> <br /> <input type="text" maxlength="" /></td>
				</tr>
				<tr>
      				<th scope="row">적요</th>
     				 <td scope="row" colspan=4 align="left">
      				<textarea rows="5" cols=""></textarea>
      				</td>
    			 </tr>
    			 <tr>
    			 	<th scope="row">사진</th>
    			 	<td scope="row" colspan=4 align="left"><input type ="file"></td>
			</tbody>
			
			
		</table>
		<br/> <input type="button" value="저장" /> <input type="button"
			value="취소" />
				</div>
		</div>
</div>
</body>
</html>