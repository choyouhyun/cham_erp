<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/erp_css/basic.css" />
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

<h1><center>회사정보 등록</center></h1>
<center><table  border=1 cellspacing="0" width = 50% height = 300%>
     <caption></caption>
     <tbody>
     <tr>
      <th scope="row">회사명</th>
      <td scope="row">
      	<input type="text"  maxlength=""/>    
      <th scope="row">구분</th>
      <td scope="row">
      	<input type="radio" name="" /><label>법인</label>
      	<input type="radio" name="" /><label>개인</label>
      </td>
     </tr>
     <tr>
      <th scope="row">사업자등록번호</th>
      <td scope="row">
      	<input type="text"  maxlength=""/>    
      <th scope="row">법인등록번호</th>
      <td scope="row">
      	<input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">대표자명</th>
      <td scope="row">
      	<input type="text"  maxlength=""/>    
      <th scope="row">팩스번호</th>
      <td scope="row">
      	<input type="text"  maxlength=""/>
      </td>
     </tr>
     
     <tr>
      <th scope="row" >전화번호</th>
      <td scope="row" colspan=3>
       <input type="text" maxlength="" />-<input type="text" maxlength=""/>       
      </td>
     </tr>
     <tr>
      <th scope="row">휴대전화</th>
      <td scope="row" colspan=3>
       <input type="text" maxlength="" />-<input type="text" maxlength=""/>       
      </td>
     </tr>
     <tr>
      <th scope="row">주소</th>
      <td scope="row" colspan=3>
       <input type="button" value="우편번호 검색"/>
       <br/>
       <input type="text" maxlength="" />-<input type="text" maxlength=""/>
       <br/>
       <input type="text" maxlength=""/>       
      </td>
     </tr>
     <tr>
      <th scope="row"><p><!-- <font color="#FFBB00"> </font> -->Email</p></th>
      <td scope="row" colspan=3>
       <input type="text" />
       <select>
       <option>선택</option>
       <option>직접입력</option>
       <option>@naver.com</option>
       <option>@daum.net</option>
       <option>@gmail.com</option>
       <option>@nate.com</option>
       </select>
      </td>
     </tr>
     
   
     </tbody>
    </table>
    <br/>
<input type="button" value="저장"/>
<input type="button" value="취소"/>
</center>
</div>
</div>
</div>
</body>
</html>