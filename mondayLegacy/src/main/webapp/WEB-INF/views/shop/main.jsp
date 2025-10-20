<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<div class="untree_co-section product-section before-footer-section">
    <div class="container">
        <div class="">
            <h2>상품 보기</h2>
            <span>&nbsp;&nbsp;</span>
        </div>
        <div class="d-flex justify-content-end">
            <input class="" type="radio" name="sortOptions" id="sort1" value="option1" checked>
            <label class="form-check-label" for="sort1">판매순</label> |
            <input class="" type="radio" name="sortOptions" id="sort2" value="option2">
            <label class="form-check-label" for="sort2">인기순</label> |
            <input class="" type="radio" name="sortOptions" id="sort3" value="option3">
            <label class="form-check-label" for="sort3">신뢰순</label>
        </div>

        <div class="row mt-3">
	
		<!-- 상품 출력 -->			
		<c:forEach var="item" items="${main}">
			<div class="col-12 col-md-4 col-lg-3 mb-5">
				<a class="product-item" href="product_detail?no=${item.pno}">
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
