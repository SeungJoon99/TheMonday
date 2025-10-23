<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<div class="post-view">
  <div class="post-title" id="htitle">${item.htitle}</div>
  <div class="post-meta">작성자: ${item.unick} | 작성일: ${item.hwdate}</div>
  <div class="post-content" id="hnote">
    ${item.hnote}
  </div>	

  <div class="post-buttons">
    <!-- 수정 버튼은 관리자만 누를 수 있게 바꿔야 합니다. -->
    <button class="btn-edit" id="help-update" onclick="update()">수정</button>
    
    
    
    
    



    <button class="btn-remove" onclick="Delete()">삭제</button>
    <button class="btn-list" onclick="location.href='/help'">목록</button><br><br>

	<!-- 관리자 답변란 -->
	<form id="answerForm" action="${pageContext.request.contextPath}/help/answerok" method="post">
    <input type="hidden" name="hno" value="${item.hno}">
    <textarea id="atxt" name="atext" class='form-control' rows='10' placeholder="관리자 답변 작성"></textarea>
    </form>
    <button type="button" onclick="Answerdelete()">관리자 답변 삭제</button>
    <button type="button" onclick="Answerok()">관리자 답변 등록</button>

    <table border="1" style="width:100%; margin-top: 20px;">
      <tr>
        <td width="110px"><strong>관리자</strong></td>
        <td style="text-align: left;">
          <span id ="txt" name="txt"></span>
        </td>
        <td width="110px">
        	<c:if test="${!empty answerList}">
           		 ${answerList[0].awdate} 
       		</c:if></td>
      </tr>
    </table>
  </div>
</div>

<script>
function update() {
    // 수정 모드로 전환
    document.getElementById("htitle").innerHTML =
        "<input type='text' id='edit_htitle' name='htitle' class='form-control' value='${item.htitle}'>";
    document.getElementById("hnote").innerHTML =
        "<textarea id='edit_hnote' name='hnote' class='form-control' rows='10'>${item.hnote}</textarea>";
    document.getElementById("help-update").innerHTML =
        "<button type='button' class='btn-edit' onclick='updateok()'>수정완료</button>";
}

function updateok() {
	const hno = "${item.hno}";
    const htitle = $("#edit_htitle").val().trim();
    const hnote = $("#edit_hnote").val().trim();

    // 🔍 1. 유효성 검사
    if (htitle === "") {
        alert("제목을 입력해주세요.");
        $("#edit_htitle").focus();
        return;
    }
    if (hnote === "") {
        alert("내용을 입력해주세요.");
        $("#edit_hnote").focus();
        return;
    }
    

    $.ajax({
        url: '${pageContext.request.contextPath}/help/helpupdate',
        type: 'POST',
        data: {
            hno: hno,
            htitle: htitle,
            hnote: hnote
        },
        success: function() {
            alert("수정이 완료되었습니다.");
            location.href = "${pageContext.request.contextPath}/help/board_detail?hno=" + hno;
        },
        error: function() {
            alert("수정 중 오류가 발생했습니다.");
        }
    });
}

    // 3. 게시물 삭제 처리 함수
    function Delete() {
        if (confirm("게시물을 삭제하시겠습니까") == false) {
            return;
        }
        $.ajax({ url: '${pageContext.request.contextPath}/help/deletedelynchange',
        	type: 'POST',
        	data: { hno: "${item.hno}" } 
        
        });
        
        window.location.href = '/TheMonday/help';
        
        console.log("삭제중");
    }

    // 4. 관리자 답변 등록 처리 함수
    function Answerok() {
        // 내용 검사 
        if ($("#atxt").val().trim() === "") {
            alert("내용을 입력하세요");
            $("#atxt").focus();
            return; // 내용이 비었으면 여기서 종료
        }

        // confirm 실행
        if (confirm("등록하시겠습니까?") == false) {
            return; // '아니오'를 누르면 함수 종료
        }

        // 폼 제출
        $("#answerForm").submit(); 
        console.log("관리자 답변등록");
    }

 // 5. 답변 내용 조회 및 <textarea> 채우기 함수 (txt 함수 제거 및 window.onload로 통합)
    window.onload = function() {
        
        // 🚨 JSP의 c:if 태그를 사용하여 서버단에서 처리하도록 수정
        <c:if test="${!empty answerList}">
            
            // AnswerList의 첫 번째 요소에서 답변 내용을 가져옵니다.
            var answerText = "${answerList[0].atext}"; 

            // answerText가 공백만 있거나 비어있는 경우를 방지
            if (answerText.trim().length > 0) { 
                // 1. 답변 표시 영역 (<span> id="txt")에 값 표시
                document.getElementById("txt").innerText = answerText;
                
                // 2. 입력/수정 창 (<textarea id="atxt">)에도 값 채우기 (관리자 수정을 위함)
                document.getElementById("atxt").value = answerText; 
            }
        </c:if>

    };
    
    // (만약 window.onload를 두 번 정의할 수 없다면, 위에 있는 function update()를 onload 밖으로 빼고, 
    // 아래의 function txt()를 window.onload = function() {...} 형태로 바깥에 단독으로 정의해야 합니다.)
    
    
    function Answerdelete(){
    	if (confirm("관리자답변을 삭제하시겠습니까?") == false) { 
    	    return; 
    	} 

    	$.ajax({ 
    	    url: '${pageContext.request.contextPath}/help/answerdelete',
    	    type: 'POST',
    	    data: { hno: "${item.hno}" }  
    	});
    	document.location.reload();
    }
</script>
<%@ include file="./include/footer.jsp" %>
