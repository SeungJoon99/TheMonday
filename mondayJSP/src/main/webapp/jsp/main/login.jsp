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
		<title>로그인</title>
		<style>
			.form-group{
				width: 400px;
			}
		</style>
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
						<li class="active" aria-current="page" >
							<a class="nav-link" href="./login.html">로그인</a>
						</li>
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

			<!-- Start navtap Section -->
			<div class="row bg-dark" style="border: none;">
				<div class="col-2"></div>
				<ul class="col-8 nav nav-tabs bg-dark">
				<li class="nav-item">
					<a class="nav-link" href="./shop/main.html">침대</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./shop/main.html">소파</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./shop/main.html">옷장</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./shop/main.html">매트리스</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="./shop/main.html">다이닝</a>
				</li>
					<div class="col-2"></div>
			</div>
			<!-- End navtap Section -->
		</div>
		<!-- End Hero -->

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
							<div class="row">
								<div class="col-6">
									<label class="text-black" for="email">비밀번호</label>
									<input type="password" class="form-control" id="pw">
								</div>
								</div>
							<div class="mt-3 border p-4 rounded" role="alert">
								<button type="button" class="btn btn-primary btn-sm" onclick="window.location='index.html'">로그인하기</button>&nbsp;&nbsp;
								아이디가 없으시다면? <a href="signup.html">회원가입</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<!-- End Contact Form -->

		<!-- Start Footer Section -->
		<footer class="footer-section">
			<!-- Start navtap Section -->
			<div class="row bg-dark">
				<div class="col-2"></div>
				<div class="col-10" style="border: none;">
					<ul class="nav nav-tabs bg-dark">
						<li class="nav-item">
							<a class="nav-link" href="about.html">팀 소개</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="help/board.html">고객센터</a>
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
								<li><a href="#"><span class="fa fa-brands fa-linkedin"></span></a></li>
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
