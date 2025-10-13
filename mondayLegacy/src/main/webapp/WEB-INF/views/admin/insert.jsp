<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="container" style="margin-top: 10px;">
			<form>
				<div class="input-group mb-3">
					<span class="input-group-text">상품명</span>
					<input type="text" class="form-control" placeholder="상품명을 입력하세요" aria-label="상품명">
				</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">가격</span>
				<input type="number" class="form-control" placeholder="가격" aria-label="가격">
			</div>
			
			<div class="input-group mb-3 form-check-inline">
				<span class="input-group-text">카테고리</span>
				<select>
					<option>카테고리를 선택하세요</option>
					<option>침대</option>
					<option>소파</option>
					<option>매트리스</option>
					<option>다이닝</option>
					<option>옷장</option>
				</select>
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">색상</span>
				<select>
					<option>색상을 선택하세요</option>
					<option>검정색</option>
					<option>흰색</option>
					<option>아이보리색</option>
				</select>
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">사이즈</span>
				<select>
					<option>사이즈를 선택하세요</option>
					<option>3인용</option>
					<option>4인용</option>
					<option>5인용</option>
				</select>
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">상품설명</span>
				<textarea class="form-control" aria-label="With textarea"></textarea>
			</div>
			
			<div class="input-group mb-3">
				<span class="input-group-text">사진 첨부하기</span>
				<input type="file" accept="image/*" class="form-control" style="height: 100%;">
			</div>
			
			<button type="button" class="btn btn-primary">등록하기</button>
			</form>
		</div>
	</body>
</html>
