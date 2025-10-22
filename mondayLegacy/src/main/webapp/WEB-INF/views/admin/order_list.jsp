<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
  	<input type="date">부터
	<input type="date">까지
	<input type="number" placeholder="상품코드를 입력하세요.">
	<select>
		<option>전체</option>
		<option>침대</option>
		<option>쿠션러쉬</option>
		<option>소파</option>
		<option>다이닝</option>
		<option>의류</option>
	</select>
	<input type="text" placeholder="상품명을 입력하세요.">
 	<button type="button">검색</button>
</div>
<div class="container">
  <div class="row pb-5 box">
    <table class="table table-hover table-bordered border-dark" style="text-align: right; padding: 0;">
      <thead class="table-dark">
        <tr>
          <th>주문번호</th>
          <th>상품요약</th>
          <th>총금액</th>
          <th>주문일자</th>
          <th>주문상태</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="item" items="${list}">
          <tr onclick = "window.location.open= popup($('#ono').val)" target = "_blank">
            <th id="ono">${item.ono}</th>
            <th>${item.pname}</th>
            <th>${item.ototal}</th>
            <th>${item.odate}</th>
            <th>${item.svalue}</th>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</div>
<script>
    function popup(ono){
      var url = "order_set";
      var name = "order";
      var option = "width=600,height=500,top=100,left=200,location=${ono}";
      window.open(url, name, option);
    }
</script>
</body>
</html>
