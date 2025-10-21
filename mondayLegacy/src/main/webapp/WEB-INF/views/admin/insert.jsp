<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="container" style="margin-top: 10px;">
		<%-- <form name="insert" method="post" action="/TheMonday/admin/insert" enctype="multipart/form-data" onsubmit="return productInsert()">
		<form name="insert" method="post" action="${pageScope.request.contextPath}/admin/insert" enctype="multipart/form-data" onsubmit="return productInsert()"> --%>
		<form name="insert" method="post" action="<c:url value="/admin/insert" />" enctype="multipart/form-data" onsubmit="return productInsert()">
			<div class="input-group mb-3">
				<span class="input-group-text">상품명</span>
				<input type="text" id="pname" name="pname" class="form-control" placeholder="상품명을 입력하세요" aria-label="상품명">
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">가격</span>
				<input type="number" id="pprice" name="pprice" class="form-control" placeholder="가격" aria-label="가격">
			</div>
			
			<div class="input-group mb-3 form-check-inline">
				<span class="input-group-text">카테고리</span>
				<select id="pkind" name="pkind">
					<option value="err">카테고리를 선택하세요</option>
					<option>침대</option>
					<option>소파</option>
					<option>옷장</option>
					<option>매트리스</option>
					<option>테이블</option>
				</select>
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">상품설명</span>
				<textarea id="pinfo" name="pinfo" class="form-control" aria-label="With textarea"></textarea>
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">사진 첨부하기</span>
				<input type="file" accept="image/*" id="pimg" name="img" class="form-control" style="height: 100%;">
			</div>
			
			<button type="submit" class="btn btn-primary">등록하기</button>
		</form>
	</div>
</body>
</html>

<script>
	window.onload = function(){
		$("#pname").focus();
	}

	function productInsert(){
		if($("#pname").val() == ""){
			alert("상품명을 입력하세요.");
			$("#pname").focus();
			return false;
		}
		console.log($("#pkind").val());
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

		return confirm("등록하시겠습니까?");
	}
</script>
