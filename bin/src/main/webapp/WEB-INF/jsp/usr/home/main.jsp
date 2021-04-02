<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="title" value="메인" />
<%@ include file="../../part/head.jspf"%>


<div class="bg-box margin-top-100">
	<div class="bg-control-1 flex flex-jc-c flex-ai-c">
		<div class="main-title-1 flex  flex-jc-sb">
			<div class="text-box  flex flex-ai-c">
				<div>
					<p>내가 공부한 영어 단어와 문장을</p>
					<p>저장하고 테스트해볼 수 있습니다.</p>
				</div>
			</div>
			<div class="img-box">
				<img
					src="https://cdn.pixabay.com/photo/2020/10/21/04/24/children-5672087_1280.png"
					alt="" />
			</div>
		</div>
	</div>
	<div class="bg-control-2   flex flex-jc-c flex-ai-c margin-top-100">
		<div class="main-title-1 flex  flex-jc-sb">
			<div class="img-box">
				<img
					src="https://cdn.pixabay.com/photo/2015/04/03/16/36/bee-705412_1280.png"
					alt="" />

			</div>
			<div class="text-box  flex flex-ai-c">
				<div>
					<p>혼자서도 할 수 있는</p>
					<p>영어공부를 시작해보세요.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="bg-control-3   flex flex-jc-c flex-ai-c margin-top-100">
		<div class="main-title-1 flex  flex-jc-sb">
			<div class="text-box  flex flex-ai-c">
				<div>
					<p>하루하루 쌓인 성취감에</p>
					<p>어느새 우리의 영어 실력은</p>
					<p>향상되어 있을거에요.</p>
				</div>
			</div>
			<div class="img-box">
				<img
					src="https://cdn.pixabay.com/photo/2019/05/14/21/50/storytelling-4203628_1280.jpg"
					alt="" />
			</div>

		</div>
	</div>



</div>
<div class="bottom-bar flex flex-jc-c flex-ai-c">
	<div class="con ">
		<div class="cp-name">회사명 : GG 컴퍼니(Let's get going)</div>
		<div class="ceo-name">대표 : 김혜련</div>
		<div class="email">문의 : kim5638yw@gmail.com</div>
	</div>
</div>



<style>
.bg-box .bg-control-1 {
	height: 500px;
	background-color: #0668a5;
	color: #e9fcff;
	font-weight: bold;
	font-size: 1.5rem;
}

.bg-box .bg-control-1 .main-title-1 {
	width: 1000px;
}

.bg-box .bg-control-1 .main-title-1 .img-box img {
	height: 500px;
	border-bottom: 2px solid #afafaf;
}

.bg-box .bg-control-2 {
	height: 500px;
	background-color: white;
	color: black;
	font-weight: bold;
	font-size: 1.5rem;
}

.bg-box .bg-control-2 .main-title-1 {
	width: 1000px;
}

.bg-box .bg-control-2 .main-title-1 .img-box img {
	height: 500px;
	width: 500px;
}

.bg-box .bg-control-3 {
	background-color: white;
	height: 500px;
	color: black;
	font-weight: bold;
	font-size: 1.5rem;
}

.bg-box .bg-control-3 .main-title-1 {
	width: 1000px;
}

.bg-box .bg-control-3 .main-title-1 .img-box img {
	height: 500px;
	width: 500px;
}
</style>
<%@ include file="../../part/foot.jspf"%>
