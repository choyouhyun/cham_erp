<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/erp_css/basic.css" />
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
					<div class= "notice">
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
		
		
		<h1><center>품목 등록</center></h1>
<center><table  border=1 cellspacing="0">
     <caption></caption>
     <tbody>
     <tr>
      <th scope="row">이미지</th>
      <td scope="row">
       <input type="image" value="이미지삽입"/>
      </td>
     </tr>
     <tr>
      <th scope="row">품목명</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">원산지</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">품목코드</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">품목그룹1</th>
      <td scope="row">
       <input type="text"  maxlength="">
       <input type="button" value="검색"/>
      </td>
     </tr>
     <tr>
      <th scope="row">무게</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">입고단가</th>
      <td scope="row">
       <input type="text"  maxlength="">
       <input type="checkbox" >VAT포함
      </td>
     </tr>
     <tr>
      <th scope="row">출고단가</th>
      <td scope="row">
       <input type="text"  maxlength="">
       <input type="checkbox" >VAT포함
      </td>
     </tr>
     <tr>
      <th scope="row">품목구분</th>
      <td scope="row">
        <select name="">
    		<option value="">상품</option>
    		<option value="">00</option>
    		<option value="">00</option>
    		<option value="">00</option>
		</select>
      </td>
     </tr>
     <tr>
      <th scope="row">크기</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">단위</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">구매처</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">안전재고수량</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     </tbody>
    </table>
    </center>
    <br/>
<input type="button" value="저장"/>
<input type="button" value="새로입력"/>
<input type="button" value="취소"/>
		
		</div>
	</div>
</div>
</body>
</html>