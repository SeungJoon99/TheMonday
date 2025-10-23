<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>
<script>
let dupCheckNick = "";

window.onload = function()
{
	$("#uemail").focus();
	
	//userid 키보드 입력 이벤트 처리
	$("#unick").keyup(function(){
		CheckUserNick();
	});	
	
	//가입하기 이벤트처리
	$("#btnSignup").click(function(){
		DoSignup();
	});
	
	/*
	//메일인증 코드 발송
	$("#btnMail").click(function(){
		SendMail();
	});	
	
	
	//주소찾기
	$("#btnAddress").click(function(){
		SearchAddress();
	});	 
	*/
}

//닉네임 중복 검사용 함수
function CheckUserNick()
{
	unick = $("#unick").val();
	if (unick == "" )
	{
		$("#msg_box").html("닉네임을 입력하세요.");
		return;
	}
	$.ajax({
		url : "unickcheck?unick=" + unick,
		type: "get",
		dataType: "html",
		success : function(res)
		{
			res = res.trim();
			
			//아이디 중복 검사 결과를 기억한다.
			dupCheckNick = res;
			
			switch(res)
			{
			case "ERROR":
				$("#msg_box").html("중복검사 오류가 발생했습니다.");
				break;
			case "DUPLICATED":					
				$("#msg_box").html("<span style='color:red'>중복된 닉네임입니다.</span>");
				break;
			case "NOT_DUPLICATED":
				$("#msg_box").html("<span style='color:green'>사용 가능한 닉네임입니다.</span>");
				break;					
			}			
		}
	});	
}

/* //이메일 인증코드 발송
function SendMail()
{
	if( $("#uemail").val() == "")
	{
		alert("메일주소를 입력하세요");
		$("#uemail").focus();
		return;		
	}	
	$.ajax({
		url : "sendmail?uemail=" + $("#uemail").val(),
		type: "get",
		dataType: "html",
		success : function(res)
		{
			code = res.trim();
			if( code == "ERROR" )
			{
				alert("인증메일 발송 오류가 발생하였습니다.");
			}else
			{
				alert("인증코드를 메일로 발송하였습니다.");
				$("#sendcode").val(code);
			}
		}
	});	
} */

function DoSignup()
{
	// id 입력값이 없으면 메세지 출력하고 submit 중지
	if( $("#uemail").val() == "" )
	{
		alert("이메일을 입력하세요");
		$("#uemail").focus();
		return;
	}	
	
	if($("#upw").val() == "")
	{
		alert("비밀번호를 입력하세요");
		$("#upw").focus();
		return;
	}
	
	if($("#upw").val() != $("#upwcheck").val())
	{
		alert("비밀번호가 일치하지 않습니다.");
		$("#userpw").focus();
		return;
	}	
	
	if($("#uname").val() == "")
	{
		alert("성명을 입력하세요");
		$("#uname").focus();
		return;
	}	
	
	if($("#uhp").val() == "")
	{
		alert("전화번호를 입력하세요");
		$("#uhp").focus();
		return;
	}	
	
	if( dupCheckNick != "NOT_DUPLICATED")
	{
		alert("사용가능한 닉네임이 아닙니다.");
		$("#unick").focus();
		return ;
	}
	
	if($("#upostcode").val() == "")
	{
		alert("우편번호를 입력하세요");
		$("#upostcode").focus();
		return;
	}	
	if($("#uaddr").val() == "")
	{
		alert("주소를 입력하세요");
		$("#uaddr").focus();
		return;
	}	
	if($("#uaddr2").val() == "")
	{
		alert("상세주소를 입력하세요");
		$("#uaddr2").focus();
		return;
	}	
	
	if(confirm("회원가입을 진행하시겠습니까?") == false) return;
	$("#signup").submit();
}
</script>

<!-- 회원가입 폼 시작 -->

<div class="untree_co-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-md-12">
				<div class="border p-4 rounded" role="alert">
				이미 아이디가 있으신가요? <a href="member/login">이곳</a>에서 로그인하세요.
				</div>
			</div>
		</div>
			
		<div class="row">
			<div class="col-md-12">
				<h2 class="h3 mb-3 text-black">회원 정보 입력</h2>
				<div class="p-3 p-lg-5 border bg-white">
					<form id="signup" name="signup" method="post" action="signupok">
	          			<!-- 이메일 인증 -->
						<div class="form-group row align-items-end">
							<div class="col-md-6">
								<label for="uemail" class="text-black">이메일 주소 <span class="text-danger">*</span></label>
								<div class="input-group">
									<input type="text" class="form-control" id="uemail" name="uemail" placeholder="example@DTeam.com">
									<button type="button" class="btn btn-primary btn-sm" id="btnSendEmail">메일발송</button>
								</div>
							</div>
							<div class="col-md-6">
								<input type="hidden" id="sendcode" name="sendcode">
								<label for="uemailauth" class="text-black">인증번호 <span class="text-danger">*</span></label>
								<div class="input-group">
									<input type="text" class="form-control" id="uemailauth" name="uemailauth" placeholder="인증번호 입력">
									<button type="button" class="btn btn-primary btn-sm" id="btnMail">인증</button>
								</div>
							</div>
						</div>
				
						<!-- 비밀번호 -->
						<div class="form-group row">
							<div class="col-md-6">
								<label for="upw" class="text-black">비밀번호 <span class="text-danger">*</span></label>
								<input type="password" class="form-control" id="upw" name="upw">
							</div>
							<div class="col-md-6">
								<label for="upwcheck" class="text-black">비밀번호 확인 <span class="text-danger">*</span></label>
								<input type="password" class="form-control" id="upwcheck" name="upwcheck">
							</div>
						</div>
				
						<!-- 이름 / 전화번호 -->
						<div class="form-group row mb-3">
							<div class="col-md-6">
								<label for="uname" class="text-black">성명 <span class="text-danger">*</span></label>
								<input type="text" class="form-control" id="uname" name="uname">
							</div>
							<div class="col-md-6">
								<label for="uhp" class="text-black">전화번호 <span class="text-danger">*</span></label>
								<input type="text" class="form-control" id="uhp" name="uhp" placeholder="Phone Number">
							</div>
						</div>
				
						<!-- 닉네임 -->
						<div class="form-group row mb-3">
							<div class="col-md-6">
								<label for="unick" class="text-black">닉네임 <span class="text-danger">*</span></label>
								<input type="text" class="form-control" id="unick" name="unick">
								<span id="msg_box">닉네임을 입력하세요.</span>
							</div>
						</div>
						
						<!-- 주소 입력 -->
						<div class="form-group row mt-3">
							<label for="uaddr" class="text-black">배송지 <span class="text-danger">*</span></label>
							<div class="input-group">
								<input type="text" name="upostcode" placeholder="우편번호" maxlength="6" id="upostcode" class="form-control">
								<button type="button" class="btn btn-primary btn-sm" id="btnAddress">검색</button>
							</div>
							<div class="signUp-input-area mt-3">
								<input type="text" name="uaddr" placeholder="도로명/지번 주소" id="uaddr" class="form-control">
							</div>
							<div class="signUp-input-area mt-3">
								<input type="text" name="uaddr2" placeholder="상세 주소" id="uaddr2" class="form-control">
							</div>
						</div>
						
						<!-- 가입 버튼 -->
						<div class="form-group py-3">
							<button type="button" class="btn btn-black btn-lg py-3 btn-block" id="btnSignup">회원가입</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<%@ include file="./include/footer.jsp" %>
