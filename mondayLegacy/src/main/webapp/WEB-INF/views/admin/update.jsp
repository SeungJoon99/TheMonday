<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="container" style="margin-top: 10px;">
		<%-- <form name="insert" method="post" action="/TheMonday/admin/insert" enctype="multipart/form-data" onsubmit="return productInsert()">
		<form name="insert" method="post" action="${pageScope.request.contextPath}/admin/insert" enctype="multipart/form-data" onsubmit="return productInsert()"> --%>
		<form name="update" method="post" action="<c:url value="/admin/update" />" enctype="multipart/form-data" onsubmit="return productUpdate()">
			<div class="input-group mb-3">
				<span class="input-group-text">상품명</span>
				<input type="text" id="pname" name="pname" class="form-control" value="${ item.pname }" placeholder="상품명을 입력하세요" aria-label="상품명">
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">가격</span>
				<input type="number" id="pprice" name="pprice" class="form-control" value="${ item.pprice }" placeholder="가격" aria-label="가격">
			</div>
			
			<c:set var="pkind" value="${ item.pkind }" />
			<div class="input-group mb-3 form-check-inline">
				<span class="input-group-text">카테고리</span>
				<select id="pkind" name="pkind">
					<option value="err" <c:if test="${ empty pkind or pkind == 'err'}">selected</c:if>>카테고리를 선택하세요</option>
					<option value="침대" <c:if test="${ pkind eq '침대' }">selected</c:if>>침대</option>
					<option value="소파" <c:if test="${ pkind eq '소파' }">selected</c:if>>소파</option>
					<option value="옷장" <c:if test="${ pkind eq '옷장' }">selected</c:if>>옷장</option>
					<option value="매트리스" <c:if test="${ pkind eq '매트리스' }">selected</c:if>>매트리스</option>
					<option value="테이블" <c:if test="${ pkind eq '테이블' }">selected</c:if>>테이블</option>
				</select>
			</div>
			
			<c:set var="pdisplay" value="${ item.pdisplay }" />
			<div class="input-group mb-3">
		        <span class="input-group-text">진열 여부</span>
		        <label>진열 <input type="radio" <c:if test="${ pdisplay eq 'Y' }">checked</c:if> name="pdisplay" value="Y"></label>&nbsp;
		        <label>진열 안함 <input type="radio" <c:if test="${ empty pdisplay or pdisplay eq 'N' }">checked</c:if> name="pdisplay" value="N"></label>
		    </div>
      
			<div class="input-group mb-3">
				<span class="input-group-text">상품설명</span>
				<textarea id="pinfo" name="pinfo" class="form-control" aria-label="With textarea">${ item.pinfo }</textarea>
			</div>
			
			<div class="input-group mb-3">
				<label class="input-group text-black mb-3 realfile">
					<button type="button" id="attachbutton" class="input-group-text realfile">사진 첨부하기</button>
					<input type="text" id="ppimgname" name="pfimgname" class="input-group form-control" style="height: 100%; background-color: white;" value="${ item.pfimgname }" readonly>
					<input type="file" accept="image/*" id="realfile" name="img" class="realfile" style="display: none">
				</label>
				<c:choose>
					<c:when test="${ item.ppimgname != null and !item.ppimgname.equals('') }">
						<img src="<c:url value="/resources/images/${ item.ppimgname }" />" style="height: 500px">
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</div>
			
			<input type="hidden" name="pno" value="${item.pno}" />
			<input type="hidden" name="ppimgname" value="${ item.ppimgname }">			
			<button type="submit" class="btn btn-primary mb-3" style="border-radius: 3px; border: none;">수정완료</button>
			<button type="button" id="deleteButton" class="btn btn-danger mb-3" onclick="return productDelete(${ item.pno });">상품삭제</button>
		</form>

	</div>
</body>
</html>

<script>

	//최상위루트
	const contextPath = '${pageContext.request.contextPath}';

	window.onload = function(){
		// 포커스
		$("#pname").focus();
		
		let pfimgname = '${ item.pfimgname }';
		// "사진 첨부하기" 버튼 클릭 이벤트 처리
	    $('#attachbutton, #ppimgname').on('click', function(){
	        $('#realfile').trigger('click');
	    });
		
		// 파일 선택 완료
	    $('#realfile').on('change', function(){
            const file = this.files;
            
            if (file.length > 0){
                // 파일 이름을 텍스트 필드에 설정
                $('#ppimgname').val(file[0].name);
            } else {
                // 파일 선택 취소 시, 초기값(pfimgname)으로 되돌림
                $('#ppimgname').val(pfimgname);
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
					document.location.href = contextPath + "/admin";
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

	// 상품 수정 유효성 검사
	function productUpdate(){
		if($("#pname").val() == ""){
			alert("상품명을 입력하세요.");
			$("#pname").focus();
			return false;
		}
		if($("#pprice").val() == ""){
			alert("가격을 입력하세요.");
			$("#pprice").focus();
			return false;
		}
		if($("#pkind").val() == "err" || $("#pkind").val() == "" ){
			alert("카테고리를 선택하세요.");
			$("#pkind").focus();
			return false;
		}
		if($("#pinfo").val().trim() == ""){
			alert("상품설명을 입력하세요.");
			$("#pinfo").focus();
			return false;
		}
	
		return confirm("수정하시겠습니까?");
	}
	
</script>
