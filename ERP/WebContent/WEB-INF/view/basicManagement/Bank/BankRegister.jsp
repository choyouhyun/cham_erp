<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>계좌등록</title>
<script type="text/javascript"
src="resources/script/jquery/jquery-1.11.0.js">
</script>
<script>
	$(document).ready(function(){
		
		if($("#acntNo").val() != ""){
			getBank();
			$("#saveBtn").val("수정");
		}
		
		$("#saveBtn").on("click",function(){
			if($("#acntNo").val() != ""){
				editBank();
			} else {
				insertBank();
			}
			
		});//function inputBtn끝
	});//ready끝
	function insertBank() {
		var params = $("#actionForm").serialize();
		
		$.ajax({
			type :"post" ,
			url : "insertTest",
			dataType : "json",
			data : params,
			success : function(result) {//ajax가 성공적으로 돌았을때이다
				if(result.res == "true"){
					alert("저장됨");						
					location.href="BankList";
					}else{
					alert("저장 중 문제가 발생했습니다.");
				}
			},
			error : function(result) {
					alert("ERROR!");
			}
		});	//ajax 끝
	}
	function getBank() {
		var params = $("#actionForm").serialize();
		
		$.ajax({
			type : "post",
			url : "getList",
			dataType : "json",
			data : params,
			success : function(result) {
				$("#ACNTNUM").val(result.list.ACNTNUM);
				$("#NAME").val(result.list.NAME);
				$("#ETC").val(result.list.ETC);
				},
			error : function() {
				alert("error!");
			}
		});
	}
	
	function editBank() {
		var params = $("#actionForm").serialize();
		
		$.ajax({
			type : "post",
			url : "updateBank",
			dataType : "json",
			data : params,
			success : function() {
				window.close();
				window.opener.parent.location.reload();
			},
			error : function() {
				alert("error!");
			}
		});
	}	
   
</script>
</head>
<body>
<form action="#" id="actionForm">
<input type="hidden" id="acntNo" name="acntNo" value="${param.acntNo}"/>
<h1><center>통장계좌 등록</center></h1>
<center><table  border=1 cellspacing="0"></center>
     <tbody>
     <tr>
      <th scope="row">계좌번호</th>
      <td scope="row">
       <input type="text"  maxlength="" id="ACNTNUM" name="ACNTNUM">
       <input type="button" value="중복확인" >
      </td>
     </tr>
     <tr>
      <th scope="row">계좌명</th>
      <td scope="row">
       <input type="text"  maxlength="" id="NAME" name="NAME" />
      </td>
     </tr>
     <tr>
      <th scope="row">계정코드</th>
      <td scope="row">
        <select name="SUBCODE">
    		<option value="">계정을 선택합니다</option>
    		<option value="">1029 당좌예금</option>
    		<option value="">1039 보통예금</option>
    		<option value="">1059 정기예,적금</option>
    		<option value="">1063 기타단기금융삼품</option>
    		<option value="">1066 단기예금</option>
    		<option value="">1069 단기매매증권</option>
    		<option value="">1769 투자부동산</option>
    		<option value="">1774 장기금융상품</option>
    		<option value="">1774 장기금융상품</option>
    		<option value="">1779 특정현금과예금</option>
    		<option value="">2515 단기차입금</option>
    		<option value="">2954 장기차입금</option>
		</select>
      </td>
     </tr>
     <tr>
      <th scope="row">적요</th>
      <td scope="row">
       <textarea rows="5" cols="" id="ETC" name="ETC"></textarea>    
      </td>
     </tr>
     </tbody>
    </table>
    <br/>
<input type="button" id="saveBtn" value="저장"/>
<input type="button" id="cancelBtn" value="취소"/>
</form>
</body>
</html>