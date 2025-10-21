<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<div class="untree_co-section before-footer-section">
  <div class="container" style="width: 80%; max-width: 1080px;">
    <div class="row pb-3 box">
      <section class="col-md-12" id="product-add">
        <div class="p-3 p-lg-5 border bg-white box-border">
          <h2 class="h3 mb-3 text-black">문의 등록</h2>

          <form action="/writeok" method="post">

            <!-- 제목 -->
            <label class="form-label">제목</label>
            <input name="htitle" id="htitle" type="text" class="form-control mb-3" placeholder="제목을 입력해주세요">

            <!-- 문의 유형 -->
            <label class="form-label">문의 유형</label>
            <select name="hkind" id="hkind" class="form-select mb-3">
              <option value="X" disabled selected>문의 유형을 선택하세요</option>
              <option value="반품">반품</option>
              <option value="취소">취소</option>
              <option value="질문">질문</option>
              <option value="교환">교환</option>
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
		if($("#htitle").val() == ""){
			alert("이메일을 입력하세요");
			$("#htitle").focus();
			return;
		}
		if($("#hkind").val() == ""){
			alert("문의유형을 선택하세요");
			$("#hkind").focus();
			return;
		}
		if($("#hnote").val() == ""){
			alert("내용을 입력하세요");
			$("#hnote").focus();
			return;
		}
		$.ajax({
			url : "writeok",
			type : "post",
			data : {
				htitle : $("#htitle").val(), // htitle
				hkind  : $("#hkind").val(),  // hkind
				hnote  : $("#hnote").val()   // hnote
			},
			dataType : "html",
			success : function(){
				alert("등록되었습니다.!");
				document.location = "board_detail?no=" + no;
			}
		})
	}
</script>
<%@ include file="./include/footer.jsp" %>
