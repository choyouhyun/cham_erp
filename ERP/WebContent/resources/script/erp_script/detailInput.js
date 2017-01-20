function addList() {
	var html="";
	html+="<tr>"; 
   html += "<td><input type=\"text\" name=\"detailDate\"></td>";
   html += "<td><input type=\"text\" name=\"detailName\" class=\"kor\"></td>";
   html += "<td><input type=\"text\" name=\"detailStan\" class=\"kor\"></td>";
   html += "<td><input type=\"text\" name=\"detailAmnt\" class=\"am_pr\"></td>";
   html += "<td><input type=\"text\" name=\"detailPrice\" class=\"am_pr\"></td>";
   html += "<td><input type=\"text\" class=\"money\" readonly=\"readonly\"></td>";
   html += "<td><input type=\"text\" name=\"detailEtc\" class=\"kor\"></td>";
   html +="</tr>";
   $("#tb").append(html);
	$("#detail :text").not(".kor").attr( "onkeydown", "return showKeyCode(event)" );
	$("#detail :text.am_pr").attr( "onblur", "amntXprice($(this))" );
}
//amnt 수량 price 단가  수량 X 단가= 금액
function amntXprice(am_pr) {
	
	var money=1;

	am_pr.parent().parent().children("td").children(":text.am_pr").each(
			function() {
				money *= Number($(this).val());
		});
	am_pr.parent().parent().children("td").children(":text.money").val(money); 
	add();
}
// 금액들의 합계 = 총금액
function add() {
	var money=0;
	$(".money").each(function() {
		money += Number($(this).val());
	})
	$("#money").val(money);
}
//숫자키만 입력받는다
function showKeyCode(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39|| keyID == 9|| keyID == 116 )
	{
		return;
	}
	else
	{
		return false;
	}
	
}