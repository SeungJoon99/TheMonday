<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<!-- 회원가입 폼 시작 -->

<div class="untree_co-section">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md-12">
        <div class="border p-4 rounded" role="alert">
          이미 아이디가 있으신가요? <a href="./login.jsp">이곳</a>에서 로그인하세요.
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <h2 class="h3 mb-3 text-black">회원 정보 입력</h2>
        <div class="p-3 p-lg-5 border bg-white">

          <!-- 이메일 인증 -->
          <div class="form-group row align-items-end">
            <div class="col-md-6">
              <label for="u_email" class="text-black">이메일 주소 <span class="text-danger">*</span></label>
              <div class="input-group">
                <input type="text" class="form-control" id="u_email" name="u_email" placeholder="example@DTeam.com">
                <button type="button" class="btn btn-primary btn-sm" onclick="send_email()">메일발송</button>
              </div>
            </div>
            <div class="col-md-6">
              <label for="u_email_auth" class="text-black">인증번호 <span class="text-danger">*</span></label>
              <div class="input-group">
                <input type="text" class="form-control" id="u_email_auth" name="u_email_auth" placeholder="인증번호 입력">
                <button type="button" class="btn btn-primary btn-sm" onclick="email_authentication()">인증</button>
              </div>
            </div>
          </div>

          <!-- 비밀번호 -->
          <div class="form-group row">
            <div class="col-md-6">
              <label for="u_pw" class="text-black">비밀번호 <span class="text-danger">*</span></label>
              <input type="password" class="form-control" id="u_pw" name="u_pw">
            </div>
            <div class="col-md-6">
              <label for="u_pw_check" class="text-black">비밀번호 확인 <span class="text-danger">*</span></label>
              <input type="password" class="form-control" id="u_pw_check" name="u_pw_check">
            </div>
          </div>

          <!-- 이름 / 전화번호 -->
          <div class="form-group row mb-3">
            <div class="col-md-6">
              <label for="u_name" class="text-black">성명 <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="u_name" name="u_name">
            </div>
            <div class="col-md-6">
              <label for="u_hp" class="text-black">전화번호 <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="u_hp" name="u_hp" placeholder="Phone Number">
            </div>
          </div>

          <!-- 닉네임 -->
          <div class="form-group row mb-3">
            <div class="col-md-6">
              <label for="u_nick" class="text-black">닉네임 <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="u_nick" name="u_nick">
            </div>
          </div>

          <!-- 주소 입력 -->
          <div class="form-group row mt-3">
            <label for="c_address" class="text-black">배송지 <span class="text-danger">*</span></label>
            <div class="input-group">
              <input type="text" name="memberPostcode" placeholder="우편번호" maxlength="6" id="memberPostcode" class="form-control">
              <button type="button" class="btn btn-primary btn-sm" onclick="member_execDaumPostcode()">검색</button>
            </div>
            <div class="signUp-input-area mt-3">
              <input type="text" name="memberAddress" placeholder="도로명/지번 주소" id="memberAddress" class="form-control">
            </div>
            <div class="signUp-input-area mt-3">
              <input type="text" name="memberDetailAddress" placeholder="상세 주소" id="memberDetailAddress" class="form-control">
            </div>
          </div>

          <!-- 가입 버튼 -->
          <div class="form-group py-3">
            <button class="btn btn-black btn-lg py-3 btn-block" onclick="window.location='login.jsp'">회원가입</button>
          </div>

        </div>
      </div>
    </div>

  </div>
</div>

<%@ include file="./include/footer.jsp" %>
