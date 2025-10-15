<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<!-- 문의 게시판 -->
<div class="container">
  <table class="table" style="text-align: center; width: 90%; margin-left: 5%;">
    <thead style="background-color: rgb(62, 143, 96); color: white;">
      <tr>
        <th style="width: 70px;">번호</th>
        <th style="width: 90px;">
          <select>
            <option>문의</option>
            <option>교환</option>
            <option>환불</option>
            <option>취소</option>
          </select>
        </th>
        <th>제목</th>
        <th style="width: 120px;">작성자</th>
        <th style="width: 100px;">작성일</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>10</td>
        <td>교환</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">사이즈를 잘못 시켰어요</a></td>
        <td>이승만</td>
        <td>2025-09-25</td>
      </tr>
      <tr>
        <td>9</td>
        <td>취소</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">우리 집 강아지가 눌러요</a></td>
        <td>이성계</td>
        <td>2025-09-24</td>
      </tr>
      <tr>
        <td>8</td>
        <td>환불</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">생각했던 거랑 달라요</a></td>
        <td>이차돈</td>
        <td>2025-09-23</td>
      </tr>
      <tr>
        <td>7</td>
        <td>문의</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">높이 조절이 가능한가요?</a></td>
        <td>이영희</td>
        <td>2025-09-23</td>
      </tr>
      <tr>
        <td>6</td>
        <td>교환</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">색깔을 바꾸고 싶어요</a></td>
        <td>이사부</td>
        <td>2025-09-23</td>
      </tr>
      <tr>
        <td>5</td>
        <td>문의</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">제품은 분해된 상태로 오나요?</a></td>
        <td>이방원</td>
        <td>2025-09-23</td>
      </tr>
      <tr>
        <td>4</td>
        <td>문의</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">🔒비밀글입니다.</a></td>
        <td>이명박</td>
        <td>2025-09-23</td>
      </tr>
      <tr>
        <td>3</td>
        <td>환불</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">단순 변심</a></td>
        <td>이순신</td>
        <td>2025-09-23</td>
      </tr>
      <tr>
        <td>2</td>
        <td>문의</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">설치까지 해주시는 건가요?</a></td>
        <td>이성룡</td>
        <td>2025-09-23</td>
      </tr>
      <tr>
        <td>1</td>
        <td>환불</td>
        <td><a href="help/board_detail" style="display:block; width:100%; height:100%;">세척은 어떻게 하는 건가요?</a></td>
        <td>이승준</td>
        <td>2025-09-23</td>
      </tr>
      <!-- 문의 등록 버튼 -->
      <tr>
        <td colspan="5" style="text-align: left; border: none;">
          <button type="button" class="btn btn-primary btn-sm" onclick="window.location = 'help/inquire'">문의하기</button>
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
