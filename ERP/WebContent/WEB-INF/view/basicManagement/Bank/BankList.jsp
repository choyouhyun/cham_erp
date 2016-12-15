<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/erp_css/basic.css" />
<script type="text/javascript"
	src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		refreshList();
		$("#searchBtn").on("click", function() {
			/*  $("#searchForm").submit(); */
			$("input[name='searchText']").val($("#searchText").val());
			$("input[name='page']").val("1"); // 검색결과 시 1페이지로 이동

			refreshList();
		});
		$("#pagingArea").on("click", "span", function() {
			$("input[name='page']").val($(this).attr("name"));

			refreshList();

		});
		$("#tb").on("click", "tr", function() {
			var BankNo = new Object(); 
	 		$("input[name='acntNo']").val($(this).attr("name"));
			alert($(this).attr("name"));
			$("#actionForm").attr("action", "BankRegister");
			$("#actionForm").attr("target", "Edit");
			$("#actionForm").attr("onsubmit", "window.open('../BankRegister', 'Edit', 'width=300, height=300');");
			$("#actionForm").submit(); 
		});
	});

	function refreshList() {
		var params = $("#actionForm").serialize();
				$.ajax({
					type : "post",
					url : "refreshTest",
					dataType : "json",
					data : params,
					success : function(result) {
						var html = "";
			
						for (var i = 0; i < result.list.length; i++) {
							html += "<tr name='" + result.list[i].NO + "'>";
							html += "<td>" + result.list[i].NO + "</td>";
							html += "<td>" + result.list[i].ACNTNUM + "</td>";
							html += "<td>" + result.list[i].NAME + "</td>";
							html += "<td>" + " " + "</td>";
							html += "<td>" + result.list[i].ETC + "</td>";
							html += "</tr>";
						}

						$("#tb").html(html);

						html = "";

						html += "<span name ='1'>처음</span>";

						if ($("input[name='page']").val() == 1) {
							html += "<span name ='1'>이전</span>";
						} else {
							html += "<span name='"
									+ ($("input[name='page']").val() - 1)
									+ "'>이전</span>";
						}

						for (var i = result.pb.startPcount; i <= result.pb.endPcount; i++) {
							if (i == $("input[name='page']").val()) {
								html += "<span name='" + i + "'><b>" + i
										+ "</b></span>";
							} else {
								html += "<span name='" + i + "'>" + i
										+ "</span>";
							}
						}

						if ($("input[name='page']").val() == result.pb.maxPcount) {
							html += "<span name='" + result.pb.maxPcount + "'>다음</span>";
						} else {
							html += "<span name='"
									+ ($("input[name='page']").val() * 1 + 1)
									+ "'>다음</span>";
						}

						html += "<span name='" + result.pb.maxPcount + "'>마지막</span>";

						$("#pagingArea").html(html);
					},
					error : function(result) {
						alert("error!!");
					}

				});
	}
</script>
</head>
<body >
	<div class="bg">

		<div class="range">
			<div class="top">
				<div class="logo">로고</div>
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
					통장계좌 리스트
					<form action="#" id="actionForm" method="post">
<%-- 						<c:choose>
							<c:when test="${empty param.page}"> --%>
								<input type="hidden" name="page" value="1" />
								<input type="hidden" name="acntNo"/>
<%-- 							</c:when>
							<c:otherwise>
								<input type="hidden" name="page" value="${param.page}" />
								<input type="hidden" name="acntNo" />
							</c:otherwise>
						</c:choose> --%>
						<input type="hidden" name="searchText" value="${param.searchText}" />
						<input type="text" id="searchText" /> <input type="button"
							value="검색" id="searchBtn" />
				
				<br />
				<table border="1" cellspacing="0" align="center">
					<thead>
						<tr>
							<th>번호</th>
							<th>계좌번호 ▼</th>
							<th>계좌명 ▼</th>
							<th>계정코드</th>
							<th>적요</th>
						</tr>
					</thead>
					<tbody id="tb">
					</tbody>
				</table>
				<div id="pagingArea"></div>
				<br /> 
				<br /> 
				<input type="button" value="신규등록" id="registerBtn" /> 
				</form>
				</div>
				<br />
			</div>
		</div>
	</div>
</body>
</html>