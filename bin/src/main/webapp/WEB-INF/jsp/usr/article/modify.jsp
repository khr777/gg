<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="수정" />
<%@ include file="../../part/head.jspf"%>



<form action="doModify" method="POST" class="form con box" 	onsubmit="ModifyFormSubmit(this); return false;">
	<input type="hidden" name="id" value="${article.id}"/>
	<div class="form-box ">
		<div class="form-control-box">
			<div class="text-title">단어장 수정</div>
			<div class="form-title-box margin-top-50">단어 / 문장</div>
			<div class="form-body-box">
				<textarea name="title" placeholder="단어나 문장을 입력해주세요." class="text"
					autofocus="autofocus">${article.title}</textarea>
			</div>
		</div>
		<div class="form-control-box">
			<div class="form-title-box">의미</div>
			<div class="form-body-box">
				<textarea name="body" placeholder="의미를 입력해주세요." class="textarea">${article.body}</textarea>
			</div>
		</div>
		<div class="btn-box flex flex-jc-sb">
			<button class="btn-danger" type="button" onclick="location.replace('../article/detail?id=${article.id}')">취소</button>
			<button class="btn-warning" type="submit">수정</button>
		</div>
	</div>
</form>

<script>
	function ModifyFormSubmit(form) {

		if (isNowLoading()) {
			alert('처리중입니다.');
			return;
		}

		form.title.value = form.title.value.trim();
		if (form.title.value.length == 0) {
			alert('단어/문장을 입력해주세요.');
			form.title.focus();
			return;
		}

		form.body.value = form.body.value.trim();
		if (form.body.value.length == 0) {
			alert('의미를 입력해주세요.');
			form.body.focus();
			return;
		}

		form.submit();
		startLoading();
	}
</script>

<style>
.form .btn-box {
	margin-top: 40px;
}

.form .btn-box button {
	width: 300px;
	font-weight: bold;
}
</style>


<%@ include file="../../part/foot.jspf"%>
