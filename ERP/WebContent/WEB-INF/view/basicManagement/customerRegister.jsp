<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<style type="text/css">
/*테이블 디자인  */
.maintbl {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    border-left: 3px solid #FF7012;
 	margin : 20px 10px;
}
.maintbl th {
    width: 100px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #FF9436;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;

}
.maintbl td {
    width: 180px;
    padding: 10px;
    vertical-align: top;
    border-right: 1px solid #ccc;
    border-bottom: 1px solid #ccc;
}

/* 저장 취소버튼 디자인 */

#saveBtn,#cancleBtn{
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
#saveBtn:hover,#cancleBtn:hover {
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
#saveBtn:active,#cancleBtn:active {
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

/* 우편번호 버튼  */
#postBtn{
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

#postBtn:active{
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
</style>

<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('address2').focus();
            }
        }).open();
    }
</script>

<script type="text/javascript">
$(document).ready(function() {
	if($("#cusNo").val() != ""){
		getCus();
		$("#saveBtn").val("수정");
	}
	//이메일 주소 선택 입력
	$("#ddlEmail").on("change", function() {
		$("#textEmail").val($(this).val());
		if($("#textEmail").val() == "self"){
			$("#textEmail").val("");
			$("#textEmail").focus();
		}
	});
	
	//저장버튼
	$("#saveBtn").on("click", function() {
		if($("#cusNo").val() != ""){
			editCus();
		}
		insertCus();
	});
	
	
	//취소버튼
	$("#cancleBtn").on("click", function() {
		window.close();
	});
});

function insertCus() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "insertCus",
		dataType : "json",
		data : params,
		success : function() {
			window.close();
		},
		error : function() {
			alert("error!");
		}
	});
}

function getCus() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "getCus",
		dataType : "json",
		data : params,
		success : function(result) {
			$("#textName").val(result.list.NAME);
			$("#textCEO").val(result.list.CEO);
			$("#textTel").val(result.list.TEL);
			$("#textCell").val(result.list.CELL);
			$("#postcode").val(result.list.POST);
			$("#address").val(result.list.ADDRESS);
			$("#address2").val(result.list.ADDRESS2);
			var email = result.list.EMAIL;
 			var emailArray = email.split("@");
			$("#textEmailId").val(emailArray[0]);
			$("#textEmail").val(emailArray[1]);
		},
		error : function() {
			alert("error!");
		}
	});
}

function editCus() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		type : "post",
		url : "updateCus",
		dataType : "json",
		data : params,
		success : function() {
			window.close();
		},
		error : function() {
			alert("error!");
		}
	});
}
</script>
</head>
<body>
	<h1>
		<center>거래처 등록</center>
	</h1>
	<center>
		<form action="#" id="actionForm" method="post">
			<input type="hidden" id="cusNo" name="cusNo" value="${param.cusNo}" />
			<table border=1 cellspacing="0" class="maintbl">
				</center>
				<caption></caption>
				<tbody>
					<tr>
						<th scope="row">상호(이름)</th>
						<td scope="row">
							<input type="text" maxlength="" id="textName" name="textName"/>
						</td>
					</tr>
					<tr>
						<th scope="row">대표자 명</th>
						<td scope="row">
							<input type="text" maxlength="" id="textCEO" name="textCEO"/>
						</td>
					</tr>
					<tr>
						<th scope="row">전화번호</th>
						<td scope="row">
							<input type="text" maxlength="11" id="textTel" name="textTel"/>
						</td>
					</tr>
					<tr>
						<th scope="row">휴대전화</th>
						<td scope="row">
							<input type="text" maxlength="11" id="textCell" name="textCell"/>
						</td>
					</tr>
					<tr>
						<th scope="row">주소</th>
						<td scope="row">

							<input type="text" id="postcode" placeholder="우편번호" name="postCode">
							<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" id=postBtn><br>
							<input type="text" id="address" placeholder="주소" name="textAddress">
							<input type="text" id="address2" placeholder="상세주소" name="textAddress2">
						</td>
					</tr>
	
	
	
					<tr>
						<th scope="row"><p>
								<!-- <font color="#FFBB00"> </font> -->
								Email
							</p></th>
						<td scope="row">
							<input type="text" id="textEmailId" name="textEmailId"/>
							<span> @ </span>
							<input type="text" id="textEmail" name="textEmail"/>
							<select id="ddlEmail">
								<option value="self">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="google.com">google.com</option>
								<option value="daum.net">daum.net</option>
							</select>
						</td>
					</tr>
	
	
				</tbody>
			</table>
		</form>
		<br /> 
		<input type="button" value="저장" id="saveBtn"/> 
		<input type="button" value="취소" id="cancleBtn"/>
</body>
</html>