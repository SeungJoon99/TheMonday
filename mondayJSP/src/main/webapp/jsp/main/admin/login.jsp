<%@ include file="./include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
		<div class="container mt-3 ">
			<div class="d-flex row justify-content-center">
				<div class="col-md-8 col-lg-8 pb-4">
					<div class="row mb-5">
						<form>	
							<div class="row justify-content-center">
								<div class="col-6">
									<label class="text-black" for="fname">아이디</label>
									<input type="email" class="form-control" id="id">
								</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-6">
									<label class="text-black" for="email">비밀번호</label>
									<input type="password" class="form-control" id="pw">
								</div>
							</div>
							<div class="row mt-3 rounded justify-content-center" role="alert">
								<div class="col-6">
									<button type="button" class="btn btn-primary btn-sm justify-content-center" onclick="window.location='./list.jsp'">로그인하기</button>&nbsp;&nbsp;
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<!-- End Contact Form -->

		<script src="../js/bootstrap.bundle.min.js"></script>
		<script src="../js/tiny-slider.js"></script>
		<script src="../js/custom.js"></script>
	</body>

</html>
