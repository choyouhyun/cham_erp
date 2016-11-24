<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/erp_css/basic.css" />
<script type="text/javascript">
	var cnt = 1;
	function addBtn() {
		var tb = document.getElementById("tb");

		var html = "";

		html += "<tr>";
		html += "<td><input type=\"checkbox\"></td>";
		html += "<td>" + " " + "</td>";
		html += "<td>" + " " + "</td>";
		html += "<td>" + " " + "</td>";
		html += "<td>" + " " + "</td>";
		html += "</tr>";

		tb.innerHTML = html + tb.innerHTML;
		cnt++;
	}
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



				<div>계정코드등록</div>
				<br />
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							<th><input type="checkbox" /></th>
							<th>[계정코드]계정명</th>
							<th>계정</th>
							<th>대차구분</th>
							<th>계정종류</th>
						</tr>
						<tr>
							<th></th>
							<th>[0000] 최상위</th>
							<th>추가</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody id="tb">
					</tbody>
				</table>
				<br /> <br /> <input type="button" value="신규입력" onclick="addBtn();" />
				<input type="button" value="수정" onclick="" /> <input type="button"
					value="선택삭제" onclick="clearBtn();" /> <br />
			</div>
		</div>
	</div>
</body>
</html>