<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
  <div class="row pb-5 box">
    <table class="table table-hover table-bordered border-dark" style="text-align: right; padding: 0;">
      <thead>
        <tr>
          <th style="width: 6%; text-align: center;">주문 번호</th>
          <th style="width: 2%; text-align: center;">이미지</th>
          <th style="width: 8%; text-align: center;">주문 일시</th>
          <th style="width: 10%; text-align: center;">수량</th>
          <th style="width: 5%; text-align: center;">결제 금액</th>
          <th style="width: 8%; text-align: center;">주문 상태</th>
        </tr>
      </thead>
      <tbody>
        <tr onclick="popup()" style="cursor:pointer;">
          <th scope="row">1</th>
          <td><img src="resources/images/favicon.png" alt="상품 이미지"></td>
          <td>2025.10.14</td>
          <td>10</td>
          <td>58,000</td>
          <td>주문 완료</td>
        </tr>
        <tr onclick="popup()" style="cursor:pointer;">
          <th scope="row">2</th>
          <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품 이미지"></a></td>
          <td>2025.10.14</td>
          <td>10</td>
          <td>70,000</td>
          <td>주문 완료</td>
        </tr>
        <tr onclick="popup()" style="cursor:pointer;">
          <th scope="row">3</th>
          <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품 이미지"></a></td>
          <td>2025.10.14</td>
          <td>10</td>
          <td>90,000</td>
          <td>주문 완료</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
<script>
    function popup(){
        var url = "admin/order_set";
        var name = "order";
        var option = "width=600,height=500,top=100,left=200,location=no";
        window.open(url, name, option);
    }
</script>
</body>
</html>
