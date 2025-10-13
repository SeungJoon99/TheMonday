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
        <td>홍길동</td>
      </tr>
      <tr>
        <td>닉네임</td>
        <td>닉네임</td>
      </tr>
      <tr>
        <td>이메일</td>
        <td>hong@example.com</td>
      </tr>
      <tr>
        <td>전화번호</td>
        <td>010-1234-5678</td>
      </tr>
      <tr>
        <td>주소</td>
        <td>서울특별시 강남구 역삼동</td>
      </tr>
    </tbody>
  </table>
  <button type="button" class="btn btn-primary btn-sm" onclick="window.location = './mypage_update.jsp'">정보 수정</button>
</div>

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
      <tr onclick="popup()" style="cursor:pointer;">
        <td>20230922001</td>
        <td><img src="../favicon.png" alt="상품 이미지"></td>
        <td>사과 외 4개</td>
        <td>450,000원</td>
        <td>2025-09-29</td>
      </tr>
      <script>
        function popup() {
          var url = "order_detail.jsp";
          var name = "order_detail";
          var option = "width=800,height=600,top=100,left=200,location=no";
          window.open(url, name, option);
        }
      </script>
    </tbody>
  </table>
  <button type="button" class="btn btn-sm" style="background-color: red; border: none;">회원 탈퇴</button>
</div>


    <%@ include file="./include/footer.jsp" %>
