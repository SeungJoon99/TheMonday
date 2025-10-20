<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./include/product_header.jsp" %>
      <h1>${ProductDetail.pname }</h1>
      <img src="${pageContext.request.contextPath}/resources/images/product-1.png" alt="Nordic Chair Beige">
      <p>${ProductDetail.pinfo }</p>
      <form method="post" name="option" id="option" action="product_detail">
        <label for="size">사이즈를 선택하세요:</label>
          <select id="size" name="size">
            <option value="3">--3인용--</option>
            <option value="4">--4인용--</option>
            <option value="5">--5인용--</option>
          </select>

        <label for="color">색상을 선택하세요:</label>
          <select id="color" name="color">
            <option value="B">--베이지--</option>
            <option value="W">--화이트--</option>
            <option value="I">--아이보리--</option>
          </select>
      </form>
      <h2>${ProductDetail.pprice}</h2>

     <%@ include file="./include/product_footer.jsp" %>
