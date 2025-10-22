<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 검색/필터링 section -->
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
	<!-- 검색/필터링 section end -->
	
	<!-- main section -->
    <div class="container">
      <div class="row pb-5 box">
        <table class="table table-hover table-bordered border-dark" style="text-align: right; padding: 0;">
          <thead>
            <tr>
              <th style="width: 3%; text-align: center;"><input type="checkbox" ></th>
              <th style="width: 4%; text-align: center;">상품번호</th>
              <th style="width: 2%; text-align: center;">이미지</th>
              <th style="width: 8%; text-align: center;">상품명</th>
              <th style="width: 10%; text-align: center;">가격</th>
              <th style="width: 5%; text-align: center;">카테고리</th>
              <th style="width: 8%; text-align: center;">등록일</th>
              <th style="width: 6%; text-align: center;">진열여부</th>
              <th style="width: 10%; text-align: center;">상품수정/삭제</th>
            </tr>
          </thead>
          
          <!-- 상품 목록 표시 -->
          <tbody>
          	<c:forEach var="item" items="${ items }">
	            <tr onclick="boardView()">
	            
	              <!-- 진열 체크박스 -->
	              <th><input type="checkbox"></th>
	              
	              <!-- 번호 -->
	              <th scope="row">${ item.pno }</th>
	              
	              <!-- 이미지 -->
	              <td><a href="<c:url value="/shop/product_detail?pno=${item.pno}" />">
	              		<img src="<c:url value="/resources/images/${item.ppimgname}" />" alt="상품이미지" style="height: 30px;">
	              	  </a>
	              </td>
	              <!-- 품명 -->
	              <td>${ item.pname }</td>
	              
	              <!-- 가격 -->
	              <td>${ item.pprice }</td>
	              
	              <!-- 카테고리 -->
	              <td>${ item.pkind }</td>
	              
	              <!-- 등록일 -->
	              <td>${ item.pwdate }</td>
	              
	              <!-- 진열여부 -->
	              <td><div style="font-size: 20px;">
	                  <span>
	                  	<c:choose>
	               			<c:when test="${ item.pdisplay eq 'Y' }">
	               			판매 중
	               			</c:when>
	               			<c:otherwise>
	               			진열 중지
	               			</c:otherwise>
	                  	</c:choose>
	                  </span></div>
	              </td>
	              
	              <!-- U/D 버튼 -->
	              <td>
	                <a href="<c:url value="/admin/update?pno=${item.pno}" />"><button type="button">수정하기</button></a>
	                <button type="button">삭제하기</button>
	              </td>
	              
	            </tr>
            </c:forEach>
          </tbody>
          <!-- 상품 목록 표시 끝 -->
          
        </table>
        
        <div class="d-flex justify-content-end">
          <button type="button" onclick="">일괄진열</button>&nbsp;
          <button type="button" onclick="">판매중지</button>
        </div>
        
        <!-- pagination -->
        <nav aria-label="Page navigation example">
		    <ul class="pagination justify-content-center">
		        <!-- 이전 화살표 -->
		        <c:if test="${currentPage != 1}">
		            <c:set var="prevUrl" value="?page=${currentPage - 1}" />
		            <c:if test="${not empty searchvo.pkind}">
		                <c:set var="prevUrl" value="${prevUrl}&pkind=${searchvo.pkind}" />
		            </c:if>
		
		            <li class="page-item">
		                <a class="page-link" href="${prevUrl}" aria-label="Previous">
		                    <span aria-hidden="true">&laquo;</span>
		                </a>
		            </li>
		        </c:if>
		
		        <!-- 페이지 번호 -->
		        <c:forEach var="page" begin="${startbk}" end="${endbk}">
		            <c:set var="pageUrl" value="?page=${page}" />
		            <c:if test="${not empty searchvo.pkind}">
		                <c:set var="pageUrl" value="${pageUrl}&pkind=${searchvo.pkind}" />
		            </c:if>
		
		            <li class="page-item ${page == currentPage ? 'active' : ''}">
		                <a class="page-link" href="${pageUrl}">${page}</a>
		            </li>
		        </c:forEach>
		
		        <!-- 다음 화살표 -->
		        <c:if test="${currentPage < maxpage}">
		            <c:set var="nextUrl" value="?page=${currentPage + 1}" />
		            <c:if test="${not empty searchvo.pkind}">
		                <c:set var="nextUrl" value="${nextUrl}&pkind=${searchvo.pkind}" />
		            </c:if>
		            <li class="page-item">
		                <a class="page-link" href="${nextUrl}" aria-label="Next">
		                    <span aria-hidden="true">&raquo;</span>
		                </a>
		            </li>
		        </c:if>
		    </ul>
		</nav>
		<!-- pagination end -->
		
      </div>
    </div>
    <!-- main section end-->
  </body>
</html>
