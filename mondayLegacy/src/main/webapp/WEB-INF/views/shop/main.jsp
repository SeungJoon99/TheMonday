<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<div class="untree_co-section product-section before-footer-section">
    <div class="container">
        <div class="">
            <h2>상품 보기</h2>
            <span>&nbsp;&nbsp;</span>
        </div>
        <div class="row mt-3">
	
		<!-- 상품 출력 -->			
		<c:forEach var="item" items="${main}">
			<div class="col-12 col-md-4 col-lg-3 mb-5">
				<a class="product-item" href="${pageContext.request.contextPath}/shop/product_detail?pno=${item.pno}">
					<img src="${pageContext.request.contextPath}/resources/images/${ item.pimg }" 
						class="img-fluid product-thumbnail" style="width:300px; height:400px">
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

<%@ include file="./include/footer.jsp" %>
