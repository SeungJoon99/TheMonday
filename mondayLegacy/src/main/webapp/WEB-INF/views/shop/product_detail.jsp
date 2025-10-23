<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/product_header.jsp" %>
<input type="hidden" id="pno" value="${ProductDetail.pno }">
<input type="hidden" id="uno" value="${login.uno }">
	<h1>${ProductDetail.pname }</h1>
      <img src="${pageContext.request.contextPath}/resources/images/${ProductDetail.ppimgname }" alt="Nordic Chair Beige">
      <p>${ProductDetail.pinfo }</p>
      <h2>${ProductDetail.pprice}원</h2>

     <%@ include file="./include/product_footer.jsp" %>
