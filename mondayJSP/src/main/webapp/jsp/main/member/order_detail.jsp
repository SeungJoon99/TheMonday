<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="author" content="Untree.co">
		<link rel="shortcut icon" href="../favicon.png">
		
		<meta name="description" content="" />
		<meta name="keywords" content="bootstrap, bootstrap4" />
		
		<!-- Bootstrap CSS -->
		<link href="../../css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
		<link href="../../css/tiny-slider.css" rel="stylesheet">
		<link href="../../css/style.css" rel="stylesheet">
		<title>주문 상세내역</title>
	</head>
	<body>
		<div class="container">
			<h2>홍길동 2025.10.10 주문 상세내역</h2>
			<h4>주문번호 : 20251010</h4>
			<table class="table table-secondary table-striped-columns table-bordered">
				<tr>
					<td>이름</td>
					<td>홍길동</td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td>010-1234-5678</td>
				</tr>
				<tr>
					<td>주소</td>
					<td>서울특별시 강남구 역삼동</td>
				</tr>
				<tr>
					<td>요청사항</td>
					<td>빨리와요</td>
				</tr>
				<tr>
					<td>총 결제금액</td>
					<td>80,000원</td>
				</tr>
			</table>
		
			<table class="table table-secondary table-striped-columns">
		        <thead class="table-dark">
		          <tr>
		            <th>이미지</th>
		            <th>상품명</th>
		            <th>상품 옵션</th>
		            <th>단가</th>
		            <th>수량</th>
		            <th>총 결제금액</th>
		          </tr>
		        </thead>
		        <tbody>
		          	<tr>
						<td><img src="../favicon.png" alt="사과 이미지"></td>
						<td>사과</td>
						<td>레드향, 3입</td>
						<td>4,000원</td>
						<td>4개</td>
						<td>16,000원</td>
					</tr>
		          	<tr>
						<td><img src="../favicon.png" alt="감귤 이미지"></td>
						<td>감귤</td>
						<td>레드향, 3입</td>
						<td>4,000원</td>
						<td>4개</td>
						<td>16,000원</td>
					</tr>
		          	<tr>
						<td><img src="../favicon.png" alt="배 이미지"></td>
						<td>배</td>
						<td>레드향, 3입</td>
						<td>4,000원</td>
						<td>4개</td>
						<td>16,000원</td>
					</tr>
		          	<tr>
						<td><img src="../favicon.png" alt="키위 이미지"></td>
						<td>키위</td>
						<td>레드향, 3입</td>
						<td>4,000원</td>
						<td>4개</td>
						<td>16,000원</td>
					</tr>
		          	<tr>
						<td><img src="../favicon.png" alt="귤 이미지"></td>
						<td>귤</td>
						<td>레드향, 3입</td>
						<td>4,000원</td>
						<td>4개</td>
						<td>16,000원</td>
					</tr>
				</tbody>
	      	</table>
	    </div>
	</body>
</html>
