<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<div class="untree_co-section before-footer-section">
  <div class="container" style="width: 80%; max-width: 1080px;">
    <div class="row pb-3 box">
      <section class="col-md-12" id="product-add">
        <div class="p-3 p-lg-5 border bg-white box-border">
          <h2 class="h3 mb-3 text-black">문의 등록</h2>

          <form action="${pageContext.request.contextPath}/help/writeok" method="post">

            <!-- 제목 -->
            <label class="form-label">제목</label>
            <input name="htitle" id="htitle" type="text" class="form-control mb-3" placeholder="제목을 입력해주세요">

            <!-- 문의 유형 -->
            <label class="form-label">문의 유형</label>
            <select name="hkind" id="hkind" class="form-select mb-3">
              <option value="X">문의 유형을 선택하세요</option>
              <option value="문의">문의</option>
              <option value="교환">교환</option>
              <option value="환불">환불</option>
              <option value="취소">취소</option>
            </select>

            <!-- 문의 내용 -->
            <label class="form-label">내용</label>
            <div class="input-group-lg mb-4">
              <textarea name="hnote" id="hnote" class="form-control" rows="7" placeholder="자세한 내용을 입력해주세요."></textarea>
            </div>

            <!-- 제출 버튼 -->
            <button type="button" class="btn btn-primary btn-sm"
        		onclick="writeok()">
		  		문의 보내기
			</button>


          </form>
        </div>
      </section>
    </div>
  </div>
</div>
<script>
	function writeok(){
		// 1. 제목 검사
		if($("#htitle").val().trim() == ""){
			alert("제목을 입력하세요");
			$("#htitle").focus();
			return;
		}
		// 2. 문의 유형 검사
		if($("#hkind").val() == "X"){
			alert("문의유형을 선택하세요");
			$("#hkind").focus();
			return;
		}
		
		// 3. 내용 검사 (🚨 문법 오류 수정)
		if($("#hnote").val().trim() == ""){
			alert("내용을 입력하세요");
			$("#hnote").focus();
			return;
		} 
        // 👈 hnote 검사 if 문이 여기서 닫힙니다. (오류 해결)
        
        
		// 4. confirm 실행
		if(confirm("등록하시겠습니까?") == false){ 
            return; // '아니오'를 누르면 함수 종료
        }
        
        // 5. 폼 제출 (🚨 누락된 폼 제출 명령 추가)
        $("form").submit(); // '예'를 누르면 Controller로 데이터 전송
	}
</script>
<%@ include file="./include/footer.jsp" %>
