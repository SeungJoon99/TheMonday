<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

	<!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/tiny-slider.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <title>The Monday</title>
	<style>
    /* 상세보기 전용 스타일 */
    .post-view {
      width: 800px;
      margin: 50px auto;
      background: #fff;
      padding: 20px 30px;
      border-radius: 8px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      font-family: Arial, sans-serif;
    }
    .post-view .post-title {
      font-size: 22px;
      font-weight: bold;
      margin-bottom: 15px;
    }
    .post-view .post-meta {
      font-size: 14px;
      color: #666;
      margin-bottom: 20px;
    }
    .post-view .post-content{
      font-size: 16px;
      line-height: 1.6;
      min-height: 200px;
      margin-bottom: 30px;
    }
    .post-view .post-buttons {
      text-align: right;
    }
    .post-view .post-buttons button {
      padding: 8px 15px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-left: 5px;
    }
    .post-view .btn-edit {
      background: #4CAF50;
      color: #fff;
    }
    .post-view .btn-list {
      background: #555;
      color: #fff;
    }
    .btn-remove{
      background: red;
      color: #fff;
    }
  </style>
	</head>
  <body>
    <!-- Start Header/Navigation -->
  <nav class="custom-navbar navbar navbar-expand-md navbar-dark bg-dark" aria-label="Furni navigation bar">
    <div class="container">
      <a class="navbar-brand" href="${pageContext.request.contextPath}">The Monday<span>.</span></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsFurni">
        <div class="col-1"></div>
        <form class="search-box" action="shop/search">
          <input class="form-control" type="search" placeholder="검색" aria-label="Search">
          <button class="btn" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </form>

       <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
			<li><a class="nav-link" href="${pageContext.request.contextPath}/shop">상품 보기</a></li>
			<c:if test="${ login == null }">
				<li><a class="nav-link" href="${pageContext.request.contextPath}/member">로그인</a></li>
			</c:if>
			<c:if test="${ login != null }">
				<li><a class="nav-link" href="${pageContext.request.contextPath}/member/mypage">[${ login.uname }]님</a></li>
				<li><a class="nav-link" href="${pageContext.request.contextPath}/member/cart">장바구니</a></li>
				<li><a class="nav-link" href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
			</c:if>
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

  	<!-- Start navtab Section -->
	<div class="row bg-dark" style="border: none;">
		<div class="col-2"></div>
		<ul class="col-8 nav nav-tabs bg-dark">
			<li class="nav-item">
				<a class="nav-link" aria-current="page" href="?pkind=침대">침대</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/shop?pkind=소파">소파</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/shop?pkind=옷장">옷장</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/shop?pkind=매트리스">매트리스</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="${pageContext.request.contextPath}/shop?pkind=테이블">테이블</a>
			</li>
		</ul>
		<div class="col-2"></div>
	</div>
	<!-- End navtab Section -->

  </div>
  <!-- End Hero -->
