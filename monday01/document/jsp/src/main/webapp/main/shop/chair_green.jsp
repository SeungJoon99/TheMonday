<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./include/product_header.jsp" %>

<h1>Nordic Chair (Green)</h1>
<img src="../../images/product-3.png" alt="Nordic Chair Green">
<p>깔끔하고 고급스러운 목재 폭포형 디자인의 의자입니다.</p>

<form method="post">
  <label for="size">사이즈를 선택하세요:</label>
  <select id="size" name="size">
    <option value="3">--3인용--</option>
    <option value="4">--4인용--</option>
    <option value="5">--5인용--</option>
  </select>

  <label for="color">색상을 선택하세요:</label>
  <select id="color" name="color">
    <option value="B">--브라운--</option>
    <option value="W">--화이트--</option>
    <option value="I">--아이보리--</option>
  </select>
</form>
<h2>$50.00</h2>

<%@ include file="./include/product_footer.jsp" %>
