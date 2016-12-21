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

#saveBtn,#cancelBtn{
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
#saveBtn:hover,#cancelBtn:hover {
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
#saveBtn:active,#cancelBtn:active {
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

#checkBtn{
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

#checkBtn:active{
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
<h1><center>통장계좌 등록</center></h1>
<center><table  border=1 cellspacing="0" class="maintbl">
     <tbody>
     <tr>
      <th scope="row">계좌번호</th>
      <td scope="row">
	<input type="hidden" id="acntNo" name="acntNo" value="${param.acntNo}"/>
       <input type="text"  maxlength="" id="ACNTNUM" name="ACNTNUM">
       <input type="button" value="중복확인" id="checkBtn">
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
    </center>
    <br/>
<div align="center">
<input type="button" id="saveBtn" value="저장"/>
<input type="button" id="cancelBtn" value="취소"/>
</div>
</form>
</body>
</html>