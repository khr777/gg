
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="테스트" />
<%@ include file="../../part/head.jspf"%>



<style>
.btn-box.margin-top-150 {
	position: relative;
}

.pass {
	position: absolute;
	top: -10px;
	right: -220px;
	font-size: 2rem;
	font-weight: bold;
	color: white;
}
</style>

<div class="btn-box margin-top-150 con   flex flex-jc-sa">
	<button type="button" onclick="wordHide();">단어 / 문장 가리기</button>
	<button type="button" onclick="meanHide();">메모 가리기</button>
	<button type="button" onclick="allOpen();">모두 보기</button>
	<button type="button" onclick="reset();">새로 불러오기</button>
	<div class="pass">
		정답입니다 <i class="fas fa-crown"></i>
	</div>
</div>

<div class="list-box test-box con flex flex-jc-sb margin-top-50  ">
	<div class="word-box lit-box  ">
		<div class="border-bottom"></div>
		<div class="title">단어 / 문장</div>
		<c:forEach items="${articles}" var="article">
			<div class="contents flex-ai-c flex flex-jc-c">${article.title}</div>
		</c:forEach>
	</div>
	<div class="mean-box lit-box  ">
		<div class="border-bottom"></div>
		<div class="title">메모</div>
		<c:forEach items="${articles}" var="article">
			<div class="contents flex-ai-c flex flex-jc-c">${article.body }</div>
		</c:forEach>
	</div>
	<div class=" lit-box ">
		<div class="border-bottom"></div>
		<div class="title">입력</div>
		<c:forEach items="${articles}" var="article">
			<div class="contents flex flex-ai-c">
				<%-- 			<input type="text" onkeyup="enterKey(${article.toJson()});" /> --%>
				<input type="text" class="test-input" id="input"
					autofocus="autofocus"
					onkeyup='passCheck(${article.toJson()}, this);' />

			</div>
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
	$('.list-box .word-box ').addClass('none');

	if ($('.list-box .mean-box  ').hasClass('none')) {
		$('.list-box .mean-box  ').removeClass('none');
	}
	$('.list-box ').removeClass('flex-jc-sb');
	$('.list-box ').addClass('flex-jc-c');

}


function meanHide() {
	$('.list-box .mean-box ').addClass('none');
	if ($('.list-box .word-box ').hasClass('none')) {
		$('.list-box .word-box ').removeClass('none');
	}
	$('.list-box ').removeClass('flex-jc-sb');
	$('.list-box ').addClass('flex-jc-c');
}	 

function allOpen() {
	$('.list-box .word-box ').removeClass('none');
	$('.list-box .mean-box ').removeClass('none');
	$('.list-box ').addClass('flex-jc-sb');
	$('.list-box ').removeClass('flex-jc-c');
}

function reset() {
	location.replace('../article/test');
}

function colorChange() {
	$('.btn-box .pass').css('color', 'white');
	}

function passCheck(article, input) {
	 if(event.keyCode == 13) {
		 alert( '정답을 확인해주세요.\n\n' + '단어/문장 : ' + article.title + '\n\n메모 : ' + article.body );
		 if ( input.value == article.title ) {
		 $('.btn-box .pass').css('color', 'red'); 
		 setTimeout(colorChange, 1000); 
		}		  
	}
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

.con {
	max-width: 1500px;
}

.list-box .lit-box {
	width: 30%;
}

.list-box .lit-box .contents {
	height: 40px;
}

.list-box .lit-box .contents input {
	height: 30px;
	width: 100%;
	display: flex;
}

</style>


<%@ include file="../../part/foot.jspf"%>
