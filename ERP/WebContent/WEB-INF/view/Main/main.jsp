<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/script/jquery/jquery-1.11.0.js"></script>
<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" /> <!-- basic -->
<script type="text/javascript" src="resources/script/erp_script/main_script.js"></script> <!-- basic -->
<title>Insert title here</title>
</head>
<body>
<div class="bg">
<form action="#" method="post" id="actionForm">
	<input type="hidden" name="noticeCC" />
</form>
	<div class="range">
		<div class="top">
			<div class="logo" id="mainBtn"></div>
			<div class="loginInfo">
				<div class="login">
					<div class="blank"></div>
					<div class="user">
						 <img alt="user" src="resources/images/ERP/user.png" class="img1" border="0" />
						  <span id="logout">
						  	<span class="userName">${sMemNm}</span>
						  	<input type="image" id="logoutBtn" src="resources/images/ERP/logout.png" class="img2" border="0" />
						  </span>
					</div>
				</div>
				<div class="noticeInfo">
					<div class= "notice">
						<div class="c">
							<div class="d">
								<div class="e">
									<div><font size=4>공지사항</font>
									<marquee id=pf 
									 width="500" height="20" behavior="loop" direction="up" scrolldelay="1.5" scrollamount="1.0">
									<FONT size=3pt> 
									 <UL>※농부 후안은 바리스타 입니다.※</UL>
									 <UL>※로스팅하는 엠마도 바리스타입니다.※</UL>
									 <UL>※추출하는 폴도 바리스타입니다.※</UL>
									</FONT>
									</marquee>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
		<div class="depth1_Body">
			<div class="menubar">
				<div class="menuRange">
					<ul>
					 <li><a href="#" id="current">전표입력</a>
					    <ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">장부관리</a>
					   <ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">재무재표</a><ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">전기재무재표</a><ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					 <li ><a href="#" id="current">게시판</a><ul>
					     <li id="noticePage"><a href="#">공지사항</a></li>
					     <li id="bbsPage"><a href="#">부서게시판</a></li>
					    </ul>
					 </li>
					 <li><a href="#" id="current">기본관리</a><ul>
					     <li><a href="#">서브메뉴1</a></li>
					     <li><a href="#">서브메뉴2</a></li>
					     <li><a href="#">서브메뉴3</a></li>
					     <li><a href="#">서브메뉴4</a></li>
					    </ul>
					 </li>
					</ul>
				</div>
			</div>
		</div>
		<div class="contents">

		
		</div>
	</div>
</div>
</body>
</html>