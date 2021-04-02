<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="로그인" />
<%@ include file="../../part/head.jspf"%>



<form action="doLogin" method="POST" class="form con  "
	onsubmit="LoginFormSubmit(this); return false;">
	<div class="form-box ">
		<div class="form-control-box">
			<div class="form-title-box">아이디</div>
			<div class="form-body-box">
				<input type="text" name="loginId" placeholder="ID를 입력해주세요." />
			</div>
		</div>
		<div class="form-control-box margin-top-20 margin-bottom-80">
			<div class="form-title-box">비밀번호</div>
			<div class="form-body-box">
				<input type="text" name="loginPw" placeholder="비밀번호를 입력해주세요." />
			</div>
		</div>
		<div class="btn-box ">
			<div class="flex flex-jc-fe  margin-bottom-20">
				<a href="../member/join">회원가입</a>
				<a href="#" style="margin-left:30px;">아이디/비밀번호 찾기</a>
			</div>
			<button type="submit" class="btn-primary" >로그인</button>
			<button type="button" class="btn-info main-btn" onclick="location.replace('../home/main')">메인으로 돌아가기</button>
		</div>
	</div>
</form>


<script>
	function LoginFormSubmit(form) {

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
