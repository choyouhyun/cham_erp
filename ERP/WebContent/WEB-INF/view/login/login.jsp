<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Sample</title>
<style type="text/css">
.loginPop{
	display:inline-block;
	width: 250px;
	height: 190px;
	background-color: #FFFFFF;
	border: 1px solid #000000;
	border-radius: 20px;
	position: absolute;
	top: calc(50% - 50px);
	left: calc(50% - 100px);
	text-align: center;
}
.loginTitle{
	position: absolute;
	left: calc(50% - 100px);
	border-bottom: 1px solid #000000;
	font-size: 20pt;
	width: 200px;
}
.loginBtn{
	width: 204px;
	height: 30px;
}
#ID, #PW{
	width: 200px;
	height: 30px;
}
.o{
	diplay: inline-block;
	height: 5px;
}
.p{
	font-size: 9pt;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#ID").on("click", function(){
		$("#ID").val("");
	});
	$("#PW").on("click", function(){
		$("#PW").val("");
	});
	$("#loginBtn").on("click", function(){
		if($.trim($("#ID").val())==""){
		      alert("아이디를 입력하세요.");
		                  //┌화면에 있는 객체가 활성화 되면
		      $("#ID").focus();
		   }else if($.trim($("#PW").val())==""){
		      alert("비밀번호 입력하세요.");
		      $("#PW").focus();
		   }else{
		      var params= $("#loginForm").serialize();
		      
		      $.ajax({
		         type:"post",
		         url:"LoginCheckAjax",
		         dataType:"json",
		         data : params,
		         success:function(result){
		            if(result.res=="sucess"){
		               location.href="main";
		            }else{
		               alert("아이디나 비번을 확인해라"+result.res);
		               $("#ID").focus();
		            }
		         },
		         error: function(result) {
		            alert("ERROR!!");
		         }
			});
		}
	});
});

</script>
</head>
<body>
	<div class="loginPop">
		<form action="#" id="loginForm" method="post">
		<div class="loginTitle">순실미르재단</div><br/>
			<br/>
		   &nbsp;<input type="text" name="ID" id="ID" value="ID를 입력 해 주세요."/>
		   <br/>
		   <div class="o"></div>
		   &nbsp;<input type="password" name="PW" id="PW" placeholder="***********************"/>
		   <br/>
		   <div class="o"></div>
		   <input type="Button" value="로그인" class="loginBtn" id="loginBtn">
		   <div class="o"></div>
		   <div class="p">로그인 문제 발생 시 관리자에게 문의하세요</div>
		</form>
	</div>
</body>
</html>