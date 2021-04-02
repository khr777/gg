<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="회원가입" />
<%@ include file="../../part/head.jspf"%>


<script
	src="https://cdnjs.cloudflare.com/ajax/libs/js-sha256/0.9.0/sha256.min.js"></script>


<form action="doJoin" method="POST" class="form con  "
	onsubmit="JoinFormSubmit(this); return false;">
	<input type="hidden" name="loginPwReal" />
	<div class="form-box ">
		<div class="form-control-box">
			<div class="form-title-box">ID</div>
			<div class="form-body-box">
				<input type="text" name="loginId" placeholder="ID를 입력해주세요." autofocus="autofocus"/>
			</div>
		</div>
		<div class="form-control-box margin-top-10 ">
			<div class="form-title-box">Password</div>
			<div class="form-body-box">
				<input type="password" name="loginPw" placeholder="비밀번호를 입력해주세요." />
			</div>
		</div>
		<div class="form-control-box margin-top-10 ">
			<div class="form-title-box">Password confirm</div>
			<div class="form-body-box">
				<input type="password" name="loginPwConfirm" placeholder="비밀번호 확인을 입력해주세요." />
			</div>
		</div>
		<div class="form-control-box">
			<div class="form-title-box">Name</div>
			<div class="form-body-box">
				<input type="text" name="name" placeholder="이름을 입력해주세요." />
			</div>
		</div>
		<div class="form-control-box">
			<div class="form-title-box">Nickname</div>
			<div class="form-body-box">
				<input type="text" name="nickname" placeholder="닉네임을 입력해주세요." />
			</div>
		</div>
		<div class="form-control-box">
			<div class="form-title-box">Email</div>
			<div class="form-body-box">
				<input type="email" name="email" placeholder="이메일을 입력해주세요." />
			</div>
		</div>
		<div class="btn-box ">
			<button type="submit" class="btn-primary" >회원가입</button>
		</div>
	</div>
</form>


<script>
	function JoinFormSubmit(form) {

		if (isNowLoading()) {
			alert('처리중입니다.');
			return;
		}

		form.loginId.value = form.loginId.value.trim();
		if (form.loginId.value.length == 0) {
			alert('로그인 아이디를 입력해주세요.');
			form.loginId.focus();
			return;
		}

		form.loginPw.value = form.loginPw.value.trim();
		if (form.loginPw.value.length == 0) {
			alert('비밀번호를 입력해주세요.');
			form.loginPw.focus();
			return;
		}

		form.loginPwConfirm.value = form.loginPwConfirm.value.trim();
		if (form.loginPwConfirm.value.length == 0) {
			alert('비밀번호 확인을 입력해주세요.');
			form.loginPwConfirm.focus();
			return;
		}

		if ( form.loginPw.value != form.loginPwConfirm.value ) {
			alert('비밀번호가 일치하지 않습니다.');
			form.loginPw.focus();
			return;
		}

		form.name.value = form.name.value.trim();
		if (form.name.value.length == 0) {
			alert('이름을 입력해주세요.');
			form.name.focus();
			return;
		}

		form.nickname.value = form.nickname.value.trim();
		if (form.nickname.value.length == 0) {
			alert('닉네임을 입력해주세요.');
			form.nickname.focus();
			return;
		}

		form.email.value = form.email.value.trim();
		if (form.email.value.length == 0) {
			alert('이메일을 입력해주세요.');
			form.email.focus();
			return;
		}


		form.loginPwReal.value = sha256(form.loginPw.value);
		form.loginPw.value = '';
		form.loginPwConfirm.value='';
		
		form.submit();
		startLoading();
	}
</script>

<style>


.btn-box a:hover {
	font-weight: bold;
}
.btn-box .main-btn {
	margin-top: 20px;
}
</style>


<%@ include file="../../part/foot.jspf"%>
