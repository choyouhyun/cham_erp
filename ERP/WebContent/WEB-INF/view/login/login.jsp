<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Sample</title>
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

.loginPop{
	display:inline-block;
	position: absolute;
	width: 250px;
	height: 190px;
	z-index: 200;
	background-color: #FFFFFF;
	border-radius: 20px;
	position: absolute;
	top: calc(50% - 50px);
	left: calc(50% - 100px);
	border-top: 8px double #D5D5D5;
	border-left: 8px double #D5D5D5;
	border-right: 8px double #D5D5D5;
	border-bottom: 8px double #D5D5D5;
	border-radius: 50px; /*모서리를 원처럼*/	
	text-align: center;
	font-family: '배달의민족 한나';
	
}
.loginTitle{
	position: absolute;
	left: calc(50% - 100px);
	/* border-bottom: 1px solid #000000; */
	font-size: 20pt;
	width: 200px;
	/* color: #6799FF; */
	color: #474747;
	margin-top: 10px;
}
 .loginBtn{
	width: 204px;
	height: 30px;
	border-radius: 5px; 
	border: 1px solid #ffffff;
    background: #474747;
    font-family: '맑은고딕';
    font-weight:bold; 
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
.bg {
	display: inline-block;
	width: 100%;
	height: 100%;
	border: 0px;
	background-color: #FAF4C0;
	opacity: 0.4; /*투명도 40%*/
	position: absolute; /*겹치는것을 알려줌*/
	z-index: 100; /*z축설정 100번째 앞에있다는 것*/
}
.loginBtn:hover {
   width: 204px;
   height: 30px;
   border-radius: 5px; 
   background: #222222;
   background: -webkit-gradient(linear, left top, left bottom, from(#474747), to(#222222));
   background: -webkit-linear-gradient(top, #474747, #222222);
   background: -moz-linear-gradient(top, #474747, #222222);
   background: -ms-linear-gradient(top, #474747, #222222);
   background: -o-linear-gradient(top, #474747, #222222);
   background-image: -ms-linear-gradient(top, #474747 0%, #222222 100%);
   color: #ffffff;
   cursor: pointer;
   font-family: '맑은고딕';
   font-weight:bold; 
}
.loginBtn:active {
   /* text-shadow: #ffffff 0 1px 0; */
   width: 204px;
   height: 30px;
   border-radius: 5px; 
   border: 1px solid #ffffff;
   border: 1px solid #ffffff;
   background: #000000;
   background: -webkit-gradient(linear, left top, left bottom, from(#000000), to(#222222));
   background: -webkit-linear-gradient(top, #000000, #000000);
   background: -moz-linear-gradient(top, #000000, #000000);
   background: -ms-linear-gradient(top, #000000, #000000);
   background: -o-linear-gradient(top, #000000, #000000);
   background-image: -ms-linear-gradient(top, #000000 0%, #000000 100%);
   color: #fff;
   font-family: '맑은고딕';
   font-weight:bold; 
} 

</style>
<!-- <style type="text/css">
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
</style> -->
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
<div class="bg"></div>
	<div class="loginPop">
		<form action="#" id="loginForm" method="post">
		<div class="loginTitle">순실미르재단</div><br/>
			<br/>
			<br/>
		   &nbsp;<input type="text" name="ID" id="ID" placeholder="사원번호"/>
		   <br/>
		   <div class="o"></div>
		   &nbsp;<input type="password" name="PW" id="PW" placeholder="비밀번호"/>
		   <br/>
		   <div class="o"></div>
		   <input type="Button" value="로그인" class="loginBtn" id="loginBtn">
		   <div class="o"></div>
		   <div class="p">로그인 문제 발생 시 관리자에게 문의하세요</div>
		</form>
	</div>
</body>
</html>