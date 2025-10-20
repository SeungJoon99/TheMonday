<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./include/product_header.jsp" %>
      <h1>${ProductDetail.pname }</h1>
      <img src="${pageContext.request.contextPath}/resources/images/${ProductDetail.pimg }" alt="Nordic Chair Beige">
      <p>${ProductDetail.pinfo }</p>
      <h2>${ProductDetail.pprice}원</h2>

     <%@ include file="./include/product_footer.jsp" %>
