<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>



  <div class="untree_co-section before-footer-section">
    <div class="container">
      <div class="row">
        <!-- 좌측: 장바구니 리스트 -->
        <div class="col-lg-8 content-box">
          <form method="post">
            <div class="site-blocks-table">
              <table class="table">
                <thead>
                  <tr>
                    <th class="product-thumbnail">이미지</th>
                    <th class="product-name">상품명</th>
                    <th class="product-price">가격</th>
                    <th class="product-quantity">수량</th>
                    <th class="product-total">총 가격</th>
                    <th class="product-remove">제거</th>
                  </tr>
                </thead>
                <tbody>
                
                  <!-- 상품 1 -->
                  <c:forEach var="item" items="${ cartList }">
                  <tr>
				        <td class="product-thumbnail">
				            <img src="${pageContext.request.contextPath}/resources/images/${ item.product.ppimgname }" alt="Image" class="img-fluid small-thumb" style="width:120px;height:150px;">
				        </td>
				        <td class="product-name">
				            <h2 class="h5 text-black">
				                <a href="${pageContext.request.contextPath}/shop/product_detail?pno=${item.pno}">${ item.product.pname }</a>
				            </h2>
				        </td>
				        <td>${ item.product.pprice }원</td>
				        <td>
				            <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
				                <button class="btn btn-outline-black decrease" id="qtyMinus" type="button">&minus;</button>
			                	<input type="text" id="qty" class="form-control text-center quantity-amount" value="${ item.cqty }">
				                <button class="btn btn-outline-black increase" id="qtyPlus" type="button">&plus;</button>
				            </div>
				        </td>
				        <td>${ item.product.pprice * item.cqty }</td>
				        <td><a href="#" class="btn btn-black btn-sm" id="delFromCart">X</a></td>
				    	</tr>
					</c:forEach>
				</tbody>
              </table>
            </div>
          </form>
        </div>

        <!-- 우측: 주문 쿠폰 -->
        <div class="col-lg-4">
          <!-- 배송지 입력 폼 -->
          <div class="mt-4">
            <h5 class="text-black mb-3">배송지 입력 (실제)</h5>
            <div class="mb-3">
              <label for="delivery-address" class="form-label">배송지</label>
              <input type="text" class="form-control" id="deliveryAddress" placeholder="서울특별시 강남구 테헤란로 123">
            </div>

            <div class="mb-3">
              <label for="delivery-memo" class="form-label">메모사항 (실제)</label>
              <textarea class="form-control" id="deliveryMemo" rows="2" placeholder="문 앞에 놔 두고 벨 누르지 말아주세요."></textarea>
            </div>

            <button class="btn btn-outline-secondary mb-3 w-100" type="button" onclick="deliverySave()">배송지 저장</button>
          </div>

          <div class="cart-totals p-4 rounded">
            <h3 class="text-black h4 text-uppercase mb-4">결제요약</h3>

            <!-- Header Row -->
            <div class="d-flex text-black fw-bold border-bottom pb-2 mb-3">
              <div style="width: 50%;">상품명</div>
              <div style="width: 20%; text-align: center;">개수</div>
              <div style="width: 30%; text-align: right;">가격</div>
            </div>
			
            <!-- 상품 -->
            <c:forEach var="item" items="${ cartList }">
	            <div class="d-flex mb-2">
	              <div style="width: 50%;">${ item.product.pname }</div>
	              <div style="width: 20%; text-align: center;">${ item.cqty }</div>
	              <div style="width: 30%; text-align: right;">${ item.product.pprice * item.cqty }</div>
	            </div>
	            
			</c:forEach>
			
			<!-- 요약 -->
			<div class="d-flex border-top pt-3 mt-3 fw-bold">
				<div style="width: 50%;">총 가격</div>
				<div style="width: 20%; text-align: center;"></div>
				<div style="width: 30%; text-align: right;">${ cartTotal }</div>
				</div>
				<button class="btn btn-black btn-lg btn-block w-100 mt-4" onclick="pay()">결제하기</button>
			</div>
							
			</div>
		</div>
	</div>
</div>
		
<%@ include file="./include/footer.jsp" %>
		
