<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="리스트" />
<%@ include file="../../part/head.jspf"%>


<div class="btn-box margin-top-150 con   flex flex-jc-sa">
	<button type="button" onclick="wordHide();" >단어 / 문장 가리기</button>
	<button type="button" onclick="meanHide();">메모 가리기</button>
	<button type="button" onclick="allOpen();">모두 보기</button>
</div>
<div class="list-box con flex flex-jc-sb margin-top-50">
	<div class="word-box lit-box  ">
		<div class="border-bottom"></div>
		<div class="title">단어 / 문장</div>
		<c:forEach items="${articles}" var="article">
			<div class="contents">${article.title}</div>
		</c:forEach>
	</div>
	<div class="mean-box lit-box  ">
		<div class="border-bottom"></div>
		<div class="title">메모</div>
		<c:forEach items="${articles}" var="article">
			<div class="contents">${article.body }</div>
		</c:forEach>
	</div>
	<div class=" lit-box plus  ">
		<div class="border-bottom"></div>
		<div class="title"><i class="far fa-hand-point-right"></i></div>
		<c:forEach items="${articles}" var="article">
			<div class="contents"> <a href="../article/detail?id=${article.id }" class="pointer">-</a></div>
		</c:forEach>
	</div>
</div>

<style>
.none {
	display: none;
}
</style>


<script>
function wordHide() {
	$('.list-box .word-box .contents').addClass('none');

	if ( $('.list-box .mean-box .contents').hasClass('none')) {
		$('.list-box .mean-box .contents').removeClass('none');	
	}
	
}

function meanHide() {
	$('.list-box .mean-box .contents').addClass('none');
	if ( $('.list-box .word-box .contents').hasClass('none')) {
		$('.list-box .word-box .contents').removeClass('none');	
	}
	
}

function allOpen() {
	$('.list-box .word-box .contents').removeClass('none');
	$('.list-box .mean-box .contents').removeClass('none');
}



</script>






<style>

.btn-box {
	width: 900px;
}
.btn-box button {
	width: 200px;
	font-weight: bold;
	background-color: #45c6ba;
}





</style>


<%@ include file="../../part/foot.jspf"%>
