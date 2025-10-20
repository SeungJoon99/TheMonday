<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

		
<div class="untree_co-section product-section before-footer-section">
<div class="container">
  <div class="">
    <h2>"${keyword}"에 대한 검색 결과</h2>
    <p class="mb-4">
	    <c:if test="${empty Search or fn:trim(keyword) == ''}">
	    	<p>검색 결과가 없습니다.</p>
		</c:if>
      	<c:if test="${not empty Search and fn:trim(keyword) != ''}">
     		" ${keyword} "과(와) 관련된 검색입니다.
      	</c:if>
    </p>
    <span>&nbsp;&nbsp;</span>
  </div>
  <div class="row mt-3">
		<!-- 상품 출력 -->			
		<c:forEach var="item" items="${Search}">
			<div class="col-12 col-md-4 col-lg-3 mb-5">
				<a class="product-item" href="product_detail?pno=${item.pno}">
					<img src="${pageContext.request.contextPath}/resources/images/${ item.pimg }" class="img-fluid product-thumbnail">
					<h3 class="product-title">${item.pname}</h3>
					<strong class="product-price">${item.pprice}</strong>
					<span class="icon-cross">
						<img src="${pageContext.request.contextPath}/resources/images/cross.svg" class="img-fluid">
					</span>
				</a>
			</div> 
		</c:forEach>
	</div>
	
	<nav aria-label="Page navigation example">
	    <ul class="pagination justify-content-center">
	        <li class="page-item">
	            <a class="page-link" href="#" aria-label="Previous">
	            <span aria-hidden="true">&laquo;</span>
	            </a>
	        </li>
	        <li class="page-item"><a class="page-link" href="#">1</a></li>
	        <li class="page-item"><a class="page-link" href="#">2</a></li>
	        <li class="page-item"><a class="page-link" href="#">3</a></li>
	        <li class="page-item"><a class="page-link" href="#">4</a></li>
	        <li class="page-item"><a class="page-link" href="#">5</a></li>
	        <li class="page-item"><a class="page-link" href="#">6</a></li>
	        <li class="page-item"><a class="page-link" href="#">7</a></li>
	        <li class="page-item"><a class="page-link" href="#">8</a></li>
	        <li class="page-item"><a class="page-link" href="#">9</a></li>
	        <li class="page-item"><a class="page-link" href="#">10</a></li>
	        <li class="page-item">
	            <a class="page-link" href="#" aria-label="Next">
	            <span aria-hidden="true">&raquo;</span>
	            </a>
	        </li>
	    </ul>
	</nav>

		<%@ include file="./include/footer.jsp" %>
