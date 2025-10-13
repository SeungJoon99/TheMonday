<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
  <div class="row pb-5">
    <form>
      <div class="input-group mt-3 mb-3">
        <span class="input-group-text" id="basic-addon1">상품이름</span>
        <input type="text" class="form-control" value="사과" aria-label="Username" aria-describedby="basic-addon1">
      </div>
      <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">가격</span>
        <input type="number" class="form-control" value="10000" aria-label="Username" aria-describedby="basic-addon1">
      </div>
      <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">카테고리</span>
        <select>
          <option>카테고리를 선택하세요</option>
          <option selected>침대</option>
          <option>소파</option>
          <option>쿠션커버</option>
          <option>다리의자</option>
          <option>의자</option>
        </select>
      </div>

      <div class="input-group mb-3">
        <span class="input-group-text" id="basic-addon1">상징</span>
        <select>
          <option>상징을 선택하세요</option>
          <option selected>최강상</option>
          <option>흑상</option>
          <option>에이리블상</option>
        </select>
      </div>

      <div class="input-group mb-3 form-check" style="padding-left: 0px;">
        <span class="input-group-text" id="basic-addon1">사이즈</span>
        <select>
          <option>사이즈를 선택하세요</option>
          <option selected>3인용</option>
          <option>4인용</option>
          <option>5인용</option>
        </select>
      </div>

      <div class="input-group mb-3">
        <span class="input-group-text">판매 여부</span>
        <label>판매 <input type="radio" checked name="display"></label>&nbsp;
        <label>판매 안함 <input type="radio" name="display"></label>
      </div>
      <div class="input-group mb-3">
        <span class="input-group-text">상품 설명</span>
        <textarea class="form-control" aria-label="With textarea"></textarea>
      </div>
      <div class="input-group mb-3">
        <span class="input-group-text">사진 첨부하기</span>
        <input type="file" accept="image/*" class="form-control" style="height: 100%;">
      </div>
      
      <button type="button" class="btn btn-primary">등록하기</button>
    </form>
  </div>
</div>
</body>
</html>
