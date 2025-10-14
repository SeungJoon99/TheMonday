<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>
<div class="untree_co-section">
  <div class="container">
    <div class="row">
      <!-- 회원 정보 수정 -->
      <div class="col-md-6 mb-5 mb-md-0">
        <h2 class="h3 mb-3 text-black">회원 정보 수정</h2>
        <div class="p-3 p-lg-5 border bg-white">
          <form action="member/mypage_update" method="post">
            <div class="form-group mb-3">
              <label for="nick" class="text-black">닉네임</label>
              <input type="text" class="form-control" id="nick" name="nick" value="닉네임">
            </div>
            <div class="form-group mb-3">
              <label for="email" class="text-black">이메일</label>
              <div class="input-group">
                <input type="email" class="form-control" id="email" name="email" value="test@dteam.com">
                <button type="button" class="btn btn-primary btn-sm px-3" onclick="send_email()">메일발송</button>
              </div>
            </div>
            <div class="form-group mb-3">
              <div class="input-group">
                <input type="text" class="form-control pe-5" id="u_email_auth" name="u_email_auth" placeholder="인증번호 입력">
                <button type="button" class="btn btn-primary btn-sm" onclick="email_authentication()">인증</button>
              </div>
            </div>
            <div class="form-group mb-3">
              <label for="phone" class="text-black">전화번호</label>
              <input type="text" class="form-control" id="phone" name="phone" value="010-1234-5678">
            </div>

            <div class="col-md-12 mt-3">
              <div class="form-group row">
                <div class="signUp-input-area">
                  <label for="u_address" class="text-black">주소</label>
                  <div class="input-group">
                    <input type="text" name="memberPostcode" placeholder="우편번호" maxlength="6" id="memberPostcode" class="form-control">
                    <button type="button" class="btn btn-primary btn-sm" onclick="member_execDaumPostcode()">검색</button>
                  </div>
                </div>
                <div class="signUp-input-area mt-3">
                  <input type="text" name="memberAddress" placeholder="도로명/지번 주소" id="memberAddress" class="form-control">
                </div>
                <div class="signUp-input-area mt-3">
                  <input type="text" name="memberDetailAddress" placeholder="상세 주소" id="memberDetailAddress" class="form-control">
                </div>
              </div>
            </div>
            <div class="form-group text-end mt-4">
              <button type="button" class="btn btn-black btn-sm" onclick="window.location = 'member/mypage'">정보 수정</button>
            </div>
          </form>
        </div>
      </div>

      <!-- 비밀번호 변경 -->
      <div class="col-md-6">
        <h2 class="h3 mb-3 text-black">비밀번호 변경</h2>
        <div class="p-3 p-lg-5 border bg-white">
          <form action="member/change-password" method="post">
            <div class="form-group mb-3">
              <label for="currentPw" class="text-black">현재 비밀번호</label>
              <input type="password" class="form-control" id="currentPw" name="currentPw">
            </div>
            <div class="form-group mb-3">
              <label for="newPw" class="text-black">새 비밀번호</label>
              <input type="password" class="form-control" id="newPw" name="newPw">
            </div>
            <div class="form-group mb-4">
              <label for="confirmPw" class="text-black">새 비밀번호 확인</label>
              <input type="password" class="form-control" id="confirmPw" name="confirmPw">
            </div>
            <div class="form-group text-end mt-4">
              <button type="button" class="btn btn-black btn-sm" onclick="window.location = 'member/mypage_update'">비밀번호 변경</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </div>
</div>

    <%@ include file="./include/footer.jsp" %>
