<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
  	<input type="date" id="beginDate" name="begindate" value="${ not empty searchvo.begindate ? searchvo.begindate : '2025-10-01' }">부터
	<input type="date" id="endDate" name="enddate" value="${ not empty searchvo.enddate ? searchvo.enddate : '2026-12-31' }">까지
	<input type="number" id="pno" name="pno"  value="${ searchvo.pno }" placeholder="상품코드를 입력하세요.">
	<c:set var="scode" value="${ searchvo.scode }" />
	<select id="scode" name="scode">
		<option value="" <c:if test="${ empty scode }">selected</c:if>>전체</option>
		<option value="0" <c:if test="${ scode eq '0' }">selected</c:if>>주문 접수</option>
		<option value="1" <c:if test="${ scode eq '1' }">selected</c:if>>주문 취소</option>
		<option value="2" <c:if test="${ scode eq '2' }">selected</c:if>>배송 대기중</option>
		<option value="3" <c:if test="${ scode eq '3' }">selected</c:if>>배송 중</option>
		<option value="4" <c:if test="${ scode eq '4' }">selected</c:if>>배송 완료</option>
		<option value="5" <c:if test="${ scode eq '5' }">selected</c:if>>환불</option>
	</select>
	<input type="text" placeholder="상품명을 입력하세요." id="keyword" name="keyword" value="${ searchvo.keyword }">
 	<button type="button" id="orderSearchBtn">검색</button>
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
	//최상위루트
    const contextPath = '${pageContext.request.contextPath}';

	$(function() {
	    $("#orderSearchBtn").on("click", function() {
	        searchSubmit();
	    });
	});
	
    //팝업창
    function popup(ono){
      var url = contextPath + "/admin/orderSet?ono=" + ono;
      var name = "order";
      var option = "width=600,height=500,top=100,left=200";
      window.open(url, name, option);
    }
    
 	// 빈 값일 시 문자열 ""  return
	function f_strNullCheck(str){
	    var newStr = str;
	 
	    if(newStr == null || newStr == "" || newStr == undefined || newStr == "undefined") {
	        newStr = "";
	    }
	 
	    return newStr;
	}
	
	function searchSubmit() {
		if ( f_strNullCheck($('#beginDate').val()) == '' ){
			$('#beginDate').val('2025-10-01');
		}
		if ( f_strNullCheck($('#endDate').val()) == '' ){
			$('#endDate').val('2026-12-31');
		}
	    let beginDate = $('#beginDate').val() || '2025-10-01';
	    let endDate = $('#endDate').val() || '2026-12-31';
	    let pno = $('#pno').val();
	    let scode = $('#scode').val();
	    let keyword = $('#keyword').val();

	    // 파라미터 조립
	    
	    let paramsObj = {};
		if(pno) paramsObj.pno = pno;
		if(scode) paramsObj.scode = scode;
		if(keyword) paramsObj.keyword = keyword;
		paramsObj.begindate = beginDate;
		paramsObj.enddate = endDate;
		let params = $.param(paramsObj);	  

	 	// location.href로 이동 (즉, form 없이 GET 요청)
	 	location.href = contextPath + '/orderList?' + params;
	    
	}
</script>
</body>
</html>
