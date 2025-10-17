<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          <tr onclick = "window.location.open= popup()" target = "_blank">
			<td>20230922001</td>
			<td>사과 외 4개</td>
			<td>450,000원</td>
			<td>2025-09-29</td>
			<td>주문완료</td>
		  </tr>
		</tbody>
    </table>
  </div>
</div>
<script>
    function popup(){
        var url = "order_set";
        var name = "order";
        var option = "width=600,height=500,top=100,left=200,location=no";
        window.open(url, name, option);
    }
</script>
</body>
</html>
