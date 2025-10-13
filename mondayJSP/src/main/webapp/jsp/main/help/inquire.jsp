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
    <link rel="shortcut icon" href="../favicon.png">

    <meta name="description" content="" />
    <meta name="keywords" content="bootstrap, bootstrap4" />

    <!-- Bootstrap CSS -->
    <link href="../../css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="../../css/tiny-slider.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <title>문의 페이지</title> 
  </head>
  <body>
   
    <!-- Start Header/Navigation -->
	<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
		<div class="container">
			<a class="navbar-brand" href="../index.html">The Monday<span>.</span></a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsFurni">
				<div class="col-1"></div>
				<form class="search-box" action="../shop/search.html">
					<input class="form-control" type="search" placeholder="Search" aria-label="Search">
					<button class="btn" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</form>
		
				<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                    <li><a class="nav-link" href="../member/mypage.html">[홍길동]님</a></li>
                    <li><a class="nav-link" href="../shop/main.html">상품 보기</a></li>
                    <li><a class="nav-link" href="../login.html">로그인</a></li>
                    <li><a class="nav-link" href="../member/cart.html">장바구니</a></li>
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
					<a class="nav-link" href="../shop/main?kind={ kind }.html">침대</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="../shop/main.html">소파</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="../shop/main.html">옷장</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="../shop/main.html">매트리스</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="../shop/main.html">다이닝</a>
				</li>
			</ul>
			<div class="col-2"></div>
		</div>
		<!-- End navtap Section -->
	</div>
	<!-- End Hero -->

    <div class="untree_co-section before-footer-section">
      <div class="container" style="width: 80%; max-width: 1080px;">
        <div class="row pb-3 box">
          <section class="col-md-12" id="product-add">
          <div class="p-3 p-lg-5 border bg-white box-border">
          <h2 class="h3 mb-3 text-black">문의 등록</h2>
        <form action="#" method="post">
          
          이메일
          <div class="input-group mb-3">
            <input type="text" class="form-control" placeholder="exampleDteam" aria-label="Recipient's username" aria-describedby="basic-addon2">
            <span class="input-group-text" id="basic-addon1">@</span>
            <select class="form-select">
              <option value="" selected>직접입력</option>
              <option value="gmail.com">gmail.com</option>
              <option value="naver.com">naver.com</option>
              <option value="daum.net">daum.net</option>
            </select>
          </div>
		  제목
		  <input type="text" class="form-control" placeholder="제목">
          문의 유형
          <select class="form-select">
            <option value="" disabled selected>문의 유형을 선택하세요</option>
            <option value="return">반품</option>
            <option value="cancel">취소</option>
            <option value="question">질문</option>
            <option value="exchange">교환</option>
          </select>

          내용
          <div class="input-group-lg">
            <textarea class="form-control" aria-label="With textarea" placeholder="자세한 내용을 입력해주세요."></textarea>
          </div>
          <button type="button" class="btn btn-primary btn-sm m-3" onclick="window.location = '../help/board_detail.html'">문의 보내기</button>
        </form>
        </div>
        </section>
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
						<a class="nav-link" href="../about.html">팀 소개</a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="./board.html">고객센터</a>
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
     
  </body>
</html>
