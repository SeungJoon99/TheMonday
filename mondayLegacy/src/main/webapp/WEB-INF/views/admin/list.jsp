<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 검색/필터링 section -->
    <form name="searchForm" action="<c:url value='/admin' />" onsubmit="return searchSubmit()">
	    <div class="container">
			<input type="date" id="beginDate" name="begindate" >부터
			<input type="date" id="endDate" name="enddate" >까지
			<select id="toggleDisplay" name="toggledisplay">
				<option value="">전체</option>
				<option value="Y">진열중</option>
				<option value="N">진열중지</option>
			</select>
			<select id="pkind" name="pkind">
				<option value="">전체</option>
				<option value="침대">침대</option>
				<option value="소파">소파</option>
				<option value="옷장">옷장</option>
				<option value="매트리스">매트리스</option>
				<option value="테이블">테이블</option>
			</select>
			<input type="text" placeholder="상품명을 입력하세요." id="keyword" name="keyword">
			<button type="submit" id="productSearchBtn">검색</button>
		</div>
	</form>
	<!-- 검색/필터링 section end -->
	
	<!-- main section -->
    <div class="container">
      <div class="row pb-5 box">
        <table class="table table-hover table-bordered border-dark" style="text-align: right; padding: 0;">
          <thead>
            <tr>
              <th style="width: 3%; text-align: center;"><input type="checkbox" id="selectAll"></th>
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
	            <tr>
	            
	              <!-- 진열 체크박스 -->
	              <th><input type="checkbox" id="${ item.pno }" name="check"></th>
	              
	              <!-- 번호 -->
	              <th scope="row">${ item.pno }</th>
	              
	              <!-- 이미지 -->
	              <td><a href="<c:url value="/shop/product_detail?pno=${item.pno}" />">
	              		<img src="<c:url value="/resources/images/${item.ppimgname}" />" alt="이미지" style="height: 30px;">
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
	                <a href="<c:url value='/admin/update?pno=${item.pno}' />"><button type="button" class="btn-sm btn-primary" style="border: none;">수정하기</button></a>
	                <button type="button" id="deleteButton" class="btn-sm btn-danger" onclick="productDelete(${ item.pno });">삭제하기</button>
	              </td>
	              
	            </tr>
            </c:forEach>
          </tbody>
          <!-- 상품 목록 표시 끝 -->
          
        </table>
        
        <div class="d-flex justify-content-end">
          <button type="button" onclick="settingProducts('display')">일괄진열</button>&nbsp;
          <button type="button" onclick="settingProducts('stop')">판매중지</button>
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
<script>

	//최상위루트
	const contextPath = '${pageContext.request.contextPath}';
	
	// 'selectAll' 체크박스 클릭 시 모든 체크박스를 선택/해제
	window.onload = function(){
		// #selectAll == 헤더박스
		$("#selectAll").click(function() {
			// .prop("checked")는 체크여부를 boolean으로 반환
			let isChecked = $(this).prop("checked");  // 체크 여부 변수에 저장
			// 모든 체크박스에 체크상태 대입
			$("input[name='check']").prop("checked", isChecked);
		});
		
		//전체 체크박스 중 체크박스 하나를 풀었을때 "전체" 체크해제
		$("input[name='check']").click(function(){
			if($("input[name='check']:checked").length == $("input[name='check']").length){
				$("#selectAll").prop("checked",true);
			}else{
				$("#selectAll").prop("checked",false);
			}
		});
	}

	//AJAX 상품 삭제 함수
	function productDelete(pno){
		if(!confirm("상품을 삭제하시겠습니까?")){
			return;	
		}
		
		$.ajax({
			url : contextPath + "/admin/delete?pno=" + pno,
			type: "POST",
			dataType: "html",
			success : function(res){
				res = res.trim();
				if (res == "ok") {
					document.location.reload();
                } else if (res == "fail") {
                    alert("상품 삭제에 실패했습니다. 다시 시도해 주세요.");
                } else {
                    alert("알 수 없는 응답: " + res);
                }
			},
			
			error : function(xhr, status, error){
				alert("오류가 발생했습니다: " + error);
                console.error("AJAX Error:", status, error);
			},
			
			beforeSend: function() {
                // 삭제 요청 전에 버튼 비활성화 처리
                $('#deleteButton').prop('disabled', true).text('삭제하기');
            },
            complete: function() {
                // 요청 완료 후 버튼 상태 복구
                $('#deleteButton').prop('disabled', false).text('삭제하기');
            }
		
		});	
	}
	
	// 체크된 상품 배열로 변환
	function getCheckedPnos() {
		let checkedPnos = [];
		$("input[name='check']:checked").each(function() {
			checkedPnos.push($(this).attr("id"));  // 체크된 체크박스의 pno 배열에 추가
		});
		return checkedPnos;
	}

	// 일괄 진열/판매중지 함수
	function settingProducts() {
		let checkedPnos = getCheckedPnos();
		
		if (checkedPnos.length == 0) {
			alert("선택된 상품이 없습니다.");
			return;
		}
		// consol.log(checkedPnos.join(", "));

		// AJAX 요청으로 일괄 진열/판매중지 처리
		$.ajax({
			url: contextPath + '/admin/bulkAction',
			type: 'POST',
			data: {
				pnos: checkedPnos,	// pno 배열을 전송
				action: action      // 작업 유형('display' 또는 'stop')을 전송
			 },
			dataType: 'json',
			success: function(res) {
				if (res.status == '#') {
					alert("일괄 처리되었습니다.");
					document.location.reload();
				} else {
					alert("작업 실패: " + res.message);
				}
			},
			error: function(xhr, status, error) {
				alert("오류가 발생했습니다: " + error);
			}
		});
	}
	
	function searchSubmit(){
		if ( $('#begindate').val() == '' ){
			$('#begindate').val('2025-10-01');
		}
		if ( $('#enddate').val() == '' ){
			$('#enddate').val('2026-12-31');
		}
		return true;
	}
</script>