<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 	<link rel="stylesheet" type="text/css" href="resources/css/erp_css/basic.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" media="all" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js" type="text/javascript"></script>
<title>입금보고서</title>
<style type="text/css">

</style>
 <script type="text/javascript">
        $(document).ready(function(){
            // 옵션추가 버튼 클릭시
            $("#addItemBtn").click(function(){
                // item 의 최대번호 구하기
                var lastItemNo = $("#example tr:last").attr("class").replace("item", "");
 
                var newitem = $("#example tr:eq(1)").clone();
                newitem.removeClass();
                newitem.find("td:eq(0)").attr("rowspan", "1");
                newitem.addClass("item"+(parseInt(lastItemNo)+1));
 
                $("#example").append(newitem);
            });
 
 
            // 항목추가 버튼 클릭시
            $(".addBtn").live("click", function(){
                var clickedRow = $(this).parent().parent();
                var cls = clickedRow.attr("class");
 
                // tr 복사해서 마지막에 추가
                var newrow = clickedRow.clone();
                newrow.find("td:eq(0)").remove();
                newrow.insertAfter($("#example ."+cls+":last"));
 
                // rowspan 조정
                resizeRowspan(cls);
            });
             
             
            // 삭제버튼 클릭시
            $(".delBtn").live("click", function(){
                var clickedRow = $(this).parent().parent();
                var cls = clickedRow.attr("class");
                 
                // 각 항목의 첫번째 row를 삭제한 경우 다음 row에 td 하나를 추가해 준다.
                if( clickedRow.find("td:eq(0)").attr("rowspan") ){
                    if( clickedRow.next().hasClass(cls) ){
                        clickedRow.next().prepend(clickedRow.find("td:eq(0)"));
                    }
                }
 
                clickedRow.remove();
 
                // rowspan 조정
                resizeRowspan(cls);
            });
 
            // cls : rowspan 을 조정할 class ex) item1, item2, ...
            function resizeRowspan(cls){
                var rowspan = $("."+cls).length;
                $("."+cls+":first td:eq(0)").attr("rowspan", rowspan);
            }
            $(function() {
            	$( "#datepicker1" ).datepicker({
            	dateFormat: 'yy-mm-dd'
            	});
            	});
        
        });
    </script>


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

	<table border="1" align="center">
		<tr>
			<th>일자</th>
			<th>
	  <c:set var="now" value="<%=new java.util.Date()%>" />
      <fmt:formatDate value="${now}" pattern="yyyy" var="yearStart"/> 
      <select id="selYear" name="bsnsYear">        
      <c:forEach begin="0" end="10" var="result" step="1">
      <option value="<c:out value="${yearStart - result}" />"><c:out value="${yearStart - result}" />년</option>
      </c:forEach>               
      </select>
      <select>
      <c:forEach begin="1" end="12" var="result" step="1">
      <option value="<c:out value="${result}"/>"><c:out value="${result}"/>월</option>
      </c:forEach>  
      </select>
      <select>
      <c:forEach begin="1" end="31" var="result" step="1">
      <option value="<c:out value="${result}"/>"><c:out value="${result}"/>일</option>
      </c:forEach>
       <p>Date of Birth (DOB): <input type="text" id="datepicker1"></p>   
      </select>
			</th>			
		</tr>
		<tr>
			<th>첨언내용</th>
			<th>첨언내용을 적으면 됩니다.</th>
		</tr>
	</table>
		<button id="addItemBtn">옵션추가</button>
		<input type="button" value="선택삭제" />	
		<input type="button" value="찾기(F3)" />	
		<input type="button" value="자금계획" />	
		<input type="button" value="계좌입출금내역" />
	<table id="example" border="1px" align="center">
		<tr>
			<th>순번</th>				
			<th>들어온계좌코드</th>
			<th>돈들어온 계좌명</th>
			<th>계정코드(대변)</th>
			<th>계정코드명</th>
			<th>거래처</th>
			<th>거래처명</th>
			<th>금액</th>
			<th>수수료</th>
			<th>적요명</th>
			<th>부서</th>
			<th>X</th>
		</tr>
		<tr class="item1">
			<td><input type="checkbox" /></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>						
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><button class="delBtn" />X</button></td>
		</tr>
		<tr class="item2">
				<td><input type="checkbox" /></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>						
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><button class="delBtn" />X</button></td>
		</tr>
		<tr class="item3">
				<td><input type="checkbox" /></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>						
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><button class="delBtn" />X</button></td>
		</tr>
		<tr class="item4">
				<td><input type="checkbox" /></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>						
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><input type="text" /></td>
			<td><button class="delBtn" />X</button></td>
		</tr>
	</table>
		<input type="button" value="저장(F8)" />
		<input type="button" value="저장/전표(F7)" />
		<input type="button" value="다시작성(F5)"/>
		<input type="button" value="리스트"/>
		</div>
	</div>
  </div>
</body>
</html>