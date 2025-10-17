<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <div class="container">
      <div class="row pb-5 box">
        <table class="table table-hover table-bordered border-dark" style="text-align: right; padding: 0;">
          <thead>
            <tr>
              <th style="width: 3%; text-align: center;"><input type="checkbox"></th>
              <th style="width: 4%; text-align: center;">상품번호</th>
              <th style="width: 2%; text-align: center;">이미지</th>
              <th style="width: 8%; text-align: center;">상품명</th>
              <th style="width: 10%; text-align: center;">가격</th>
              <th style="width: 5%; text-align: center;">카테고리</th>
              <th style="width: 8%; text-align: center;">등록일</th>
              <th style="width: 6%; text-align: center;">판매상태</th>
              <th style="width: 10%; text-align: center;"></th>
            </tr>
          </thead>
          <tbody>
            <tr onclick="boardView()">
              <th><input type="checkbox"></th>
              <th scope="row">1</th>
              <td><a href="shop/product_detail"><img src="${pageContext.request.contextPath}/resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>사과</td>
              <td>10000</td>
              <td>사과</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
            <tr onclick="boardView()">
              <th><input type="checkbox"></th>
              <th scope="row">2</th>
              <td><a href="shop/product_detail"><img src="${pageContext.request.contextPath}/resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>딸기</td>
              <td>23100</td>
              <td>딸기</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
            <tr>
              <th><input type="checkbox"></th>
              <th scope="row">3</th>
              <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>귤</td>
              <td>4500</td>
              <td>포도</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
            <tr>
              <th><input type="checkbox"></th>
              <th scope="row">4</th>
              <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>복숭아</td>
              <td>45000</td>
              <td>블루베리</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
            <tr>
              <th><input type="checkbox"></th>
              <th scope="row">5</th>
              <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>배</td>
              <td>450000</td>
              <td>두리안</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중지</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
            <tr>
              <th><input type="checkbox"></th>
              <th scope="row">6</th>
              <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>배</td>
              <td>450000</td>
              <td>두리안</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중지</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
            <tr>
              <th><input type="checkbox"></th>
              <th scope="row">7</th>
              <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>배</td>
              <td>450000</td>
              <td>두리안</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중지</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
            <tr>
              <th><input type="checkbox"></th>
              <th scope="row">8</th>
              <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>배</td>
              <td>450000</td>
              <td>두리안</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중지</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
            <tr>
              <th><input type="checkbox"></th>
              <th scope="row">9</th>
              <td><a href="shop/product_detail"><img src="resources/images/favicon.png" alt="상품이미지"></a></td>
              <td>배</td>
              <td>450000</td>
              <td>두리안</td>
              <td>2025-09-29</td>
              <td>
                <div style="font-size: 20px;">
                  <span>판매 중지</span>
                </div>
              </td>
              <td>
                <a href="admin/update"><button type="button">수정하기</button></a>
                <button type="button">삭제하기</button>
              </td>
            </tr>
          </tbody>
        </table>
        <div class="d-flex justify-content-end">
          <button type="button" onclick="">일괄판매</button>&nbsp;
          <button type="button" onclick="">판매중지</button>
        </div>
      </div>
    </div>
  </body>
</html>
