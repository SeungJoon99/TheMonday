<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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