<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

   <!-- 회원 정보 -->
<div class="container mypage">
  <h2>회원 정보</h2>
  <table class="table table-secondary table-striped-columns table-bordered">
    <tbody>
      <tr>
        <td>이름</td>
        <td>${ mypage.uname }</td>
      </tr>
      <tr>
        <td>닉네임</td>
        <td>${ mypage.unick }</td>
      </tr>
      <tr>
        <td>이메일</td>
        <td>${ mypage.uemail }</td>
      </tr>
      <tr>
        <td>전화번호</td>
        <td>${ mypage.uhp }</td>
      </tr>
      <tr>
        <td>주소</td>
        <td>${ mypage.uaddr }</td>
      </tr>
    </tbody>
  </table>
  <button type="button" class="btn btn-primary btn-sm" onclick="mypageUpdate()">정보 수정</button>
</div>
<script>
	var uno = ${ uno };
	
	function mypageUpdate()
	{
		window.location = "${pageContext.request.contextPath}/member/mypage_update"
	}
	
	function popup(pno) {
	  var url = "member/order_detail?uno="+ uno;
	  var name = "order_detail";
	  var option = "width=800,height=600,top=100,left=200,location=no";
	  window.open(url, name, option);
	}
	
	function Delete()
	{
		if( confirm("정말 탈퇴하시겠습니까?") != false )
		{	
			$.ajax({
				url: "userdelete",
				type: "post",
				data: {
					uno : uno	
				},
				dataType: "html",
				success : function(res)
				{
					alert(res);
				}
			});
			window.location = "${pageContext.request.contextPath}/member";
		}
		return;
	}
	
</script>
<!-- 배송 주문 내역 -->
<div class="container mypage mb-5">
  <h2>배송 주문 내역</h2>
  <input type="date">
  <button type="button">검색</button>
  <table class="table table-secondary table-striped-columns">
    <thead class="table-dark">
      <tr>
        <th>주문번호</th>
        <th>이미지</th>
        <th>상품명</th>
        <th>주문금액</th>
        <th>주문일자</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach var="item" items="${ mypageOrderList }">
	      <tr onclick="popup('${ item.uno }')" style="cursor:pointer;">
	        <td>${ item.ono }</td>
	        <td><img src="resources/images/${ item.ppimgname }" alt="상품 이미지"></td>
	        <td>${ item.pname }</td>
	        <td>${ item.ototal }</td>
	        <td>${ item.odate }</td>
	      </tr>

      </c:forEach>
    </tbody>
  </table>
  <button type="button" class="btn btn-sm" onclick="Delete()" style="background-color: red; border: none;">회원 탈퇴</button>
</div>


    <%@ include file="./include/footer.jsp" %>
