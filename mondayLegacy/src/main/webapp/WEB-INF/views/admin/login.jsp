<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
		<div class="container mt-3 ">
			<div class="d-flex row justify-content-center">
				<div class="col-md-8 col-lg-8 pb-4">
					<div class="row mb-5">
						<form id="adminLoginForm" method="post" action="/login" onsubmit="return adminLogin()">
							<div class="row justify-content-center">
								<div class="col-6">
									<label class="text-black" for="fname">아이디</label>
									<input type="text" class="form-control" id="unick" name="unick">
								</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-6">
									<label class="text-black" for="email">비밀번호</label>
									<input type="password" class="form-control" id="upw" name="upw">
								</div>
							</div>
							<div class="row mt-3 rounded justify-content-center" role="alert">
								<div class="col-6">
									<button type="submit" class="btn btn-primary btn-sm justify-content-center">로그인하기</>&nbsp;&nbsp;
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<!-- End Contact Form -->

		<script src="resources/js/bootstrap.bundle.min.js"></script>
		<script src="resources/js/tiny-slider.js"></script>
		<script src="resources/js/custom.js"></script>
		<script>
			window.onload = function(){
				$("#unick").focus();
				
				//$("#btnLogin").click(adminLogin());
			}

			function adminLogin(){
				if($("#unick").val() == ""){
					alert("아이디를 입력하세요.");
					$("#unick").focus();
					return false;
				}
				if($("#upw").val() == ""){
					alert("비밀번호를 입력하세요.");
					$("#upw").focus();
					return false;
				}
				return true;
			}
		</script>
	</body>

</html>
