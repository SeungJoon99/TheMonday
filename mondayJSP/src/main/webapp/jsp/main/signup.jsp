<!-- /*
* Bootstrap 5
* Template Name: Furni
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="./favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

		<!-- Bootstrap CSS -->
		<link href="../css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
		<link href="../css/tiny-slider.css" rel="stylesheet">
		<link href="../css/style.css" rel="stylesheet">
		<title>Furni Free Bootstrap 5 Template for Furniture and Interior Design Websites by Untree.co </title>
 	<!-- Daum 주소 API 스크립트
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	function sample6_execDaumPostcode() {
		new daum.Postcode({
		oncomplete: function(data) {
			// 선택된 주소 넣기
			document.getElementById("sample6_postcode").value = data.zonecode;
			document.getElementById("sample6_address").value = data.roadAddress || data.jibunAddress;
			document.getElementById("sample6_detailAddress").focus();
		}
		}).open();
	} -->
	</script>
</head>

<body>

	<!-- Start Header/Navigation -->
	<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
		<div class="container">
			<a class="navbar-brand" href="./index.html">The Monday<span>.</span></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<div class="col-1"></div>
				<form class="search-box" action="shop/search.html">
					<input class="form-control" type="search" placeholder="Search" aria-label="Search">
					<button class="btn" type="submit">
					<i class="fas fa-search"></i>
					</button>
				</form>
		
				<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
					<li><a class="nav-link" href="./member/mypage.html">[홍길동]님</a></li>
					<li><a class="nav-link" href="./shop/main.html">상품 보기</a></li>
					<li><a class="nav-link" href="./login.html">로그인</a></li>
					<li><a class="nav-link" href="./member/cart.html">장바구니</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Start Hero -->
	<div class="hero" style="padding-bottom: 0px;">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="intro-excerpt">
					</div>
				</div>
			</div>
		</div>

		
	</div>
	<!-- End Hero -->

	<div class="untree_co-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-12">
					<div class="border p-4 rounded" role="alert">
					이미 아이디가 있으신가요? <a href="./login.html">이곳</a>에서 로그인하세요.
					</div>
				</div>
			</div>

			<div class="row ">
				<div class="col-md-12">
					<h2 class="h3 mb-3 text-black">회원 정보 입력</h2>
					<div class="p-3 p-lg-5 border bg-white">
						<div class="form-group row align-items-end">
							<div class="col-md-6">
								<label for="u_email" class="text-black">이메일 주소 <span class="text-danger">*</span></label>
								<div class="input-group">
									<input type="text" class="form-control" id="u_email" name="u_email" placeholder="example@DTeam.com"><button type="button" class="btn btn-primary btn-sm onclick='send_email()'">메일발송</button>
								</div>
							</div>
							<div class="col-md-6">
								<label for="u_email_auth" class="text-black">인증번호 <span class="text-danger">*</span></label>
								<div class="input-group">
									<input type="text" class="form-control" id="u_email_auth" name="u_email_auth" placeholder="인증번호 입력"><button type="button" class="btn btn-primary btn-sm onclick='email_authentication()'">인증</button>
								</div>
							</div>
						</div>

						<div class="form-group row">
							<div class="col-md-6">
								<label for="u_pw" class="text-black">비밀번호 <span class="text-danger">*</span></label>
								<input type="text" class="form-control" id="u_pw" name="u_pw">
							</div>
							<div class="col-md-6">
								<label for="u_pw_cheack" class="text-black">비밀번호 확인 <span class="text-danger">*</span></label>
								<input type="text" class="form-control" id="u_pw_cheack" name="u_pw_cheack">
							</div>
						</div>

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

						<div class="form-group row mb-3">
							<div class="col-md-6">
								<label for="u_nick" class="text-black">닉네임 <span class="text-danger">*</span></label>
								<input type="text" class="form-control" id="u_nick" name="u_nick">
							</div>
						</div>


						<div class="form-group row mt-3">
							<label for="c_address" class="text-black">배송지 <span class="text-danger">*</span></label>
							<div class="input-group">
								<input type="text" name="memberPostcode" placeholder="우편번호" maxlength="6" id="memberPostcode" class="form-control">
								<button type="button" class="btn btn-primary btn-sm" onclick="member_execDaumPostcode()">검색</button>
							</div>
							<div class="signUp-input-area mt-3 ">
								<input type="text" name="memberAddress" placeholder="도로명/지번 주소" id="memberAddress" class="form-control">
							</div>
							<div class="signUp-input-area mt-3 ">
								<input type="text" name="memberDetailAddress" placeholder="상세 주소" id="memberDetailAddress" class="form-control">
							</div>
						</div>

						<div class="form-group py-3">
							<button class="btn btn-black btn-lg py-3 btn-block" onclick="window.location='login.html'">회원가입</button>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- Start Footer Section -->
	<footer class="footer-section">
		<!-- Start navtap Section -->
		<div class="row bg-dark">
			<div class="col-2"></div>
			<div class="col-10" style="border: none;">
				<ul class="nav nav-tabs bg-dark">
					<li class="nav-item">
						<a class="nav-link" href="./about.html">팀 소개</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="./help/board.html">고객센터</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- End navtap Section -->
		<div class="container relative">
			<div class="row mb-1">
				<div class="col-lg-2"></div>
				<div class="col-lg-2">
					<div class="row links-wrap">
						<div class="mt-3 footer-logo-wrap">
							<a href="#" class="footer-logo">The Monday<span>.</span></a>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="row links-wrap">
						<div class="col-8">
							<p class="">상호명 : 이젠 가구  /  대표 : 이승준  /  전화 : 1111-1111  /  팩스 : 063-111-1111 <br> 주소 : 전북 전주시 덕진구  /  사업자등록번호 : 000-00-00000<br>통신판매업신고 : 2025-ㅁㅁㅁㅁ-1111  / 메일 : ezenDteam@gmail.com</p>
						</div>
					</div>
				</div>
				<div class="col-lg-2"></div>
				<div class="col-lg-4">
					<ul class="list-unstyled custom-social">
							<li><a href="#"><span class="fa fa-brands fa-facebook-f"></span></a></li>
							<li><a href="#"><span class="fa fa-brands fa-twitter"></span></a></li>
							<li><a href="#"><span class="fa fa-brands fa-instagram"></span></a></li>
							<li><a href="#"><span class="fa fa-brands fa-youtube"></span></a></li>
					</ul>
				</div>
			</div>

			<div class="copyright">
				<div class="row ">
					<div class="col-lg-2"></div>
					<div class="col-lg-6">
						<p class="mb-2 text-center text-lg-start">&copy;
							<script>document.write(new Date().getFullYear());</script>. 
								이젠 가구 Co. all rights reserved.
							<!-- License information: https://untree.co/license/ -->
						</p>
					</div>
				</div>
			</div>
			
		</div>
	</footer>
	<!-- End Footer Section -->	


	<script src="../js/bootstrap.bundle.min.js"></script>
	<script src="../js/tiny-slider.js"></script>
	<script src="../js/custom.js"></script>
</body>

</html>
