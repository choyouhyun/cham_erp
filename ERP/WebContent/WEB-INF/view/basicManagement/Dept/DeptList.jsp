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
	/* var cnt=1;
	 function addBtn(){
	 var tb=document.getElementById("tb");
	
	 var html="";
	
	 html+="<tr>";
	 html +="<td>"+cnt+"</td>";
	 html +="<td>"+cnt+"</td>";
	 html +="<td>"+cnt+"</td>";
	 html +="<td>"+cnt+"</td>";
	 html +="<td>"+cnt+"</td>";
	 html +="<td>"+cnt+"</td>";
	 html +="<td>"+cnt+"</td>";
	 html +="</tr>";
	
	 tb.innerHTML = html + tb.innerHTML;
	 cnt++;
	 }   */
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


				<div>
				부서 목록 <input type="text" id="searchText" value="" /> 
					  <input type="button" value="검색" id="searchBtn" />
				</div>
				<br />
				<div id="">페이지 순서</div>
				<br />
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							<th>부서코드▼</th>
							<th>부서명▼</th>
						</tr>
					</thead>
					<tbody id="tb">
					</tbody>
				</table>
				<br /> <br /> <input type="button" value="등록" onclick="addBtn();" />
				<input type="button" value="선택삭제" onclick="clearBtn();" /> <br />
			</div>
		</div>
	</div>
</body>
</html>