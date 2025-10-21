<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<div class="untree_co-section product-section before-footer-section">
    <div class="container">
        <div class="col-md-12 col-lg-3 mb-5 mb-lg-0">
		  <h2 class="mb-4 section-title">상품보기</h2>
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
	
<%@ include file="./include/pagination.jsp" %>
<%@ include file="./include/footer.jsp" %>
