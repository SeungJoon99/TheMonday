<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/product_header.jsp" %>
<script>
function AddCart()
{
	if($("#rnote").val() == "")
	{
		alert("댓글을 입력해주세요");
		$("#rnote").focus();
		return;
	}
	if(confirm("댓글을 등록하시겠습니까")==false)
	{
		return;
	}
	//게시물번호,작성자아이디,댓글내용
	$.ajax({
		url : "replyok.do",
		type: "post",
		data :
		{
			no : "${ item.no }",
			userid : "${ login.userid }",
			rnote : $("#rnote").val()
		},
		dataType: "html",
		success : function(res)
		{
			res = res.trim();
			alert(res);
			document.location.reload();
		}
	});		
}
</script>
		<input type="hidden" value="${ProductDetail.pno }">
      <h1>${ProductDetail.pname }</h1>
      <img src="${pageContext.request.contextPath}/resources/images/${ProductDetail.ppimgname }" alt="Nordic Chair Beige">
      <p>${ProductDetail.pinfo }</p>
      <h2>${ProductDetail.pprice}원</h2>

     <%@ include file="./include/product_footer.jsp" %>
