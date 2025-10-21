<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<div class="post-view">
  <div class="post-title" id="b_title">${item.htitle}</div>
  <div class="post-meta">작성자: ${item.unick} | 작성일: ${item.hwdate}</div>
  <div class="post-content" id="b_note">
    ${item.hnote}
  </div>	

  <div class="post-buttons">
    <!-- 수정 버튼은 관리자만 누를 수 있게 바꿔야 합니다. -->
    <button class="btn-edit" id="btn-update" onclick="update()">수정</button>
    <script>
      function update() {
        document.getElementById("b_title").innerHTML = "<input type='text' class='form-control' value='사이즈를 잘못 시켜요'>";
        document.getElementById("b_note").innerHTML = "<textarea class='form-control' rows='10'>주문할 때 사이즈를 잘못 선택했는데 교환이 가능한가요? 방법을 알려주시면 감사하겠습니다.</textarea>";
        document.getElementById("btn-update").innerText = "<button type='button' class='btn-edit' onclick='updateok()'>수정완료</button>";
      }
      function updateok() {
        alert("등록되었습니다.");
        document.location = "help/board_detail";
      }
  	function Delete(no)
	{
		if(confirm("게시물을 삭제하시겠습니까")==false)
		{
			return;	
		}
		document.location = "delete?no=" + no;
	}
    </script>

    <button class="btn-remove" onclick="javascript:Delete(${ item.hno });"
    >삭제</button>
    <button class="btn-list" onclick="location.href='help/board'">목록</button><br><br>

    <textarea class='form-control' rows='10' placeholder="관리자 답변을 입력하세요"></textarea>
    <button type="button">관리자 답변 등록</button>

    <table border="1" style="width:100%; margin-top: 20px;">
      <tr>
        <td width="110px"><strong>The Monday.</strong></td>
        <td style="text-align: left;">
          <span>
            관리자의 답변입니다. 관리자의 답변입니다. 관리자의 답변입니다.
            관리자의 답변입니다. 관리자의 답변입니다. 관리자의 답변입니다.
          </span>
        </td>
        <td width="110px">25.10.09</td>
      </tr>
    </table>
  </div>
</div>

<%@ include file="./include/footer.jsp" %>
