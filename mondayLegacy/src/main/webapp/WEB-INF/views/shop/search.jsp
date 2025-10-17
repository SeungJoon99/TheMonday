<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

		
<div class="untree_co-section product-section before-footer-section">
<div class="container">
  <div class="">
    <h2>""에 대한 검색 결과</h2>
    <p class="mb-4">
      " {} "과(와) 관련된 검색입니다.
    </p>
    <span>&nbsp;&nbsp;</span>
  </div>
  <form>
      <div class="d-flex">
        <input type="checkbox" id="searchkind1" name="searchCategory">
        <label class="form-check-label" for="searchkind1">침대</label>|
        <input type="checkbox" id="searchkind2" name="searchCategory">
        <label class="form-check-label" for="searchkind2">소파</label>|
        <input type="checkbox" id="searchkind3" name="searchCategory">
        <label class="form-check-label" for="searchkind3">옷장</label>|
        <input type="checkbox" id="searchkind4" name="searchCategory">
        <label class="form-check-label" for="searchkind4">매트리스</label>|
        <input type="checkbox" id="searchkind5" name="searchCategory">
        <label class="form-check-label" for="searchkind5">테이블</label>
      </div>
    </form>

    <div class="d-flex justify-content-end">
      <input class="" type="radio" name="sortOptions" id="sort1" value="option1" checked>
      <label class="form-check-label" for="sort1">판매순</label> |
      <input class="" type="radio" name="sortOptions" id="sort2" value="option2">
      <label class="form-check-label" for="sort2">인기순</label> |
      <input class="" type="radio" name="sortOptions" id="sort3" value="option3">
      <label class="form-check-label" for="sort3">리뷰순</label>
    </div>

		      	<div class="row mt-3">

                <!-- Start Column 1 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="product_detail">
                        <img src="${pageContext.request.contextPath}/resources/images/product-3.png" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Nordic Chair</h3>
                        <strong class="product-price">$50.00</strong>

                        <span class="icon-cross">
                            <img src="resources/images/cross.svg" class="img-fluid">
                        </span>
                    </a>
                </div> 
                <!-- End Column 1 -->
                    
                <!-- Start Column 2 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="product_detail">
                        <img src="${pageContext.request.contextPath}/resources/images/product-1.png" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Nordic Chair</h3>
                        <strong class="product-price">$50.00</strong>

                        <span class="icon-cross">
                            <img src="resources/images/cross.svg" class="img-fluid">
                        </span>
                    </a>
                </div> 
                <!-- End Column 2 -->

                <!-- Start Column 3 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="product_detail">
                        <img src="${pageContext.request.contextPath}/resources/images/product-2.png" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Kruzo Aero Chair</h3>
                        <strong class="product-price">$78.00</strong>

                        <span class="icon-cross">
                            <img src="resources/images/cross.svg" class="img-fluid">
                        </span>
                    </a>
                </div>
                <!-- End Column 3 -->

                <!-- Start Column 1 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="product_detail">
                        <img src="resources/images/product-3.png" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Nordic Chair</h3>
                        <strong class="product-price">$50.00</strong>

                        <span class="icon-cross">
                            <img src="resources/images/cross.svg" class="img-fluid">
                        </span>
                    </a>
                </div> 
                <!-- End Column 1 -->
		      		
				</div>
		    </div>
		</div>

		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item">
					<a class="page-link" href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					</a>
				</li>
				<li class="page-item"><a class="page-link active" href="#">1</a></li>
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
  </div>
</div>

		<%@ include file="./include/footer.jsp" %>
