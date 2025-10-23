<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
  	<input type="date">부터
	<input type="date">까지
	<input type="number" placeholder="상품코드를 입력하세요.">
	<select>
		<option>주문 접수</option>
		<option>주문 취소</option>
		<option>배송 대기중</option>
		<option>배송 중</option>
		<option>배송 완료</option>
		<option>환불</option>
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
          <tr onclick = "popup(${item.ono})" target = "_blank" style="cursor: pointer;">
            <th>${item.ono}</th>
            <th>${item.pname}</th>
            <th>${item.ototal}</th>
            <th>${item.odate}</th>
            <th>${item.svalue}</th>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    
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
<script>
    const contextPath = '${pageContext.request.contextPath}';
    function popup(ono){
      var url = contextPath + "/admin/orderSet?ono=" + ono;
      var name = "order";
      var option = "width=600,height=500,top=100,left=200";
      window.open(url, name, option);
    }
</script>
</body>
</html>
