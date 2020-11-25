<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="상세보기" />
<%@ include file="../../part/head.jspf"%>




<div class="detail-box con big-box flex flex-jc-c">
	<div>
		<div class="lit-box  flex flex-jc-c">
			<div>
				<div class="detail-title">단어 / 문장</div>
				<div class="detail-body">${article.title}</div>
			</div>
		</div>
		<div class="lit-box  flex flex-jc-c">
			<div>
				<div class="detail-title">의미</div>
				<div class="detail-body">${article.body}</div>
				<div class="detail-date flex flex-jc-c margin-top-20 flex-jc-sa">
					<div class="detail-regDate">작성일 : ${article.regDate}</div>
					<div class="detail-updateDate">수정일 : ${article.updateDate}</div>
					<div class="detail-writer">작성자 : 홍길동</div>
				</div>
				<div class="btn-box flex flex-jc-sa">
					<button class="btn-danger" >삭제</button>
					<button class="btn-warning">수정</button>
				</div>
			</div>
		</div>

	</div>

</div>



<style>
.detail-box {
	
}

.detail-box>div {
	width: 800px;
}

.detail-box>div .lit-box .detail-title {
	font-weight: bold;
	margin-top: 20px;
	color: #6300ff;
}

.detail-box>div .lit-box .detail-date {
	padding-top: 10px;
	border-top: 2px solid #afafaf;
}

.detail-box>div .lit-box .detail-body {
	width: 600px;
	border: 1px solid black;
	height: 200px;
	padding: 10px;
	font-weight: bold;
}

.detail-box .btn-box {
	margin-top: 40px;
}

.detail-box .btn-box button {
	width: 200px;
	font-weight: bold;
}
</style>


<%@ include file="../../part/foot.jspf"%>
