<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1><center>계정코드 등록</center></h1>
<center><table  border=1 cellspacing="0"></center>
     <caption></caption>
     <tbody>
     <tr>
      <th scope="row">계정코드</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">계정명</th>
      <td scope="row">
       <input type="text"  maxlength=""/>
      </td>
     </tr>
     <tr>
      <th scope="row">계정종류</th>
      <td scope="row">
        <select name="">
    		<option value="">자산</option>
    		<option value="">00</option>
    		<option value="">00</option>
    		<option value="">00</option>
		</select>
      </td>
     </tr>
     <tr>
      <th scope="row">대차구분</th>
      <td scope="row">
       <input type="radio" name="" /><label>차변</label>  
       <input type="radio" name="" /><label>대변</label>  
      </td>
     </tr>
     <tr>
      <th scope="row">상위계정</th>
      <td scope="row"><input type="text" maxlength=""> 
      <input type="button" value="검색" /> 
      </td>
     </tr>
     <tr>
      <th scope="row">적요</th>
      <td scope="row">
       <input type="text" maxlength="" />    
      </td>
     </tr>
     </tbody>
    </table>
    <br/>
<input type="button" value="저장"/>
<input type="button" value="취소"/>

</body>
</html>