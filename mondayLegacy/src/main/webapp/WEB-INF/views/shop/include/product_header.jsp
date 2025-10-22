<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <title>The Monday</title>
    <style>
      body {
        background-color: #3b5d50;
        font-family: Arial, sans-serif;
        color: #fff;
        margin: 0;
        padding: 40px;
      }

      .product-detail {
        background-color: #fff;
        color: #333;
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        text-align: center;
      }

      .product-detail img {
        width: 100%;
        max-width: 400px;
        height: auto;
        border-radius: 10px;
        margin-bottom: 20px;
      }

      .buttons {
        margin-top: 20px;
      }

      .buttons button {
        background-color: #3b5d50;
        color: white;
        border: none;
        padding: 12px 24px;
        font-size: 16px;
        border-radius: 6px;
        margin: 0 10px;
        cursor: pointer;
      }

      .buttons button:hover {
        background-color: #2e4b41;
      }

      a {
        display: inline-block;
        margin-top: 20px;
        color: #3b5d50;
        text-decoration: underline;
      }
    </style>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
  </head>
  <body>
    <div class="product-detail">