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
#registerBtn{
   border: 1px solid #ffffff;
   background: #474747;
   background: -webkit-gradient(linear, left top, left bottom, from(#6d6d6d), to(#474747));
   background: -webkit-linear-gradient(top, #6d6d6d, #474747);
   background: -moz-linear-gradient(top, #6d6d6d, #474747);
   background: -ms-linear-gradient(top, #6d6d6d, #474747);
   background: -o-linear-gradient(top, #6d6d6d, #474747);
   background-image: -ms-linear-gradient(top, #6d6d6d 0%, #474747 100%);
   padding: 10.5px 21px;
   -webkit-border-radius: 6px;
   -moz-border-radius: 6px;
   border-radius: 6px;
   /* -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0; */
  /*  box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #ffffff 0 1px 0; */
   color: #ffffff;
   font-size: 14px;
   font-family: '맑은고딕';
   text-decoration: none;
   vertical-align: middle;
   }
#registerBtn:hover{
   border: 1px solid #ffffff;
   /* text-shadow: #ffffff 0 1px 0; */
   background: #222222;
   background: -webkit-gradient(linear, left top, left bottom, from(#474747), to(#222222));
   background: -webkit-linear-gradient(top, #474747, #222222);
   background: -moz-linear-gradient(top, #474747, #222222);
   background: -ms-linear-gradient(top, #474747, #222222);
   background: -o-linear-gradient(top, #474747, #222222);
   background-image: -ms-linear-gradient(top, #474747 0%, #222222 100%);
   color: #ffffff;
   }
#registerBtn:active{
   /* text-shadow: #ffffff 0 1px 0; */
   border: 1px solid #ffffff;
   background: #000000;
   background: -webkit-gradient(linear, left top, left bottom, from(#000000), to(#222222));
   background: -webkit-linear-gradient(top, #000000, #000000);
   background: -moz-linear-gradient(top, #000000, #000000);
   background: -ms-linear-gradient(top, #000000, #000000);
   background: -o-linear-gradient(top, #000000, #000000);
   background-image: -ms-linear-gradient(top, #000000 0%, #000000 100%);
   color: #fff;
}

#searchBtn{
   height:40px;
   border: 1px solid #ffffff;
   background: #6d6d6d;
   background: -webkit-gradient(linear, left top, left bottom, from(#BDBDBD), to(#BDBDBD));
   background: -webkit-linear-gradient(top, #BDBDBD, #6d6d6d);
   background: -moz-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -ms-linear-gradient(top, #BDBDBD, #BDBDBD);
   background: -o-linear-gradient(top, #BDBDBD, #BDBDBD);
   background-image: -ms-linear-gradient(top, #474747 0%, #474747 100%);
  
   -webkit-border-radius: 6px;
   -moz-border-radius: 6px;
   border-radius: 6px;
   /* -webkit-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0; */
  /*  box-shadow: rgba(255,255,255,0.4) 0 1px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #ffffff 0 1px 0; */
   color: #ffffff;
   font-size: 14px;
   font-family: '맑은고딕';
   text-decoration: none;
   vertical-align: middle;
}

#searchBtn:active{
   /* text-shadow: #ffffff 0 1px 0; */
   border: 1px solid #ffffff;
   background: #000000;
   background: -webkit-gradient(linear, left top, left bottom, from(#000000), to(#222222));
   background: -webkit-linear-gradient(top, #000000, #000000);
   background: -moz-linear-gradient(top, #000000, #000000);
   background: -ms-linear-gradient(top, #000000, #000000);
   background: -o-linear-gradient(top, #000000, #000000);
   background-image: -ms-linear-gradient(top, #000000 0%, #000000 100%);
   color: #fff;
}

#pagingArea:HOVER{
	cursor: pointer;
}

.tblGreen {
    border-collapse: collapse;
    text-align: center;
    font-family: 'Trebuchet MS';
}
.tblGreen td, th {
    font-size: 10pt;
    border: 1px solid #98bf21;
    height: 30px;
}
.tblGreen th {
    background-color:#A7C942;
    color:#ffffff;
    font-family: Georgia;
}
.tblGreen tr.alt td {
    color:#000000;
    background-color:#EAF2D3;
}
.tblGreen caption {
    height: 30px;
    text-align: left;
    font-weight: bold;
}
</style>

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
			$("#actionForm").attr("onsubmit", "window.open('BankRegister', 'Edit', 'width=300, height=300');");
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
		<c:import url="/top"></c:import>
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
				<table border="1" cellspacing="0" align="center" class="tblGreen">
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
		</div>
		<c:import url="/bottom"></c:import>
</body>
</html>