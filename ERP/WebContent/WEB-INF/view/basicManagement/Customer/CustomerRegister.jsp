<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><center>거래처 등록</center></h1>
<center><table  border=1 cellspacing="0"></center>
     <caption></caption>
     <tbody>
     <tr>
      <th scope="row">거래처 코드</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
       <input type="button" value="중복검사"/>
      </td>
     </tr>
     <tr>
      <th scope="row">상호(이름)</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">대표자 명</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">전화번호</th>
      <td scope="row">
       <input type="text" maxlength="" />-<input type="text" maxlength=""/>       
      </td>
     </tr>
     <tr>
      <th scope="row">휴대전화</th>
      <td scope="row">
       <input type="text" maxlength="" />-<input type="text" maxlength=""/>       
      </td>
     </tr>
     <tr>
      <th scope="row">Fax</th>
      <td scope="row">
       <input type="text" maxlength="" />-<input type="text" maxlength=""/>       
      </td>
     </tr>
     <tr>
      <th scope="row">주소</th>
      <td scope="row">
       <input type="button" value="우편번호 검색"/>
       <br/>
       <input type="text" maxlength="" />-<input type="text" maxlength=""/>
       <br/>
       <input type="text" maxlength=""/>       
      </td>
     </tr>
    
     
  
     <tr>
      <th scope="row"><p><!-- <font color="#FFBB00"> </font> -->Email</p></th>
      <td scope="row">
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

</body>
</html>