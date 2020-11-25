<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="작성" />
<%@ include file="../../part/head.jspf"%>



<form action="doWrite" method="POST" class="form con box" onsubmit="WriteFormSubmit(this); return false;">
	<div class="form-box ">
		<div class="form-control-box">
			<div class="form-title-box">단어 / 문장</div>
			<div class="form-body-box">
				<textarea name="title" placeholder="단어나 문장을 입력해주세요." class="text" autofocus="autofocus"></textarea>
			</div>
		</div>
		<div class="form-control-box">
			<div class="form-title-box">의미</div>
			<div class="form-body-box">
				<textarea name="body" placeholder="의미를 입력해주세요." class="textarea"></textarea>
			</div>
		</div>
		<div class="btn-box flex flex-jc-c ">
			<button type="submit" class="btn-primary">작성</button>
		</div>
	</div>
</form>


<script>


function WriteFormSubmit(form) {

	if ( isNowLoading() ) {
		alert('처리중입니다.');
		return;
	}

	form.title.value = form.title.value.trim();
	if ( form.title.value.length == 0 ) {
		alert('단어/문장을 입력해주세요.');
		form.title.focus();
		return;
	}

	form.body.value = form.body.value.trim();
	if ( form.body.value.length == 0 ) {
		alert('의미를 입력해주세요.');
		form.body.focus();
		return;
	}
	
	
	form.submit();
	startLoading();
}
</script>


<%@ include file="../../part/foot.jspf"%>
