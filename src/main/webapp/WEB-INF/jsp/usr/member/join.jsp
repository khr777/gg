<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="회원가입" />
<%@ include file="../../part/head.jspf"%>



<form action="doJoin" method="POST" class="form con  "
	onsubmit="JoinFormSubmit(this); return false;">
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

		form.JoinId.value = form.JoinId.value.trim();
		if (form.JoinId.value.length == 0) {
			alert('로그인 아이디를 입력해주세요.');
			form.JoinId.focus();
			return;
		}

		form.JoinPw.value = form.JoinPw.value.trim();
		if (form.JoinPw.value.length == 0) {
			alert('비밀번호를 입력해주세요.');
			form.JoinPw.focus();
			return;
		}

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
