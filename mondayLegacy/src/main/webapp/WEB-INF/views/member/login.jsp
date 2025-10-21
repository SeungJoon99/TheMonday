<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>
<script>
	window.onload = function()
	{
		$("#uemail").val("유재욱@naver.com");
		$("#upw").val("ezen");
		
		$("#uemail").focus();
		
		$("#btnLogin").click(function(){
			DoLogin();
		});
	}
	
	function DoLogin()
	{
		if($("#uemail").val() == "")
		{
			alert("아이디를 입력하세요");
			$("#uemail").focus();
			return;
		}	
		
		if($("#upw").val() == "")
		{
			alert("비밀번호를 입력하세요");
			$("#upw").focus();
			return;
		}		
		$.ajax({
			url: "${pageContext.request.contextPath}/member/loginok",
			type: "post",
			data :
			{
				id : $("#uemail").val(),
				pw : $("#upw").val()
			},
			dataType: "html",
			success : function(res)
			{
				res = res.trim();
				if(res == "true")
				{
					//로그인 성공
					alert("로그인 성공하였습니다.");
					document.location = "${pageContext.request.contextPath}";
				}else
				{
					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				}
			}
		});		
	}
</script>

<!-- Start Contact Form -->

<div class="container mt-3">
  <div class="row justify-content-center">
    <div class="col-md-8 col-lg-8 pb-4">
      <div class="row mb-5">
          <div class="row">
            <div class="col-6">
              <label class="text-black" for="uemail">이메일</label>
              <input type="email" class="form-control" id="uemail" name="uemail">
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-6">
              <label class="text-black" for="upw">비밀번호</label>
              <input type="password" class="form-control" id="upw" name="upw">
            </div>
          </div>
          <div class="mt-3 border p-4 rounded" role="alert">
            <button type="submit" id="btnLogin" class="btn btn-primary btn-sm">로그인하기</button>&nbsp;&nbsp;
            아이디가 없으시다면? <a href="member/signup">회원가입</a>
          </div>
      </div>
    </div>
  </div>
</div>

<!-- End Contact Form -->

<%@ include file="./include/footer.jsp" %>
