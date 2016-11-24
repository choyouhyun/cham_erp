<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><center>통장계좌 등록</center></h1>
<center><table  border=1 cellspacing="0"></center>
     <caption></caption>
     <tbody>
     <tr>
      <th scope="row">계좌번호</th>
      <td scope="row">
       <input type="text"  maxlength="">
       <input type="button" value="중복확인">
      </td>
     </tr>
     <tr>
      <th scope="row">계정명</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">계정코드</th>
      <td scope="row">
        <select name="">
    		<option value="">1039보통예금</option>
    		<option value="">00</option>
    		<option value="">00</option>
    		<option value="">00</option>
		</select>
      </td>
     </tr>
     <tr>
      <th scope="row">검색창내용</th>
      <td scope="row">
       <input type="text" maxlength="" />   
      </td>
     </tr>
     <tr>
      <th scope="row">적요</th>
      <td scope="row">
       <textarea rows="5" cols=""></textarea>    
      </td>
     </tr>
     <tr>
      <th scope="row">외화통장</th>
      <td scope="row">
        <select name="">
    		<option value="">미사용</option>
    		<option value="">사용</option>
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