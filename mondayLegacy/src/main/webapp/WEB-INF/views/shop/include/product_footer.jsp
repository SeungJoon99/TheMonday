<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>

var uno = $("#uno").val();
var pno = $("#pno").val();
var contextPath = "${pageContext.request.contextPath}/member/cart";


function AddCart()
{
	if( uno == null || uno == "" )
	{	
		alert("회원만 가능한 기능입니다!");
		return;
	}
	//장바구니 담기
	$.ajax({
		url : "CartBuy",
		type: "post",
		data :
		{
			pno : pno,
			uno : uno
		},
		dataType: "html",
		success : function(res)
		{
			alert(res);
			document.location.reload();
		}
	});		
}
function BuyNow()
{
	console.log(pno, uno);
	if( uno == null || uno == "" )
	{	
		alert("회원만 가능한 기능입니다!");
		return;
	}
	//즉시 구매
	$.ajax({
		url : "CartBuy",
		type: "post",
		data :
		{
			pno : pno,
			uno : uno
		},
		dataType: "html",
		success : function(res)
		{
			document.location = contextPath;
		}
	});		
}
</script>
	
<div class="buttons">
    <button onclick="BuyNow()">즉시 구매하기</button>
    <button onclick="AddCart()">장바구니</button>
</div>

<a href="${pageContext.request.contextPath}/shop">← 목록으로 돌아가기</a>
</div>
</body>
</html>

