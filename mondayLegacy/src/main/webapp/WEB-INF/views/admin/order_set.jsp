<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.png" />">

	<meta name="description" content="" />
	<meta name="keywords" content="bootstrap, bootstrap4" />

	<!-- Bootstrap CSS -->
	<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/tiny-slider.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
  	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  	<script src="<c:url value="/resources/js/jquery-3.7.1.min.js" />"></script>
  	<title>주문 상품 처리</title>
  
  <style>
    .popup-container {
      width: 550px;
      margin: 40px auto;
      background: white;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      padding: 24px 28px;
    }
    .popup-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      margin-bottom: 20px;
    }
    .popup-header h5 {
      margin: 0;
      font-weight: 600;
    }
    .form-label {
      font-weight: 500;
      margin-bottom: 6px;
    }
    textarea {
      resize: none;
    }
    .btn-update {
      width: 100%;
      font-weight: 600;
    }
  </style>
</head>
<body>

  <div class="popup-container">
    <div class="popup-header">
      <h5>"2025100501" 주문 처리</h5>
      <div>
        <label class="form-label small mb-1">회원구분, ID</label>
        <input type="text" class="form-control form-control-sm" value="ex) A12345" readonly>
      </div>
    </div>

    <div class="mb-3">
      <label class="form-label">주문 상태 변경</label>
      <select class="form-select">
        <option>주문 접수</option>
        <option>배송 대기중</option>
        <option>배송 중</option>
        <option>배송 완료</option>
        <option>주문 취소</option>
      </select>
    </div>

    <div class="mb-3">
      <label class="form-label">회원구분 메모</label>
      <textarea class="form-control" rows="5" placeholder="회원구분 메모를 입력하세요"></textarea>
    </div>

    <button class="btn btn-primary btn-update">저장하기</button>
  </div>

</body>
</html>
