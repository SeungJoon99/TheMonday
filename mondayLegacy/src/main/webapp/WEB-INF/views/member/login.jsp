<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<!-- Start Contact Form -->

<div class="container mt-3">
  <div class="row justify-content-center">
    <div class="col-md-8 col-lg-8 pb-4">
      <div class="row mb-5">
        <form>  
          <div class="row">
            <div class="col-6">
              <label class="text-black" for="fname">이메일</label>
              <input type="email" class="form-control" id="id">
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-6">
              <label class="text-black" for="email">비밀번호</label>
              <input type="password" class="form-control" id="pw">
            </div>
          </div>
          <div class="mt-3 border p-4 rounded" role="alert">
            <button type="button" class="btn btn-primary btn-sm" onclick="window.location='index'">로그인하기</button>&nbsp;&nbsp;
            아이디가 없으시다면? <a href="member/signup">회원가입</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- End Contact Form -->

<%@ include file="./include/footer.jsp" %>
