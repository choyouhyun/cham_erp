<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>Insert title here</title>
<style type="text/css">
/*스크롤바  */
html {
	scrollbar-3dLight-Color: #efefef;
	scrollbar-arrow-color: #dfdfdf;
	scrollbar-base-color: #efefef;
	scrollbar-Face-Color: #dfdfdf;
	scrollbar-Track-Color: #efefef;
	scrollbar-DarkShadow-Color: #efefef;
	scrollbar-Highlight-Color: #efefef;
	scrollbar-Shadow-Color: #efefef
}


::-webkit-scrollbar {
	width: 8px;
	height: 8px;
	border: 3px solid #fff;
}

::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment
	{
	display: block;
	height: 10px;
	background: #efefef;
}

::-webkit-scrollbar-track {
	background: #efefef;
	-webkit-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .2)
}

::-webkit-scrollbar-thumb {
	height: 50px;
	width: 50px;
	background: rgba(0, 0, 0, .2);
	-webkit-border-radius: 8px;
	border-radius: 8px;
	-webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, .1)
} 

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



#saveBtn,#clearBtn{
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
#saveBtn:hover,#clearBtn:hover {
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
#saveBtn:active,#clearBtn:active {
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

#Postcode,#memCheck,#searchBtn,#searchBankBtn{
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

#Postcode:active,#memCheck:active,#searchBtn:active,#searchBankBtn:active{
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

<script type="text/javascript">
$(document).ready(function(){
	if($("#acntNo").val() !=""){
		getMemList();
    	$("#saveBtn").val("수정");
    }
    
    $("#saveBtn").on("click",function(){
    	$("input[type='text']").each(function(){
    		if($(this).val() !=""){
    			if($("#acntNo").val() !=""){
        			editMem();    			
	        	}else{
	        		insertMem();
	        	}
    		}else{
    			$(this).focus();
    			alert("누락.");
    			return false;
    		}
    	});
    });
	$("#memCheck").on("click",function(){ 
	     	var params = $("#actionForm").serialize();
	        $.ajax({
	            url : "MemberCheck",
	            type : "post",  
	            data : params,
	            success : function(result) {
	            	
	               if (result.res == "fail") { 
	                 alert("사용불가.");
	                 $("input[name='idNo']").val("");
	                 $("input[name='idNo']").focus();
	               } else {
	                     alert("사용가능."); 
	                     idcheck = true; 
	                  }  
	               },  
	            error : function(error) {
	               alert("ERROR!");
	            }
	         });    
	        return false; 
	     
	     });//id중복체크 
     $("#searchBankBtn").click(function() {
    	 var newWindow;
         newWindow = window.open("bankPopup","bankPopup","width=500, height=600");
	});
});





function getMemList() {
		var params = $("#actionForm").serialize();
		
		$.ajax({
			type : "post",
			url : "getMemList",
			dataType : "json",
			data : params,
			success : function(result) {
				alert("실행");
				$("#idNo").val(result.con.NO);
				
				$("#NAME").val(result.con.NAME);
				
				$("#Jumin1").val(result.con.JUMIN1);
				$("#Jumin2").val(result.con.JUMIN2); 
				
				$("#datepicker1").val(result.con.DATEJOIN);
				
				$("#Hpnum1").val(result.con.CELL1);
				$("#Hpnum2").val(result.con.CELL2);
				$("#Hpnum3").val(result.con.CELL3);
				
				var email = result.con.EMAIL;
	 			var emailArray = email.split("@");
				$("#textEmailId").val(emailArray[0]);
				$("#textEmail").val(emailArray[1]); 
					
				$("#roadAddress").val(result.con.ADDRESS);
				
				 
				$("#Memo").val(result.con.ETC);
			},
			error : function() {
				alert("error!");
			}
		});
	}
	
	function editMem() {
		var params = $("#actionForm").serialize();
		
		$.ajax({
			type : "post",
			url : "updateMem",
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
	     
     function insertMem(){
			var params = $("#actionForm").serialize();
			$.ajax({
				type :"post" ,
				url : "Meminsert",
				dataType : "json",
				data : params,
				success : function(result) {//ajax가 성공적으로 돌았을때이다
					if(result.res == "true"){
						
						alert("저장됨");						
						location.href="MemList";
						}else{
						alert("저장 중 문제가 발생했습니다.");
					}
				},
				error : function(result) {
						alert("ERROR!");
				}
			});	//ajax 끝
		}
     $("#ddlEmail").on("change", function() {
 		$("#textEmail").val($(this).val());
 		if($("#textEmail").val() == "self"){
 			$("#textEmail").val("");
 			$("#textEmail").focus();
 		}
 	});
     //달력부분 
     $(function() {
     	$( "#datepicker1" ).datepicker({
     	dateFormat: 'yymmdd'
     	});
     	});
     
     

</script>
<script>
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function execDaumPostcode() {
   new daum.Postcode(
         {
            oncomplete : function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                  extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if (data.buildingName !== '' && data.apartment === 'Y') {
                  extraRoadAddr += (extraRoadAddr !== '' ? ', '
                        + data.buildingName : data.buildingName);
               }
               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if (extraRoadAddr !== '') {
                  extraRoadAddr = ' (' + extraRoadAddr + ')';
               }
               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
               if (fullRoadAddr !== '') {
                  fullRoadAddr += extraRoadAddr;
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById('roadAddress').value = fullRoadAddr;
               document.getElementById('jibunAddress').value = data.jibunAddress;

               // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
               if (data.autoRoadAddress) {
                  //예상되는 도로명 주소에 조합형 주소를 추가한다.
                  var expRoadAddr = data.autoRoadAddress
                        + extraRoadAddr;
                  document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
                        + expRoadAddr + ')';

               } else if (data.autoJibunAddress) {
                  var expJibunAddr = data.autoJibunAddress;
                  document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
                        + expJibunAddr + ')';

               } else {
                  document.getElementById('guide').innerHTML = '';
               }
            }
         }).open();
}




</script>

</head>
<body>
	<form action="#" id="actionForm" method="post" enctype="multipart/form-data">
	<input type = "hidden" id = "acntNo" name = "acntNo" value ="${param.acntNo}"/>
		<h1>
			<center>사원 등록</center>
		</h1>
		<div align="center">
		<table border=1 cellspacing="0" width=75% height=300% align="center" class="maintbl">

			<caption></caption>
			<tbody>
				<tr>
					<td rowspan=7 width=30%>이미지 <img src=" " width=100 height=100></td>
				<tr>
					<th scope="row">사원번호</th>
					<td scope="row" align="left">
					<input type="text" id="idNo"  name="idNo" maxlength="30" />
					<input type="button" value="중복확인" id="memCheck" />
					
					<th scope="row">성명</th>
					<td scope="row" align="left"><input type="text" maxlength="" id="NAME" name = "NAME">
				</tr>
				<tr>
					<th scope="row">주민등록번호</th>
					<td scope="row" align="left">
					<input type="text" maxlength="" id="Jumin1" name="Jumin1"/>
					<span> - </span>
					<input	type="text" maxlength="" id="Jumin2" name="Jumin2"/>
					<th scope="row">부서코드</th>
					<td scope="row" align="left"><input type="text"
						id="searchText" value=""> <input type="button" value="검색"
						id="searchBtn" /></td>
				</tr>

				<tr>
					<th scope="row">입사일자</th>
					<td scope="row" align="left" colspan=4 >
						<p><input type="text" id="datepicker1" name="datepicker1"></p>   
					</td>
				</tr>
				<tr>
					<th scope="row">직위/직급</th>
					<td scope="row" align="left">
					<input type="text" id="searchText" value="" > 
					<input type="button" value="검색" id="searchBtn" /></td>
					<th scope="row">직책</th>
					<td scope="row" align="left"> <select>
							<option>선택</option>
							<option>팀원</option>
							<option>팀장</option>
							<option>파트장</option>
							<option>실장</option>
							<option>본부장</option>
					</select></td>
				</tr>				
				<tr>
					<th scope="row">휴대전화</th>
					<td scope="row" align="left">
					<input type="text" maxlength="" id="Hpnum1" name="Hpnum1"/> - <input type="text" maxlength="" id="Hpnum2" name="Hpnum2"/> - <input type="text" maxlength="" id="Hpnum3" name="Hpnum3"/></td> 
				</tr>
				<tr>
					<th scope="row"><p>
							Email
						</p></th>
					<td scope="row" colspan=3 align="left">
					<input type="text" id="textEmailId" name="textEmailId" />
					<span> @ </span>
					<input type="text" id="textEmail" name="textEmail" />
						<select id="ddlEmail">
							<option value="self">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.com">daum.net</option>
							<option value="gmail.com">gmail.com</option>
							<option value="nate.com">nate.com</option>
						</select></td>
				</tr>
				<tr>
					<th scope="row">급여통장</th>
					<td scope="row" colspan=4 align="left">
					<input type="text" id="searchText" value=""> 
						<input type="button" value="검색" id="searchBankBtn"> 
						계좌번호 : 
						<input type="text" id="bankCode" maxlength="">
						예금주 : <input type="text" maxlength="" /></td>
				</tr>
				<tr>
					<th scope="row">주소</th>
					<td scope="row" colspan=4 align="left"><br /> <input
						type="text" id="postcode" placeholder="우편번호" name="textPostCode">
						<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" id="Postcode"><br>
						<input type="text" id="roadAddress" placeholder="도로명주소" name="textRoadAddress"> <input type="text"
						id="jibunAddress" placeholder="지번주소" name="textJibunAddress">
						<input type="text" id="detailAddress" placeholder="상세주소">
					</td> 
				</tr>
				<tr>
					<th scope="row">적요</th>
					<td scope="row" colspan=4 align="left"><textarea rows="5"
							cols="" id="Memo" name="Memo"></textarea></td>
				</tr>
				
				<tr>
					<th scope="row">사진</th>
					<td scope="row" colspan=4 align="left">
					<input type="file" id="inputFile" name="inputFile">
					<input type="hidden" id="textFile" name="textFile">
					</td>
			</tbody>


		</table>
		</div>
	</form>
	<br />
	<div align="center">
		<input type="button" value="저장" id="saveBtn" /> 
		<input type="button" value="취소" id="clearBtn"
			onclick="window.open('about:blank','self').close();" />
	</div>

</body>
</html>