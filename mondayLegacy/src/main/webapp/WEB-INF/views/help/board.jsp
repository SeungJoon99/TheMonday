<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 문의 게시판 -->
<div class="container">
  <table class="table" style="text-align: center; width: 90%; margin-left: 5%;">
    <thead style="background-color: rgb(62, 143, 96); color: white;">
      <tr>
        <th style="width: 70px;">번호</th>
        <th style="width: 90px;">
	       <form method="get" >   
	          <select id="kind" name="kind" >
	            <option value="" >전체</option>
	            <option value="문의">문의</option>
	            <option value="교환">교환</option>
	            <option value="환불">환불</option>
	            <option value="취소">취소</option>
	          </select>
	          <button type="submit">검색</button>
          </form>
        </th>
        <th>제목</th>
        <th style="width: 120px;">작성자</th>
        <th style="width: 100px;">작성일</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="item" items="${list != null ? list : emptyList}">
	    <tr>
	   		<td>${item.hno}</td>
			<td>${item.hkind}</td>
			<td><a href="${pageContext.request.contextPath}/help/board_detail?hno=${item.hno}">${item.htitle}</a></td>
			<td>${item.unick}</td>
			<td>${item.hwdate}</td>
	    </tr>
	  </c:forEach>
      <!-- 문의 등록 버튼 -->
      <tr>
        <td colspan="5" style="text-align: left; border: none;">
          <button type="button" class="btn btn-primary btn-sm" onclick="window.location = '${pageContext.request.contextPath}/help/inquire'">문의하기</button>
        </td>
      </tr>
    </tbody>
  </table>

  <!-- 페이지 네비게이션 -->
  <nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
      <li class="page-item"><a class="page-link" href="#" aria-label="Previous">&laquo;</a></li>
      <li class="page-item"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">4</a></li>
      <li class="page-item"><a class="page-link" href="#">5</a></li>
      <li class="page-item"><a class="page-link" href="#" aria-label="Next">&raquo;</a></li>
    </ul>
  </nav>
</div>

<%@ include file="./include/footer.jsp" %>
