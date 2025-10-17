<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="resources/images/favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

  <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/tiny-slider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
  <title>The Monday</title>
</head>

<body>
  <!-- Start Header/Navigation -->
  <nav class="custom-navbar navbar navbar-expand-md navbar-dark bg-dark" aria-label="Furni navigation bar">
    <div class="container">
      <a class="navbar-brand" href="index">The Monday<span>.</span></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsFurni">
        <div class="col-1"></div>
        <form class="search-box" action="shop/search">
          <input class="form-control" type="search" placeholder="Search" aria-label="Search">
          <button class="btn" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </form>

        <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
          <li><a class="nav-link" href="member/mypage">[홍길동]님</a></li>
          <li><a class="nav-link" href="shop/main">상품 보기</a></li>
          <li><a class="nav-link" href="member/login">로그인</a></li>
          <li><a class="nav-link" href="member/cart">장바구니</a></li>
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
          <a class="nav-link" href="main?p_kind=">침대</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="main?p_kind=">소파</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="main?p_kind=">옷장</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="main?p_kind=">매트리스</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="main?p_kind=">테이블</a>
        </li>
      </ul>
      <div class="col-2"></div>
    </div>
    <!-- End navtap Section -->
  </div>
  <!-- End Hero -->