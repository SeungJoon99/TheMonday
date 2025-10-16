<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<div class="untree_co-section before-footer-section">
  <div class="container" style="width: 80%; max-width: 1080px;">
    <div class="row pb-3 box">
      <section class="col-md-12" id="product-add">
        <div class="p-3 p-lg-5 border bg-white box-border">
          <h2 class="h3 mb-3 text-black">문의 등록</h2>

          <form action="" method="post" onclick="confirm('등록하시겠습니까?')">

            <!-- 이메일 -->
            <label class="form-label">이메일</label>
            <div class="input-group mb-3">
              <input name="uEmail" type="text" class="form-control" placeholder="exampleDteam" aria-label="username">
              <span class="input-group-text">@</span>
              <select name="@" id="@" class="form-select">
                <option value="" selected>직접입력</option>
                <option value="gmail.com">gmail.com</option>
                <option value="naver.com">naver.com</option>
                <option value="daum.net">daum.net</option>
              </select>
            </div>

            <!-- 제목 -->
            <label class="form-label">제목</label>
            <input name="hTitle" id="hTitle" type="text" class="form-control mb-3" placeholder="제목을 입력해주세요">

            <!-- 문의 유형 -->
            <label class="form-label">문의 유형</label>
            <select name="hKind" id="hKind" class="form-select mb-3">
              <option value="" disabled selected>문의 유형을 선택하세요</option>
              <option value="반품">반품</option>
              <option value="취소">취소</option>
              <option value="질문">질문</option>
              <option value="교환">교환</option>
            </select>

            <!-- 문의 내용 -->
            <label class="form-label">내용</label>
            <div class="input-group-lg mb-4">
              <textarea name="hNote" id="hNote" class="form-control" rows="7" placeholder="자세한 내용을 입력해주세요."></textarea>
            </div>

            <!-- 제출 버튼 -->
            <button type="button" class="btn btn-primary btn-sm" onclick="window.location = 'help/board_detail'">
              문의 보내기
            </button>

          </form>
        </div>
      </section>
    </div>
  </div>
</div>

<%@ include file="./include/footer.jsp" %>
