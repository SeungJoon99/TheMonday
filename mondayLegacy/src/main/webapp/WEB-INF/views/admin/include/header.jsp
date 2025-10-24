<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
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
    <title>관리자페이지</title>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    </head>
	
  <body>
    <!-- Hero -->
    <div class="hero" style="padding: 0px;">
      <a class="navbar-brand" href="${pageContext.request.contextPath}/">The Monday<span>.</span></a>
	  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	  </button>
      <!-- Start navtap Section -->
      <div class="container">
        <ul class="nav nav-tabs bg-dark" style="border: none;">
		  <li class="nav-item">
		    <a class="nav-link text-light" aria-current="page" href="${pageContext.request.contextPath}/admin">상품조회</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link text-light" href="${pageContext.request.contextPath}/admin/sales">매출조회</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link text-light" href="${pageContext.request.contextPath}/admin/insert">상품등록</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link text-light" aria-current="page" href="${pageContext.request.contextPath}/admin/orderList">주문관리</a>
		  </li>
		</ul>
      </div>
      <!-- End navtap Section -->
    </div>
    <!-- End Hero -->